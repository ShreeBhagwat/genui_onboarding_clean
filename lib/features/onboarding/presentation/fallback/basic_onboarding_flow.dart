import '../../domain/entities/onboarding_surface.dart';
import '../../domain/entities/onboarding_component.dart';

// Very basic fallback if validation fails or logic breaks
class BasicOnboardingFlow {
  static OnboardingSurface getFallbackSurface() {
    return const OnboardingSurface(
      id: 'fallback-001',
      stepIndex: 0,
      totalSteps: 1,
      surfaceTitle: 'Fallback',
      components: [
        OnboardingComponent.hero(
          title: 'Setup',
          subtitle: 'Basic setup due to error.',
        ),
        OnboardingComponent.singleChoice(
          question: 'Mode',
          options: [
            {'key': 'guest', 'label': 'Guest'},
          ],
          fieldKey: 'accountMode',
        ),
        OnboardingComponent.primaryButton(text: 'Finish', action: 'finish'),
      ],
    );
  }
}
