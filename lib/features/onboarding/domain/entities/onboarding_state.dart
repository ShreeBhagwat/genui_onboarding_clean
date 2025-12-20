import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_state.freezed.dart';
part 'onboarding_state.g.dart';

enum OnboardingPersona { student, founder, parent, developer, other }

enum OnboardingTimePreference { morning, afternoon, evening, mixed }

enum OnboardingExperienceLevel { beginner, intermediate, advanced }

enum OnboardingPlatform { ios, android, web }

enum OnboardingAccountMode { guest, createAccount }

@freezed
class OnboardingState with _$OnboardingState {
  const factory OnboardingState({
    OnboardingPersona? persona,
    @Default([]) List<String> primaryGoals,
    OnboardingTimePreference? timePreference,
    OnboardingExperienceLevel? experienceLevel,
    OnboardingPlatform? platform,
    @Default(false) bool pushAllowed,
    @Default(false) bool calendarAllowed,
    OnboardingAccountMode? accountMode,
    String? biggestDistraction,
  }) = _OnboardingState;

  factory OnboardingState.fromJson(Map<String, dynamic> json) =>
      _$OnboardingStateFromJson(json);
}
