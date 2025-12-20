import 'package:genui_onboarding_clean/core/utils/result.dart';
import '../../domain/entities/onboarding_surface.dart';
import '../../domain/entities/onboarding_state.dart';

abstract class OnboardingRepository {
  Future<Result<OnboardingSurface>> getNextSurface(
    OnboardingState currentState, {
    String? lastSurfaceId,
  });
  Future<Result<OnboardingSurface>> getSurfaceById(
    String id,
  ); // For history/refresh
}
