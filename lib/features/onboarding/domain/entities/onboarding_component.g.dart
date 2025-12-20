// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'onboarding_component.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OnbHeroImpl _$$OnbHeroImplFromJson(Map<String, dynamic> json) =>
    _$OnbHeroImpl(
      title: json['title'] as String,
      subtitle: json['subtitle'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$OnbHeroImplToJson(_$OnbHeroImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'subtitle': instance.subtitle,
      'runtimeType': instance.$type,
    };

_$OnbProgressImpl _$$OnbProgressImplFromJson(Map<String, dynamic> json) =>
    _$OnbProgressImpl(
      step: (json['step'] as num).toInt(),
      total: (json['total'] as num).toInt(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$OnbProgressImplToJson(_$OnbProgressImpl instance) =>
    <String, dynamic>{
      'step': instance.step,
      'total': instance.total,
      'runtimeType': instance.$type,
    };

_$OnbSingleChoiceImpl _$$OnbSingleChoiceImplFromJson(
        Map<String, dynamic> json) =>
    _$OnbSingleChoiceImpl(
      question: json['question'] as String,
      options: (json['options'] as List<dynamic>)
          .map((e) => Map<String, String>.from(e as Map))
          .toList(),
      fieldKey: json['fieldKey'] as String,
      selectedKey: json['selectedKey'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$OnbSingleChoiceImplToJson(
        _$OnbSingleChoiceImpl instance) =>
    <String, dynamic>{
      'question': instance.question,
      'options': instance.options,
      'fieldKey': instance.fieldKey,
      'selectedKey': instance.selectedKey,
      'runtimeType': instance.$type,
    };

_$OnbMultiChoiceImpl _$$OnbMultiChoiceImplFromJson(Map<String, dynamic> json) =>
    _$OnbMultiChoiceImpl(
      question: json['question'] as String,
      options: (json['options'] as List<dynamic>)
          .map((e) => Map<String, String>.from(e as Map))
          .toList(),
      fieldKey: json['fieldKey'] as String,
      selectedKeys: (json['selectedKeys'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      maxSelection: (json['maxSelection'] as num?)?.toInt() ?? 2,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$OnbMultiChoiceImplToJson(
        _$OnbMultiChoiceImpl instance) =>
    <String, dynamic>{
      'question': instance.question,
      'options': instance.options,
      'fieldKey': instance.fieldKey,
      'selectedKeys': instance.selectedKeys,
      'maxSelection': instance.maxSelection,
      'runtimeType': instance.$type,
    };

_$OnbTextFieldImpl _$$OnbTextFieldImplFromJson(Map<String, dynamic> json) =>
    _$OnbTextFieldImpl(
      label: json['label'] as String,
      hint: json['hint'] as String,
      fieldKey: json['fieldKey'] as String,
      keyboardType: json['keyboardType'] as String?,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$OnbTextFieldImplToJson(_$OnbTextFieldImpl instance) =>
    <String, dynamic>{
      'label': instance.label,
      'hint': instance.hint,
      'fieldKey': instance.fieldKey,
      'keyboardType': instance.keyboardType,
      'runtimeType': instance.$type,
    };

_$OnbPrimaryButtonImpl _$$OnbPrimaryButtonImplFromJson(
        Map<String, dynamic> json) =>
    _$OnbPrimaryButtonImpl(
      text: json['text'] as String,
      action: json['action'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$OnbPrimaryButtonImplToJson(
        _$OnbPrimaryButtonImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'action': instance.action,
      'runtimeType': instance.$type,
    };

_$OnbSecondaryButtonImpl _$$OnbSecondaryButtonImplFromJson(
        Map<String, dynamic> json) =>
    _$OnbSecondaryButtonImpl(
      text: json['text'] as String,
      action: json['action'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$OnbSecondaryButtonImplToJson(
        _$OnbSecondaryButtonImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'action': instance.action,
      'runtimeType': instance.$type,
    };

_$OnbLegalImpl _$$OnbLegalImplFromJson(Map<String, dynamic> json) =>
    _$OnbLegalImpl(
      text: json['text'] as String,
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$OnbLegalImplToJson(_$OnbLegalImpl instance) =>
    <String, dynamic>{
      'text': instance.text,
      'runtimeType': instance.$type,
    };

_$OnbSpacerImpl _$$OnbSpacerImplFromJson(Map<String, dynamic> json) =>
    _$OnbSpacerImpl(
      size: (json['size'] as num).toDouble(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$OnbSpacerImplToJson(_$OnbSpacerImpl instance) =>
    <String, dynamic>{
      'size': instance.size,
      'runtimeType': instance.$type,
    };
