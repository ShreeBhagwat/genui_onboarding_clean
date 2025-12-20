// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_surface.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OnboardingSurfaceImpl _$$OnboardingSurfaceImplFromJson(
        Map<String, dynamic> json) =>
    _$OnboardingSurfaceImpl(
      id: json['id'] as String,
      stepIndex: (json['stepIndex'] as num).toInt(),
      totalSteps: (json['totalSteps'] as num).toInt(),
      surfaceTitle: json['surfaceTitle'] as String?,
      components: (json['components'] as List<dynamic>)
          .map((e) => OnboardingComponent.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$OnboardingSurfaceImplToJson(
        _$OnboardingSurfaceImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'stepIndex': instance.stepIndex,
      'totalSteps': instance.totalSteps,
      'surfaceTitle': instance.surfaceTitle,
      'components': instance.components,
    };
