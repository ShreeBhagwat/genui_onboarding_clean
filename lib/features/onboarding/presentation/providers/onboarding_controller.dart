import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/value_objects/onboarding_event.dart';
import '../../domain/entities/onboarding_state.dart';
import '../../application/usecases/start_onboarding.dart';
import '../../application/usecases/submit_onboarding_event.dart';
import '../../application/usecases/go_back_surface.dart';
import '../../application/usecases/reset_onboarding.dart';
import 'onboarding_ui_state.dart';

class OnboardingController extends StateNotifier<OnboardingUiState> {
  final StartOnboarding _startOnboarding;
  final SubmitOnboardingEvent _submitEvent;
  final GoBackSurface _goBack;
  final ResetOnboarding _reset;

  // We keep track of the accumulated state here in the controller or pass it around.
  OnboardingState _currentInternalState = const OnboardingState();

  OnboardingController(
    this._startOnboarding,
    this._submitEvent,
    this._goBack,
    this._reset,
  ) : super(const OnboardingUiState.initial());

  Future<void> start() async {
    state = const OnboardingUiState.loading();
    final result = await _startOnboarding();
    result.when(
      success: (surface) {
        state = OnboardingUiState.data(
          surface: surface,
          internalState: _currentInternalState,
        );
      },
      failure: (e) {
        state = OnboardingUiState.error(e.toString());
      },
    );
  }

  Future<void> handleEvent(OnboardingEvent event) async {
    // Optimistic Update? No, we wait for "Next Surface".
    // Or if it's just input, we update local state?

    // If event is just selecting an option, we might not need to fetch a new surface UNLESS it's an immediate action (step completion).
    // The prompt says: "SubmitOnboardingEvent: updates state from event, asks repository for next surface".
    // This implies every event triggers a surface refresh? That's heavy.
    // Usually "Next" or "Back" buttons trigger the fetch.
    // Text Entry shouldn't trigger repo fetch on every char.
    // We'll update local state accumulation.

    if (event.type == OnboardingEventType.enterText ||
        event.type == OnboardingEventType.selectOption) {
      _updateInternalState(event);
      // Refresh UI state wrapper?
      // Just keep current surface but update debug internal state
      state.mapOrNull(
        data: (d) {
          state = d.copyWith(internalState: _currentInternalState);
        },
      );
      return;
    }

    // If Press Action
    if (event.type == OnboardingEventType.pressAction) {
      final actionIdx = event.value as String; // e.g. 'next', 'back'

      if (actionIdx == 'back') {
        _goBackFunc();
        return;
      }
      if (actionIdx == 'reset') {
        _resetFunc();
        return;
      }
      if (actionIdx == 'finish') {
        // Done
        // Maybe navigate away or show success
        state.mapOrNull(
          data: (d) {
            // Provide visual feedback?
          },
        );
        return;
      }

      // 'next' or others: Submit to UseCase to get next surface
      state = const OnboardingUiState.loading();
      final result = await _submitEvent(event, _currentInternalState);

      result.when(
        success: (surface) {
          state = OnboardingUiState.data(
            surface: surface,
            internalState: _currentInternalState,
          );
        },
        failure: (e) {
          state = OnboardingUiState.error(e.toString());
        },
      );
    }
  }

  void _updateInternalState(OnboardingEvent event) {
    if (event.fieldKey == null) return;

    // Mirror logic in UseCase? Ideally duplicate or shared helper.
    // The UseCase does the *authoritative* update before calling Repo.
    // But we need it for immediate feedback or just allow UseCase to return it?
    // Actually SubmitOnboardingEvent updates state then fetches Repo.
    // So when we call _submitEvent, we pass CURRENT internal state.
    // Does _submitEvent return the NEW state?
    // The Result<OnboardingSurface> doesn't contain the State.
    // We need to sync our controller state with the logic.
    // REFACTOR: Controller should probably just trust it's tracking state correctly OR
    // SubmitOnboardingEvent should return (Surface, State).
    // Given the constraints, I will duplicate the simple mapping logic here for _currentInternalState update or moved to valid spot.

    // Quick duplicate for demo robustness:
    if (event.fieldKey == 'persona') {
      final val = OnboardingPersona.values.firstWhere(
        (e) => e.name == event.value,
        orElse: () => OnboardingPersona.other,
      );
      _currentInternalState = _currentInternalState.copyWith(persona: val);
    } else if (event.fieldKey == 'primaryGoals') {
      _currentInternalState = _currentInternalState.copyWith(
        primaryGoals: event.value as List<String>,
      );
    } else if (event.fieldKey == 'timePreference') {
      final val = OnboardingTimePreference.values.firstWhere(
        (e) => e.name == event.value,
        orElse: () => OnboardingTimePreference.mixed,
      );
      _currentInternalState = _currentInternalState.copyWith(
        timePreference: val,
      );
    } else if (event.fieldKey == 'experienceLevel') {
      final val = OnboardingExperienceLevel.values.firstWhere(
        (e) => e.name == event.value,
        orElse: () => OnboardingExperienceLevel.beginner,
      );
      _currentInternalState = _currentInternalState.copyWith(
        experienceLevel: val,
      );
    } else if (event.fieldKey == 'biggestDistraction') {
      _currentInternalState = _currentInternalState.copyWith(
        biggestDistraction: event.value as String,
      );
    } else if (event.fieldKey == 'accountMode') {
      final val = OnboardingAccountMode.values.firstWhere(
        (e) => e.name == event.value,
        orElse: () => OnboardingAccountMode.guest,
      );
      _currentInternalState = _currentInternalState.copyWith(accountMode: val);
    }

    if (event.type == OnboardingEventType.pressAction) {
      final action = event.value as String;
      if (action == 'request_push_permission') {
        _currentInternalState = _currentInternalState.copyWith(
          pushAllowed: true,
        );
      }
      if (action == 'request_calendar_permission') {
        _currentInternalState = _currentInternalState.copyWith(
          calendarAllowed: true,
        );
      }
    }
  }

  void _goBackFunc() async {
    final result = _goBack();
    result.when(
      success: (surface) {
        state = OnboardingUiState.data(
          surface: surface,
          internalState: _currentInternalState,
        );
      },
      failure: (e) {
        // Can't go back, maybe show snackbar?
        // Keep current state
      },
    );
  }

  void _resetFunc() async {
    _reset();
    _currentInternalState = const OnboardingState();
    start();
  }
}
