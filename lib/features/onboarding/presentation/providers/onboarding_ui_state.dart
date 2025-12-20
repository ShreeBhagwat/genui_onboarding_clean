import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/onboarding_surface.dart';
import '../../domain/entities/onboarding_state.dart';

part 'onboarding_ui_state.freezed.dart';

@freezed
class OnboardingUiState with _$OnboardingUiState {
  const factory OnboardingUiState.initial() = _Initial;
  const factory OnboardingUiState.loading() = _Loading;
  const factory OnboardingUiState.data({
    required OnboardingSurface surface,
    required OnboardingState internalState, // For debug views
  }) = _Data;
  const factory OnboardingUiState.error(String message) = _Error;
}
