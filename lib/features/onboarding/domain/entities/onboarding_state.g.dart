// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OnboardingStateImpl _$$OnboardingStateImplFromJson(
        Map<String, dynamic> json) =>
    _$OnboardingStateImpl(
      persona: $enumDecodeNullable(_$OnboardingPersonaEnumMap, json['persona']),
      primaryGoals: (json['primaryGoals'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      timePreference: $enumDecodeNullable(
          _$OnboardingTimePreferenceEnumMap, json['timePreference']),
      experienceLevel: $enumDecodeNullable(
          _$OnboardingExperienceLevelEnumMap, json['experienceLevel']),
      platform:
          $enumDecodeNullable(_$OnboardingPlatformEnumMap, json['platform']),
      pushAllowed: json['pushAllowed'] as bool? ?? false,
      calendarAllowed: json['calendarAllowed'] as bool? ?? false,
      accountMode: $enumDecodeNullable(
          _$OnboardingAccountModeEnumMap, json['accountMode']),
      biggestDistraction: json['biggestDistraction'] as String?,
    );

Map<String, dynamic> _$$OnboardingStateImplToJson(
        _$OnboardingStateImpl instance) =>
    <String, dynamic>{
      'persona': _$OnboardingPersonaEnumMap[instance.persona],
      'primaryGoals': instance.primaryGoals,
      'timePreference':
          _$OnboardingTimePreferenceEnumMap[instance.timePreference],
      'experienceLevel':
          _$OnboardingExperienceLevelEnumMap[instance.experienceLevel],
      'platform': _$OnboardingPlatformEnumMap[instance.platform],
      'pushAllowed': instance.pushAllowed,
      'calendarAllowed': instance.calendarAllowed,
      'accountMode': _$OnboardingAccountModeEnumMap[instance.accountMode],
      'biggestDistraction': instance.biggestDistraction,
    };

const _$OnboardingPersonaEnumMap = {
  OnboardingPersona.student: 'student',
  OnboardingPersona.founder: 'founder',
  OnboardingPersona.parent: 'parent',
  OnboardingPersona.developer: 'developer',
  OnboardingPersona.other: 'other',
};

const _$OnboardingTimePreferenceEnumMap = {
  OnboardingTimePreference.morning: 'morning',
  OnboardingTimePreference.afternoon: 'afternoon',
  OnboardingTimePreference.evening: 'evening',
  OnboardingTimePreference.mixed: 'mixed',
};

const _$OnboardingExperienceLevelEnumMap = {
  OnboardingExperienceLevel.beginner: 'beginner',
  OnboardingExperienceLevel.intermediate: 'intermediate',
  OnboardingExperienceLevel.advanced: 'advanced',
};

const _$OnboardingPlatformEnumMap = {
  OnboardingPlatform.ios: 'ios',
  OnboardingPlatform.android: 'android',
  OnboardingPlatform.web: 'web',
};

const _$OnboardingAccountModeEnumMap = {
  OnboardingAccountMode.guest: 'guest',
  OnboardingAccountMode.createAccount: 'createAccount',
};
