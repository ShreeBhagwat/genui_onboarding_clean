import '../../domain/entities/onboarding_surface.dart';
import '../../domain/entities/onboarding_state.dart';

abstract class OnboardingContentGenerator {
  Future<OnboardingSurface> generateNextSurface(
    OnboardingState state,
    int stepIndex,
  );
}
