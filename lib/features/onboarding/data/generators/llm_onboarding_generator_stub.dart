import '../../domain/entities/onboarding_surface.dart';
import '../../domain/entities/onboarding_state.dart';
import 'onboarding_content_generator.dart';

// TODO: Integrate with real LLM
class LlmOnboardingGeneratorStub implements OnboardingContentGenerator {
  @override
  Future<OnboardingSurface> generateNextSurface(
    OnboardingState state,
    int stepIndex,
  ) async {
    // TODO: formatting prompt from state
    // TODO: call GenUI / LLM API
    // TODO: parse JSON result to OnboardingSurface
    throw UnimplementedError(
      'LLM Generator not implemented. Use local for now.',
    );
  }
}
