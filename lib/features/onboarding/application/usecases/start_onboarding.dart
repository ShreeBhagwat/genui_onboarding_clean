import 'package:genui_onboarding_clean/core/utils/result.dart';
import '../../domain/entities/onboarding_surface.dart';
import '../../domain/entities/onboarding_state.dart';
import '../../domain/repositories/onboarding_repository.dart';
import '../services/surface_validator.dart';
import '../services/surface_cache.dart';

class StartOnboarding {
  final OnboardingRepository repository;
  final SurfaceValidator validator;
  final SurfaceCache cache;

  StartOnboarding(this.repository, this.validator, this.cache);

  Future<Result<OnboardingSurface>> call() async {
    cache.clear();
    const initialState = OnboardingState();
    // Start at step 0 basically
    final result = await repository.getNextSurface(initialState);

    return result.when(
      success: (surface) {
        try {
          validator.validate(surface);
          cache.push(surface);
          return Result.success(surface);
        } catch (e) {
          // If validation fails, we should ideally fallback.
          // But simpler to return failure and let UI handle fallback
          return Result.failure(e is Exception ? e : Exception(e.toString()));
        }
      },
      failure: (e) => Result.failure(e),
    );
  }
}
