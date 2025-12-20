// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OnboardingEvent _$OnboardingEventFromJson(Map<String, dynamic> json) {
  return _OnboardingEvent.fromJson(json);
}

/// @nodoc
mixin _$OnboardingEvent {
  OnboardingEventType get type => throw _privateConstructorUsedError;
  String? get fieldKey => throw _privateConstructorUsedError;
  dynamic get value =>
      throw _privateConstructorUsedError; // String or List<String>
  DateTime get timestamp => throw _privateConstructorUsedError;
  String get replyToSurfaceId => throw _privateConstructorUsedError;

  /// Serializes this OnboardingEvent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OnboardingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OnboardingEventCopyWith<OnboardingEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingEventCopyWith<$Res> {
  factory $OnboardingEventCopyWith(
          OnboardingEvent value, $Res Function(OnboardingEvent) then) =
      _$OnboardingEventCopyWithImpl<$Res, OnboardingEvent>;
  @useResult
  $Res call(
      {OnboardingEventType type,
      String? fieldKey,
      dynamic value,
      DateTime timestamp,
      String replyToSurfaceId});
}

/// @nodoc
class _$OnboardingEventCopyWithImpl<$Res, $Val extends OnboardingEvent>
    implements $OnboardingEventCopyWith<$Res> {
  _$OnboardingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OnboardingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? fieldKey = freezed,
    Object? value = freezed,
    Object? timestamp = null,
    Object? replyToSurfaceId = null,
  }) {
    return _then(_value.copyWith(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OnboardingEventType,
      fieldKey: freezed == fieldKey
          ? _value.fieldKey
          : fieldKey // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      replyToSurfaceId: null == replyToSurfaceId
          ? _value.replyToSurfaceId
          : replyToSurfaceId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OnboardingEventImplCopyWith<$Res>
    implements $OnboardingEventCopyWith<$Res> {
  factory _$$OnboardingEventImplCopyWith(_$OnboardingEventImpl value,
          $Res Function(_$OnboardingEventImpl) then) =
      __$$OnboardingEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {OnboardingEventType type,
      String? fieldKey,
      dynamic value,
      DateTime timestamp,
      String replyToSurfaceId});
}

/// @nodoc
class __$$OnboardingEventImplCopyWithImpl<$Res>
    extends _$OnboardingEventCopyWithImpl<$Res, _$OnboardingEventImpl>
    implements _$$OnboardingEventImplCopyWith<$Res> {
  __$$OnboardingEventImplCopyWithImpl(
      _$OnboardingEventImpl _value, $Res Function(_$OnboardingEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? type = null,
    Object? fieldKey = freezed,
    Object? value = freezed,
    Object? timestamp = null,
    Object? replyToSurfaceId = null,
  }) {
    return _then(_$OnboardingEventImpl(
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as OnboardingEventType,
      fieldKey: freezed == fieldKey
          ? _value.fieldKey
          : fieldKey // ignore: cast_nullable_to_non_nullable
              as String?,
      value: freezed == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as dynamic,
      timestamp: null == timestamp
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as DateTime,
      replyToSurfaceId: null == replyToSurfaceId
          ? _value.replyToSurfaceId
          : replyToSurfaceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OnboardingEventImpl implements _OnboardingEvent {
  const _$OnboardingEventImpl(
      {required this.type,
      this.fieldKey,
      this.value,
      required this.timestamp,
      required this.replyToSurfaceId});

  factory _$OnboardingEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$OnboardingEventImplFromJson(json);

  @override
  final OnboardingEventType type;
  @override
  final String? fieldKey;
  @override
  final dynamic value;
// String or List<String>
  @override
  final DateTime timestamp;
  @override
  final String replyToSurfaceId;

  @override
  String toString() {
    return 'OnboardingEvent(type: $type, fieldKey: $fieldKey, value: $value, timestamp: $timestamp, replyToSurfaceId: $replyToSurfaceId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnboardingEventImpl &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.fieldKey, fieldKey) ||
                other.fieldKey == fieldKey) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.timestamp, timestamp) ||
                other.timestamp == timestamp) &&
            (identical(other.replyToSurfaceId, replyToSurfaceId) ||
                other.replyToSurfaceId == replyToSurfaceId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, type, fieldKey,
      const DeepCollectionEquality().hash(value), timestamp, replyToSurfaceId);

  /// Create a copy of OnboardingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnboardingEventImplCopyWith<_$OnboardingEventImpl> get copyWith =>
      __$$OnboardingEventImplCopyWithImpl<_$OnboardingEventImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OnboardingEventImplToJson(
      this,
    );
  }
}

abstract class _OnboardingEvent implements OnboardingEvent {
  const factory _OnboardingEvent(
      {required final OnboardingEventType type,
      final String? fieldKey,
      final dynamic value,
      required final DateTime timestamp,
      required final String replyToSurfaceId}) = _$OnboardingEventImpl;

  factory _OnboardingEvent.fromJson(Map<String, dynamic> json) =
      _$OnboardingEventImpl.fromJson;

  @override
  OnboardingEventType get type;
  @override
  String? get fieldKey;
  @override
  dynamic get value; // String or List<String>
  @override
  DateTime get timestamp;
  @override
  String get replyToSurfaceId;

  /// Create a copy of OnboardingEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnboardingEventImplCopyWith<_$OnboardingEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
