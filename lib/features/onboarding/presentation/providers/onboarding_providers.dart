import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../data/generators/local_onboarding_generator.dart';
import '../../data/repositories/onboarding_repository_impl.dart';
import '../../application/services/surface_cache.dart';
import '../../application/services/surface_validator.dart';
import '../../application/usecases/start_onboarding.dart';
import '../../application/usecases/submit_onboarding_event.dart';
import '../../application/usecases/go_back_surface.dart';
import '../../application/usecases/reset_onboarding.dart';
import '../../domain/repositories/onboarding_repository.dart';
import 'onboarding_controller.dart';
import 'onboarding_ui_state.dart';

// Services
final onboardingGeneratorProvider = Provider(
  (ref) => LocalOnboardingGenerator(),
);
final onboardingRepositoryProvider = Provider<OnboardingRepository>(
  (ref) => OnboardingRepositoryImpl(ref.read(onboardingGeneratorProvider)),
);
final surfaceValidatorProvider = Provider((ref) => SurfaceValidator());
final surfaceCacheProvider = Provider((ref) => SurfaceCache());

// UseCases
final startOnboardingProvider = Provider(
  (ref) => StartOnboarding(
    ref.read(onboardingRepositoryProvider),
    ref.read(surfaceValidatorProvider),
    ref.read(surfaceCacheProvider),
  ),
);
final submitEventProvider = Provider(
  (ref) => SubmitOnboardingEvent(
    ref.read(onboardingRepositoryProvider),
    ref.read(surfaceValidatorProvider),
    ref.read(surfaceCacheProvider),
  ),
);
final goBackProvider = Provider(
  (ref) => GoBackSurface(ref.read(surfaceCacheProvider)),
);
final resetProvider = Provider(
  (ref) => ResetOnboarding(ref.read(surfaceCacheProvider)),
);

// Helper to hold current OnboardingState logic (replicated from usecase logic, or shared)
// Actually the Clean way is for the UseCase to return the surface, but where is the State stored?
// The Repository tracks data? No, Repo is stateless usually?
// In this demo, the LocalGenerator is treating "stepIndex" as state, but the actual OnboardingState (entity)
// needs to be persisted during the session.
// I'll make the Controller hold the OnboardingState Entity as well.

final onboardingControllerProvider =
    StateNotifierProvider<OnboardingController, OnboardingUiState>((ref) {
  return OnboardingController(
    ref.read(startOnboardingProvider),
    ref.read(submitEventProvider),
    ref.read(goBackProvider),
    ref.read(resetProvider),
  );
});
