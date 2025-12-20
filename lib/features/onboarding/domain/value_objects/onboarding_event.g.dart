// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_event.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OnboardingEventImpl _$$OnboardingEventImplFromJson(
        Map<String, dynamic> json) =>
    _$OnboardingEventImpl(
      type: $enumDecode(_$OnboardingEventTypeEnumMap, json['type']),
      fieldKey: json['fieldKey'] as String?,
      value: json['value'],
      timestamp: DateTime.parse(json['timestamp'] as String),
      replyToSurfaceId: json['replyToSurfaceId'] as String,
    );

Map<String, dynamic> _$$OnboardingEventImplToJson(
        _$OnboardingEventImpl instance) =>
    <String, dynamic>{
      'type': _$OnboardingEventTypeEnumMap[instance.type]!,
      'fieldKey': instance.fieldKey,
      'value': instance.value,
      'timestamp': instance.timestamp.toIso8601String(),
      'replyToSurfaceId': instance.replyToSurfaceId,
    };

const _$OnboardingEventTypeEnumMap = {
  OnboardingEventType.selectOption: 'selectOption',
  OnboardingEventType.enterText: 'enterText',
  OnboardingEventType.pressAction: 'pressAction',
};
