// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_surface.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OnboardingSurface _$OnboardingSurfaceFromJson(Map<String, dynamic> json) {
  return _OnboardingSurface.fromJson(json);
}

/// @nodoc
mixin _$OnboardingSurface {
  String get id => throw _privateConstructorUsedError;
  int get stepIndex => throw _privateConstructorUsedError;
  int get totalSteps => throw _privateConstructorUsedError;
  String? get surfaceTitle => throw _privateConstructorUsedError;
  List<OnboardingComponent> get components =>
      throw _privateConstructorUsedError;

  /// Serializes this OnboardingSurface to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OnboardingSurface
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OnboardingSurfaceCopyWith<OnboardingSurface> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingSurfaceCopyWith<$Res> {
  factory $OnboardingSurfaceCopyWith(
          OnboardingSurface value, $Res Function(OnboardingSurface) then) =
      _$OnboardingSurfaceCopyWithImpl<$Res, OnboardingSurface>;
  @useResult
  $Res call(
      {String id,
      int stepIndex,
      int totalSteps,
      String? surfaceTitle,
      List<OnboardingComponent> components});
}

/// @nodoc
class _$OnboardingSurfaceCopyWithImpl<$Res, $Val extends OnboardingSurface>
    implements $OnboardingSurfaceCopyWith<$Res> {
  _$OnboardingSurfaceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OnboardingSurface
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? stepIndex = null,
    Object? totalSteps = null,
    Object? surfaceTitle = freezed,
    Object? components = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      stepIndex: null == stepIndex
          ? _value.stepIndex
          : stepIndex // ignore: cast_nullable_to_non_nullable
              as int,
      totalSteps: null == totalSteps
          ? _value.totalSteps
          : totalSteps // ignore: cast_nullable_to_non_nullable
              as int,
      surfaceTitle: freezed == surfaceTitle
          ? _value.surfaceTitle
          : surfaceTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      components: null == components
          ? _value.components
          : components // ignore: cast_nullable_to_non_nullable
              as List<OnboardingComponent>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OnboardingSurfaceImplCopyWith<$Res>
    implements $OnboardingSurfaceCopyWith<$Res> {
  factory _$$OnboardingSurfaceImplCopyWith(_$OnboardingSurfaceImpl value,
          $Res Function(_$OnboardingSurfaceImpl) then) =
      __$$OnboardingSurfaceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      int stepIndex,
      int totalSteps,
      String? surfaceTitle,
      List<OnboardingComponent> components});
}

/// @nodoc
class __$$OnboardingSurfaceImplCopyWithImpl<$Res>
    extends _$OnboardingSurfaceCopyWithImpl<$Res, _$OnboardingSurfaceImpl>
    implements _$$OnboardingSurfaceImplCopyWith<$Res> {
  __$$OnboardingSurfaceImplCopyWithImpl(_$OnboardingSurfaceImpl _value,
      $Res Function(_$OnboardingSurfaceImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingSurface
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? stepIndex = null,
    Object? totalSteps = null,
    Object? surfaceTitle = freezed,
    Object? components = null,
  }) {
    return _then(_$OnboardingSurfaceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      stepIndex: null == stepIndex
          ? _value.stepIndex
          : stepIndex // ignore: cast_nullable_to_non_nullable
              as int,
      totalSteps: null == totalSteps
          ? _value.totalSteps
          : totalSteps // ignore: cast_nullable_to_non_nullable
              as int,
      surfaceTitle: freezed == surfaceTitle
          ? _value.surfaceTitle
          : surfaceTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      components: null == components
          ? _value._components
          : components // ignore: cast_nullable_to_non_nullable
              as List<OnboardingComponent>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OnboardingSurfaceImpl implements _OnboardingSurface {
  const _$OnboardingSurfaceImpl(
      {required this.id,
      required this.stepIndex,
      required this.totalSteps,
      this.surfaceTitle,
      required final List<OnboardingComponent> components})
      : _components = components;

  factory _$OnboardingSurfaceImpl.fromJson(Map<String, dynamic> json) =>
      _$$OnboardingSurfaceImplFromJson(json);

  @override
  final String id;
  @override
  final int stepIndex;
  @override
  final int totalSteps;
  @override
  final String? surfaceTitle;
  final List<OnboardingComponent> _components;
  @override
  List<OnboardingComponent> get components {
    if (_components is EqualUnmodifiableListView) return _components;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_components);
  }

  @override
  String toString() {
    return 'OnboardingSurface(id: $id, stepIndex: $stepIndex, totalSteps: $totalSteps, surfaceTitle: $surfaceTitle, components: $components)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnboardingSurfaceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.stepIndex, stepIndex) ||
                other.stepIndex == stepIndex) &&
            (identical(other.totalSteps, totalSteps) ||
                other.totalSteps == totalSteps) &&
            (identical(other.surfaceTitle, surfaceTitle) ||
                other.surfaceTitle == surfaceTitle) &&
            const DeepCollectionEquality()
                .equals(other._components, _components));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, stepIndex, totalSteps,
      surfaceTitle, const DeepCollectionEquality().hash(_components));

  /// Create a copy of OnboardingSurface
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnboardingSurfaceImplCopyWith<_$OnboardingSurfaceImpl> get copyWith =>
      __$$OnboardingSurfaceImplCopyWithImpl<_$OnboardingSurfaceImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OnboardingSurfaceImplToJson(
      this,
    );
  }
}

abstract class _OnboardingSurface implements OnboardingSurface {
  const factory _OnboardingSurface(
          {required final String id,
          required final int stepIndex,
          required final int totalSteps,
          final String? surfaceTitle,
          required final List<OnboardingComponent> components}) =
      _$OnboardingSurfaceImpl;

  factory _OnboardingSurface.fromJson(Map<String, dynamic> json) =
      _$OnboardingSurfaceImpl.fromJson;

  @override
  String get id;
  @override
  int get stepIndex;
  @override
  int get totalSteps;
  @override
  String? get surfaceTitle;
  @override
  List<OnboardingComponent> get components;

  /// Create a copy of OnboardingSurface
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnboardingSurfaceImplCopyWith<_$OnboardingSurfaceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
