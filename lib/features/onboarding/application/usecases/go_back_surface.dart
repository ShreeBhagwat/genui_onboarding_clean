import 'package:genui_onboarding_clean/core/utils/result.dart';
import '../../../../core/errors/app_exception.dart';
import '../../domain/entities/onboarding_surface.dart';
import '../services/surface_cache.dart';

class GoBackSurface {
  final SurfaceCache cache;

  GoBackSurface(this.cache);

  Result<OnboardingSurface> call() {
    // Current is the one we are on.
    // We want to pop it and return the one below.
    // If we only have 1 item, we can't go back.

    // Cache logic: push adds to top. current returns top.
    // pop removes top and returns the *new* top.

    final prev = cache.pop();
    if (prev != null) {
      return Result.success(prev);
    } else {
      return const Result.failure(AppException.unexpected('Cannot go back'));
    }
  }
}
