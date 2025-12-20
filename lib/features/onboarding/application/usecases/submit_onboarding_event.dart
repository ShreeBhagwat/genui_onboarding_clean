import 'package:genui_onboarding_clean/core/utils/result.dart';
import '../../domain/entities/onboarding_surface.dart';
import '../../domain/entities/onboarding_state.dart';
import '../../domain/value_objects/onboarding_event.dart';
import '../../domain/repositories/onboarding_repository.dart';
import '../services/surface_validator.dart';
import '../services/surface_cache.dart';

class SubmitOnboardingEvent {
  final OnboardingRepository repository;
  final SurfaceValidator validator;
  final SurfaceCache cache;

  SubmitOnboardingEvent(this.repository, this.validator, this.cache);

  Future<Result<OnboardingSurface>> call(
    OnboardingEvent event,
    OnboardingState currentState,
  ) async {
    // 1. Update State based on event
    var nextState = currentState;

    if (event.fieldKey != null && event.value != null) {
      if (event.fieldKey == 'persona') {
        final val = OnboardingPersona.values.firstWhere(
          (e) => e.name == event.value,
          orElse: () => OnboardingPersona.other,
        );
        nextState = nextState.copyWith(persona: val);
      } else if (event.fieldKey == 'primaryGoals') {
        nextState = nextState.copyWith(
          primaryGoals: event.value as List<String>,
        );
      } else if (event.fieldKey == 'timePreference') {
        final val = OnboardingTimePreference.values.firstWhere(
          (e) => e.name == event.value,
          orElse: () => OnboardingTimePreference.mixed,
        );
        nextState = nextState.copyWith(timePreference: val);
      } else if (event.fieldKey == 'experienceLevel') {
        final val = OnboardingExperienceLevel.values.firstWhere(
          (e) => e.name == event.value,
          orElse: () => OnboardingExperienceLevel.beginner,
        );
        nextState = nextState.copyWith(experienceLevel: val);
      } else if (event.fieldKey == 'biggestDistraction') {
        nextState = nextState.copyWith(
          biggestDistraction: event.value as String,
        );
      } else if (event.fieldKey == 'accountMode') {
        final val = OnboardingAccountMode.values.firstWhere(
          (e) => e.name == event.value,
          orElse: () => OnboardingAccountMode.guest,
        );
        nextState = nextState.copyWith(accountMode: val);
      }
    }

    // Handle specific actions that update state (permissions)
    if (event.type == OnboardingEventType.pressAction) {
      final action = event.value as String;
      if (action == 'request_push_permission') {
        // Simulate
        nextState = nextState.copyWith(pushAllowed: true);
        // Don't advance surface yet? Typically permission request is blocking or just a dialog.
        // For this demo, we assume pressing it sets logic true, then user presses "Next".
        // OR the button *is* the advance.
        // Let's assume the UI handles the permission dailog and sends event back.
        // We'll return current surface updated?
        return Result.success(cache.current!);
      }
      if (action == 'request_calendar_permission') {
        nextState = nextState.copyWith(calendarAllowed: true);
        return Result.success(cache.current!);
      }
    }

    // 2. Fetch Next Surface
    final result = await repository.getNextSurface(
      nextState,
      lastSurfaceId: cache.current?.id,
    );

    return result.when(
      success: (surface) {
        try {
          validator.validate(surface);
          cache.push(surface);
          return Result.success(surface);
        } catch (e) {
          return Result.failure(e is Exception ? e : Exception(e.toString()));
        }
      },
      failure: (e) => Result.failure(e),
    );
  }
}
