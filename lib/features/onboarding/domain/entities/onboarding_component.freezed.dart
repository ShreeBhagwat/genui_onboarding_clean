// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_component.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OnboardingComponent _$OnboardingComponentFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'hero':
      return OnbHero.fromJson(json);
    case 'progress':
      return OnbProgress.fromJson(json);
    case 'singleChoice':
      return OnbSingleChoice.fromJson(json);
    case 'multiChoice':
      return OnbMultiChoice.fromJson(json);
    case 'textField':
      return OnbTextField.fromJson(json);
    case 'primaryButton':
      return OnbPrimaryButton.fromJson(json);
    case 'secondaryButton':
      return OnbSecondaryButton.fromJson(json);
    case 'legal':
      return OnbLegal.fromJson(json);
    case 'spacer':
      return OnbSpacer.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'OnboardingComponent',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$OnboardingComponent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String subtitle) hero,
    required TResult Function(int step, int total) progress,
    required TResult Function(
            String question,
            List<Map<String, String>> options,
            String fieldKey,
            String? selectedKey)
        singleChoice,
    required TResult Function(
            String question,
            List<Map<String, String>> options,
            String fieldKey,
            List<String> selectedKeys,
            int maxSelection)
        multiChoice,
    required TResult Function(
            String label, String hint, String fieldKey, String? keyboardType)
        textField,
    required TResult Function(String text, String action) primaryButton,
    required TResult Function(String text, String action) secondaryButton,
    required TResult Function(String text) legal,
    required TResult Function(double size) spacer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String subtitle)? hero,
    TResult? Function(int step, int total)? progress,
    TResult? Function(String question, List<Map<String, String>> options,
            String fieldKey, String? selectedKey)?
        singleChoice,
    TResult? Function(String question, List<Map<String, String>> options,
            String fieldKey, List<String> selectedKeys, int maxSelection)?
        multiChoice,
    TResult? Function(
            String label, String hint, String fieldKey, String? keyboardType)?
        textField,
    TResult? Function(String text, String action)? primaryButton,
    TResult? Function(String text, String action)? secondaryButton,
    TResult? Function(String text)? legal,
    TResult? Function(double size)? spacer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String subtitle)? hero,
    TResult Function(int step, int total)? progress,
    TResult Function(String question, List<Map<String, String>> options,
            String fieldKey, String? selectedKey)?
        singleChoice,
    TResult Function(String question, List<Map<String, String>> options,
            String fieldKey, List<String> selectedKeys, int maxSelection)?
        multiChoice,
    TResult Function(
            String label, String hint, String fieldKey, String? keyboardType)?
        textField,
    TResult Function(String text, String action)? primaryButton,
    TResult Function(String text, String action)? secondaryButton,
    TResult Function(String text)? legal,
    TResult Function(double size)? spacer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnbHero value) hero,
    required TResult Function(OnbProgress value) progress,
    required TResult Function(OnbSingleChoice value) singleChoice,
    required TResult Function(OnbMultiChoice value) multiChoice,
    required TResult Function(OnbTextField value) textField,
    required TResult Function(OnbPrimaryButton value) primaryButton,
    required TResult Function(OnbSecondaryButton value) secondaryButton,
    required TResult Function(OnbLegal value) legal,
    required TResult Function(OnbSpacer value) spacer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnbHero value)? hero,
    TResult? Function(OnbProgress value)? progress,
    TResult? Function(OnbSingleChoice value)? singleChoice,
    TResult? Function(OnbMultiChoice value)? multiChoice,
    TResult? Function(OnbTextField value)? textField,
    TResult? Function(OnbPrimaryButton value)? primaryButton,
    TResult? Function(OnbSecondaryButton value)? secondaryButton,
    TResult? Function(OnbLegal value)? legal,
    TResult? Function(OnbSpacer value)? spacer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnbHero value)? hero,
    TResult Function(OnbProgress value)? progress,
    TResult Function(OnbSingleChoice value)? singleChoice,
    TResult Function(OnbMultiChoice value)? multiChoice,
    TResult Function(OnbTextField value)? textField,
    TResult Function(OnbPrimaryButton value)? primaryButton,
    TResult Function(OnbSecondaryButton value)? secondaryButton,
    TResult Function(OnbLegal value)? legal,
    TResult Function(OnbSpacer value)? spacer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this OnboardingComponent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingComponentCopyWith<$Res> {
  factory $OnboardingComponentCopyWith(
          OnboardingComponent value, $Res Function(OnboardingComponent) then) =
      _$OnboardingComponentCopyWithImpl<$Res, OnboardingComponent>;
}

/// @nodoc
class _$OnboardingComponentCopyWithImpl<$Res, $Val extends OnboardingComponent>
    implements $OnboardingComponentCopyWith<$Res> {
  _$OnboardingComponentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OnboardingComponent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$OnbHeroImplCopyWith<$Res> {
  factory _$$OnbHeroImplCopyWith(
          _$OnbHeroImpl value, $Res Function(_$OnbHeroImpl) then) =
      __$$OnbHeroImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title, String subtitle});
}

/// @nodoc
class __$$OnbHeroImplCopyWithImpl<$Res>
    extends _$OnboardingComponentCopyWithImpl<$Res, _$OnbHeroImpl>
    implements _$$OnbHeroImplCopyWith<$Res> {
  __$$OnbHeroImplCopyWithImpl(
      _$OnbHeroImpl _value, $Res Function(_$OnbHeroImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingComponent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? subtitle = null,
  }) {
    return _then(_$OnbHeroImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      subtitle: null == subtitle
          ? _value.subtitle
          : subtitle // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OnbHeroImpl implements OnbHero {
  const _$OnbHeroImpl(
      {required this.title, required this.subtitle, final String? $type})
      : $type = $type ?? 'hero';

  factory _$OnbHeroImpl.fromJson(Map<String, dynamic> json) =>
      _$$OnbHeroImplFromJson(json);

  @override
  final String title;
  @override
  final String subtitle;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OnboardingComponent.hero(title: $title, subtitle: $subtitle)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnbHeroImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.subtitle, subtitle) ||
                other.subtitle == subtitle));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, title, subtitle);

  /// Create a copy of OnboardingComponent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnbHeroImplCopyWith<_$OnbHeroImpl> get copyWith =>
      __$$OnbHeroImplCopyWithImpl<_$OnbHeroImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String subtitle) hero,
    required TResult Function(int step, int total) progress,
    required TResult Function(
            String question,
            List<Map<String, String>> options,
            String fieldKey,
            String? selectedKey)
        singleChoice,
    required TResult Function(
            String question,
            List<Map<String, String>> options,
            String fieldKey,
            List<String> selectedKeys,
            int maxSelection)
        multiChoice,
    required TResult Function(
            String label, String hint, String fieldKey, String? keyboardType)
        textField,
    required TResult Function(String text, String action) primaryButton,
    required TResult Function(String text, String action) secondaryButton,
    required TResult Function(String text) legal,
    required TResult Function(double size) spacer,
  }) {
    return hero(title, subtitle);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String subtitle)? hero,
    TResult? Function(int step, int total)? progress,
    TResult? Function(String question, List<Map<String, String>> options,
            String fieldKey, String? selectedKey)?
        singleChoice,
    TResult? Function(String question, List<Map<String, String>> options,
            String fieldKey, List<String> selectedKeys, int maxSelection)?
        multiChoice,
    TResult? Function(
            String label, String hint, String fieldKey, String? keyboardType)?
        textField,
    TResult? Function(String text, String action)? primaryButton,
    TResult? Function(String text, String action)? secondaryButton,
    TResult? Function(String text)? legal,
    TResult? Function(double size)? spacer,
  }) {
    return hero?.call(title, subtitle);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String subtitle)? hero,
    TResult Function(int step, int total)? progress,
    TResult Function(String question, List<Map<String, String>> options,
            String fieldKey, String? selectedKey)?
        singleChoice,
    TResult Function(String question, List<Map<String, String>> options,
            String fieldKey, List<String> selectedKeys, int maxSelection)?
        multiChoice,
    TResult Function(
            String label, String hint, String fieldKey, String? keyboardType)?
        textField,
    TResult Function(String text, String action)? primaryButton,
    TResult Function(String text, String action)? secondaryButton,
    TResult Function(String text)? legal,
    TResult Function(double size)? spacer,
    required TResult orElse(),
  }) {
    if (hero != null) {
      return hero(title, subtitle);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnbHero value) hero,
    required TResult Function(OnbProgress value) progress,
    required TResult Function(OnbSingleChoice value) singleChoice,
    required TResult Function(OnbMultiChoice value) multiChoice,
    required TResult Function(OnbTextField value) textField,
    required TResult Function(OnbPrimaryButton value) primaryButton,
    required TResult Function(OnbSecondaryButton value) secondaryButton,
    required TResult Function(OnbLegal value) legal,
    required TResult Function(OnbSpacer value) spacer,
  }) {
    return hero(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnbHero value)? hero,
    TResult? Function(OnbProgress value)? progress,
    TResult? Function(OnbSingleChoice value)? singleChoice,
    TResult? Function(OnbMultiChoice value)? multiChoice,
    TResult? Function(OnbTextField value)? textField,
    TResult? Function(OnbPrimaryButton value)? primaryButton,
    TResult? Function(OnbSecondaryButton value)? secondaryButton,
    TResult? Function(OnbLegal value)? legal,
    TResult? Function(OnbSpacer value)? spacer,
  }) {
    return hero?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnbHero value)? hero,
    TResult Function(OnbProgress value)? progress,
    TResult Function(OnbSingleChoice value)? singleChoice,
    TResult Function(OnbMultiChoice value)? multiChoice,
    TResult Function(OnbTextField value)? textField,
    TResult Function(OnbPrimaryButton value)? primaryButton,
    TResult Function(OnbSecondaryButton value)? secondaryButton,
    TResult Function(OnbLegal value)? legal,
    TResult Function(OnbSpacer value)? spacer,
    required TResult orElse(),
  }) {
    if (hero != null) {
      return hero(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OnbHeroImplToJson(
      this,
    );
  }
}

abstract class OnbHero implements OnboardingComponent {
  const factory OnbHero(
      {required final String title,
      required final String subtitle}) = _$OnbHeroImpl;

  factory OnbHero.fromJson(Map<String, dynamic> json) = _$OnbHeroImpl.fromJson;

  String get title;
  String get subtitle;

  /// Create a copy of OnboardingComponent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnbHeroImplCopyWith<_$OnbHeroImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnbProgressImplCopyWith<$Res> {
  factory _$$OnbProgressImplCopyWith(
          _$OnbProgressImpl value, $Res Function(_$OnbProgressImpl) then) =
      __$$OnbProgressImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int step, int total});
}

/// @nodoc
class __$$OnbProgressImplCopyWithImpl<$Res>
    extends _$OnboardingComponentCopyWithImpl<$Res, _$OnbProgressImpl>
    implements _$$OnbProgressImplCopyWith<$Res> {
  __$$OnbProgressImplCopyWithImpl(
      _$OnbProgressImpl _value, $Res Function(_$OnbProgressImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingComponent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? step = null,
    Object? total = null,
  }) {
    return _then(_$OnbProgressImpl(
      step: null == step
          ? _value.step
          : step // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OnbProgressImpl implements OnbProgress {
  const _$OnbProgressImpl(
      {required this.step, required this.total, final String? $type})
      : $type = $type ?? 'progress';

  factory _$OnbProgressImpl.fromJson(Map<String, dynamic> json) =>
      _$$OnbProgressImplFromJson(json);

  @override
  final int step;
  @override
  final int total;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OnboardingComponent.progress(step: $step, total: $total)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnbProgressImpl &&
            (identical(other.step, step) || other.step == step) &&
            (identical(other.total, total) || other.total == total));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, step, total);

  /// Create a copy of OnboardingComponent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnbProgressImplCopyWith<_$OnbProgressImpl> get copyWith =>
      __$$OnbProgressImplCopyWithImpl<_$OnbProgressImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String subtitle) hero,
    required TResult Function(int step, int total) progress,
    required TResult Function(
            String question,
            List<Map<String, String>> options,
            String fieldKey,
            String? selectedKey)
        singleChoice,
    required TResult Function(
            String question,
            List<Map<String, String>> options,
            String fieldKey,
            List<String> selectedKeys,
            int maxSelection)
        multiChoice,
    required TResult Function(
            String label, String hint, String fieldKey, String? keyboardType)
        textField,
    required TResult Function(String text, String action) primaryButton,
    required TResult Function(String text, String action) secondaryButton,
    required TResult Function(String text) legal,
    required TResult Function(double size) spacer,
  }) {
    return progress(step, total);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String subtitle)? hero,
    TResult? Function(int step, int total)? progress,
    TResult? Function(String question, List<Map<String, String>> options,
            String fieldKey, String? selectedKey)?
        singleChoice,
    TResult? Function(String question, List<Map<String, String>> options,
            String fieldKey, List<String> selectedKeys, int maxSelection)?
        multiChoice,
    TResult? Function(
            String label, String hint, String fieldKey, String? keyboardType)?
        textField,
    TResult? Function(String text, String action)? primaryButton,
    TResult? Function(String text, String action)? secondaryButton,
    TResult? Function(String text)? legal,
    TResult? Function(double size)? spacer,
  }) {
    return progress?.call(step, total);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String subtitle)? hero,
    TResult Function(int step, int total)? progress,
    TResult Function(String question, List<Map<String, String>> options,
            String fieldKey, String? selectedKey)?
        singleChoice,
    TResult Function(String question, List<Map<String, String>> options,
            String fieldKey, List<String> selectedKeys, int maxSelection)?
        multiChoice,
    TResult Function(
            String label, String hint, String fieldKey, String? keyboardType)?
        textField,
    TResult Function(String text, String action)? primaryButton,
    TResult Function(String text, String action)? secondaryButton,
    TResult Function(String text)? legal,
    TResult Function(double size)? spacer,
    required TResult orElse(),
  }) {
    if (progress != null) {
      return progress(step, total);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnbHero value) hero,
    required TResult Function(OnbProgress value) progress,
    required TResult Function(OnbSingleChoice value) singleChoice,
    required TResult Function(OnbMultiChoice value) multiChoice,
    required TResult Function(OnbTextField value) textField,
    required TResult Function(OnbPrimaryButton value) primaryButton,
    required TResult Function(OnbSecondaryButton value) secondaryButton,
    required TResult Function(OnbLegal value) legal,
    required TResult Function(OnbSpacer value) spacer,
  }) {
    return progress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnbHero value)? hero,
    TResult? Function(OnbProgress value)? progress,
    TResult? Function(OnbSingleChoice value)? singleChoice,
    TResult? Function(OnbMultiChoice value)? multiChoice,
    TResult? Function(OnbTextField value)? textField,
    TResult? Function(OnbPrimaryButton value)? primaryButton,
    TResult? Function(OnbSecondaryButton value)? secondaryButton,
    TResult? Function(OnbLegal value)? legal,
    TResult? Function(OnbSpacer value)? spacer,
  }) {
    return progress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnbHero value)? hero,
    TResult Function(OnbProgress value)? progress,
    TResult Function(OnbSingleChoice value)? singleChoice,
    TResult Function(OnbMultiChoice value)? multiChoice,
    TResult Function(OnbTextField value)? textField,
    TResult Function(OnbPrimaryButton value)? primaryButton,
    TResult Function(OnbSecondaryButton value)? secondaryButton,
    TResult Function(OnbLegal value)? legal,
    TResult Function(OnbSpacer value)? spacer,
    required TResult orElse(),
  }) {
    if (progress != null) {
      return progress(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OnbProgressImplToJson(
      this,
    );
  }
}

abstract class OnbProgress implements OnboardingComponent {
  const factory OnbProgress(
      {required final int step, required final int total}) = _$OnbProgressImpl;

  factory OnbProgress.fromJson(Map<String, dynamic> json) =
      _$OnbProgressImpl.fromJson;

  int get step;
  int get total;

  /// Create a copy of OnboardingComponent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnbProgressImplCopyWith<_$OnbProgressImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnbSingleChoiceImplCopyWith<$Res> {
  factory _$$OnbSingleChoiceImplCopyWith(_$OnbSingleChoiceImpl value,
          $Res Function(_$OnbSingleChoiceImpl) then) =
      __$$OnbSingleChoiceImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String question,
      List<Map<String, String>> options,
      String fieldKey,
      String? selectedKey});
}

/// @nodoc
class __$$OnbSingleChoiceImplCopyWithImpl<$Res>
    extends _$OnboardingComponentCopyWithImpl<$Res, _$OnbSingleChoiceImpl>
    implements _$$OnbSingleChoiceImplCopyWith<$Res> {
  __$$OnbSingleChoiceImplCopyWithImpl(
      _$OnbSingleChoiceImpl _value, $Res Function(_$OnbSingleChoiceImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingComponent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? options = null,
    Object? fieldKey = null,
    Object? selectedKey = freezed,
  }) {
    return _then(_$OnbSingleChoiceImpl(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String>>,
      fieldKey: null == fieldKey
          ? _value.fieldKey
          : fieldKey // ignore: cast_nullable_to_non_nullable
              as String,
      selectedKey: freezed == selectedKey
          ? _value.selectedKey
          : selectedKey // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OnbSingleChoiceImpl implements OnbSingleChoice {
  const _$OnbSingleChoiceImpl(
      {required this.question,
      required final List<Map<String, String>> options,
      required this.fieldKey,
      this.selectedKey,
      final String? $type})
      : _options = options,
        $type = $type ?? 'singleChoice';

  factory _$OnbSingleChoiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$OnbSingleChoiceImplFromJson(json);

  @override
  final String question;
  final List<Map<String, String>> _options;
  @override
  List<Map<String, String>> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

// [{key, label}]
  @override
  final String fieldKey;
  @override
  final String? selectedKey;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OnboardingComponent.singleChoice(question: $question, options: $options, fieldKey: $fieldKey, selectedKey: $selectedKey)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnbSingleChoiceImpl &&
            (identical(other.question, question) ||
                other.question == question) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            (identical(other.fieldKey, fieldKey) ||
                other.fieldKey == fieldKey) &&
            (identical(other.selectedKey, selectedKey) ||
                other.selectedKey == selectedKey));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, question,
      const DeepCollectionEquality().hash(_options), fieldKey, selectedKey);

  /// Create a copy of OnboardingComponent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnbSingleChoiceImplCopyWith<_$OnbSingleChoiceImpl> get copyWith =>
      __$$OnbSingleChoiceImplCopyWithImpl<_$OnbSingleChoiceImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String subtitle) hero,
    required TResult Function(int step, int total) progress,
    required TResult Function(
            String question,
            List<Map<String, String>> options,
            String fieldKey,
            String? selectedKey)
        singleChoice,
    required TResult Function(
            String question,
            List<Map<String, String>> options,
            String fieldKey,
            List<String> selectedKeys,
            int maxSelection)
        multiChoice,
    required TResult Function(
            String label, String hint, String fieldKey, String? keyboardType)
        textField,
    required TResult Function(String text, String action) primaryButton,
    required TResult Function(String text, String action) secondaryButton,
    required TResult Function(String text) legal,
    required TResult Function(double size) spacer,
  }) {
    return singleChoice(question, options, fieldKey, selectedKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String subtitle)? hero,
    TResult? Function(int step, int total)? progress,
    TResult? Function(String question, List<Map<String, String>> options,
            String fieldKey, String? selectedKey)?
        singleChoice,
    TResult? Function(String question, List<Map<String, String>> options,
            String fieldKey, List<String> selectedKeys, int maxSelection)?
        multiChoice,
    TResult? Function(
            String label, String hint, String fieldKey, String? keyboardType)?
        textField,
    TResult? Function(String text, String action)? primaryButton,
    TResult? Function(String text, String action)? secondaryButton,
    TResult? Function(String text)? legal,
    TResult? Function(double size)? spacer,
  }) {
    return singleChoice?.call(question, options, fieldKey, selectedKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String subtitle)? hero,
    TResult Function(int step, int total)? progress,
    TResult Function(String question, List<Map<String, String>> options,
            String fieldKey, String? selectedKey)?
        singleChoice,
    TResult Function(String question, List<Map<String, String>> options,
            String fieldKey, List<String> selectedKeys, int maxSelection)?
        multiChoice,
    TResult Function(
            String label, String hint, String fieldKey, String? keyboardType)?
        textField,
    TResult Function(String text, String action)? primaryButton,
    TResult Function(String text, String action)? secondaryButton,
    TResult Function(String text)? legal,
    TResult Function(double size)? spacer,
    required TResult orElse(),
  }) {
    if (singleChoice != null) {
      return singleChoice(question, options, fieldKey, selectedKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnbHero value) hero,
    required TResult Function(OnbProgress value) progress,
    required TResult Function(OnbSingleChoice value) singleChoice,
    required TResult Function(OnbMultiChoice value) multiChoice,
    required TResult Function(OnbTextField value) textField,
    required TResult Function(OnbPrimaryButton value) primaryButton,
    required TResult Function(OnbSecondaryButton value) secondaryButton,
    required TResult Function(OnbLegal value) legal,
    required TResult Function(OnbSpacer value) spacer,
  }) {
    return singleChoice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnbHero value)? hero,
    TResult? Function(OnbProgress value)? progress,
    TResult? Function(OnbSingleChoice value)? singleChoice,
    TResult? Function(OnbMultiChoice value)? multiChoice,
    TResult? Function(OnbTextField value)? textField,
    TResult? Function(OnbPrimaryButton value)? primaryButton,
    TResult? Function(OnbSecondaryButton value)? secondaryButton,
    TResult? Function(OnbLegal value)? legal,
    TResult? Function(OnbSpacer value)? spacer,
  }) {
    return singleChoice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnbHero value)? hero,
    TResult Function(OnbProgress value)? progress,
    TResult Function(OnbSingleChoice value)? singleChoice,
    TResult Function(OnbMultiChoice value)? multiChoice,
    TResult Function(OnbTextField value)? textField,
    TResult Function(OnbPrimaryButton value)? primaryButton,
    TResult Function(OnbSecondaryButton value)? secondaryButton,
    TResult Function(OnbLegal value)? legal,
    TResult Function(OnbSpacer value)? spacer,
    required TResult orElse(),
  }) {
    if (singleChoice != null) {
      return singleChoice(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OnbSingleChoiceImplToJson(
      this,
    );
  }
}

abstract class OnbSingleChoice implements OnboardingComponent {
  const factory OnbSingleChoice(
      {required final String question,
      required final List<Map<String, String>> options,
      required final String fieldKey,
      final String? selectedKey}) = _$OnbSingleChoiceImpl;

  factory OnbSingleChoice.fromJson(Map<String, dynamic> json) =
      _$OnbSingleChoiceImpl.fromJson;

  String get question;
  List<Map<String, String>> get options; // [{key, label}]
  String get fieldKey;
  String? get selectedKey;

  /// Create a copy of OnboardingComponent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnbSingleChoiceImplCopyWith<_$OnbSingleChoiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnbMultiChoiceImplCopyWith<$Res> {
  factory _$$OnbMultiChoiceImplCopyWith(_$OnbMultiChoiceImpl value,
          $Res Function(_$OnbMultiChoiceImpl) then) =
      __$$OnbMultiChoiceImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String question,
      List<Map<String, String>> options,
      String fieldKey,
      List<String> selectedKeys,
      int maxSelection});
}

/// @nodoc
class __$$OnbMultiChoiceImplCopyWithImpl<$Res>
    extends _$OnboardingComponentCopyWithImpl<$Res, _$OnbMultiChoiceImpl>
    implements _$$OnbMultiChoiceImplCopyWith<$Res> {
  __$$OnbMultiChoiceImplCopyWithImpl(
      _$OnbMultiChoiceImpl _value, $Res Function(_$OnbMultiChoiceImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingComponent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? options = null,
    Object? fieldKey = null,
    Object? selectedKeys = null,
    Object? maxSelection = null,
  }) {
    return _then(_$OnbMultiChoiceImpl(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<Map<String, String>>,
      fieldKey: null == fieldKey
          ? _value.fieldKey
          : fieldKey // ignore: cast_nullable_to_non_nullable
              as String,
      selectedKeys: null == selectedKeys
          ? _value._selectedKeys
          : selectedKeys // ignore: cast_nullable_to_non_nullable
              as List<String>,
      maxSelection: null == maxSelection
          ? _value.maxSelection
          : maxSelection // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OnbMultiChoiceImpl implements OnbMultiChoice {
  const _$OnbMultiChoiceImpl(
      {required this.question,
      required final List<Map<String, String>> options,
      required this.fieldKey,
      final List<String> selectedKeys = const [],
      this.maxSelection = 2,
      final String? $type})
      : _options = options,
        _selectedKeys = selectedKeys,
        $type = $type ?? 'multiChoice';

  factory _$OnbMultiChoiceImpl.fromJson(Map<String, dynamic> json) =>
      _$$OnbMultiChoiceImplFromJson(json);

  @override
  final String question;
  final List<Map<String, String>> _options;
  @override
  List<Map<String, String>> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  final String fieldKey;
  final List<String> _selectedKeys;
  @override
  @JsonKey()
  List<String> get selectedKeys {
    if (_selectedKeys is EqualUnmodifiableListView) return _selectedKeys;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedKeys);
  }

  @override
  @JsonKey()
  final int maxSelection;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OnboardingComponent.multiChoice(question: $question, options: $options, fieldKey: $fieldKey, selectedKeys: $selectedKeys, maxSelection: $maxSelection)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnbMultiChoiceImpl &&
            (identical(other.question, question) ||
                other.question == question) &&
            const DeepCollectionEquality().equals(other._options, _options) &&
            (identical(other.fieldKey, fieldKey) ||
                other.fieldKey == fieldKey) &&
            const DeepCollectionEquality()
                .equals(other._selectedKeys, _selectedKeys) &&
            (identical(other.maxSelection, maxSelection) ||
                other.maxSelection == maxSelection));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      question,
      const DeepCollectionEquality().hash(_options),
      fieldKey,
      const DeepCollectionEquality().hash(_selectedKeys),
      maxSelection);

  /// Create a copy of OnboardingComponent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnbMultiChoiceImplCopyWith<_$OnbMultiChoiceImpl> get copyWith =>
      __$$OnbMultiChoiceImplCopyWithImpl<_$OnbMultiChoiceImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String subtitle) hero,
    required TResult Function(int step, int total) progress,
    required TResult Function(
            String question,
            List<Map<String, String>> options,
            String fieldKey,
            String? selectedKey)
        singleChoice,
    required TResult Function(
            String question,
            List<Map<String, String>> options,
            String fieldKey,
            List<String> selectedKeys,
            int maxSelection)
        multiChoice,
    required TResult Function(
            String label, String hint, String fieldKey, String? keyboardType)
        textField,
    required TResult Function(String text, String action) primaryButton,
    required TResult Function(String text, String action) secondaryButton,
    required TResult Function(String text) legal,
    required TResult Function(double size) spacer,
  }) {
    return multiChoice(question, options, fieldKey, selectedKeys, maxSelection);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String subtitle)? hero,
    TResult? Function(int step, int total)? progress,
    TResult? Function(String question, List<Map<String, String>> options,
            String fieldKey, String? selectedKey)?
        singleChoice,
    TResult? Function(String question, List<Map<String, String>> options,
            String fieldKey, List<String> selectedKeys, int maxSelection)?
        multiChoice,
    TResult? Function(
            String label, String hint, String fieldKey, String? keyboardType)?
        textField,
    TResult? Function(String text, String action)? primaryButton,
    TResult? Function(String text, String action)? secondaryButton,
    TResult? Function(String text)? legal,
    TResult? Function(double size)? spacer,
  }) {
    return multiChoice?.call(
        question, options, fieldKey, selectedKeys, maxSelection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String subtitle)? hero,
    TResult Function(int step, int total)? progress,
    TResult Function(String question, List<Map<String, String>> options,
            String fieldKey, String? selectedKey)?
        singleChoice,
    TResult Function(String question, List<Map<String, String>> options,
            String fieldKey, List<String> selectedKeys, int maxSelection)?
        multiChoice,
    TResult Function(
            String label, String hint, String fieldKey, String? keyboardType)?
        textField,
    TResult Function(String text, String action)? primaryButton,
    TResult Function(String text, String action)? secondaryButton,
    TResult Function(String text)? legal,
    TResult Function(double size)? spacer,
    required TResult orElse(),
  }) {
    if (multiChoice != null) {
      return multiChoice(
          question, options, fieldKey, selectedKeys, maxSelection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnbHero value) hero,
    required TResult Function(OnbProgress value) progress,
    required TResult Function(OnbSingleChoice value) singleChoice,
    required TResult Function(OnbMultiChoice value) multiChoice,
    required TResult Function(OnbTextField value) textField,
    required TResult Function(OnbPrimaryButton value) primaryButton,
    required TResult Function(OnbSecondaryButton value) secondaryButton,
    required TResult Function(OnbLegal value) legal,
    required TResult Function(OnbSpacer value) spacer,
  }) {
    return multiChoice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnbHero value)? hero,
    TResult? Function(OnbProgress value)? progress,
    TResult? Function(OnbSingleChoice value)? singleChoice,
    TResult? Function(OnbMultiChoice value)? multiChoice,
    TResult? Function(OnbTextField value)? textField,
    TResult? Function(OnbPrimaryButton value)? primaryButton,
    TResult? Function(OnbSecondaryButton value)? secondaryButton,
    TResult? Function(OnbLegal value)? legal,
    TResult? Function(OnbSpacer value)? spacer,
  }) {
    return multiChoice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnbHero value)? hero,
    TResult Function(OnbProgress value)? progress,
    TResult Function(OnbSingleChoice value)? singleChoice,
    TResult Function(OnbMultiChoice value)? multiChoice,
    TResult Function(OnbTextField value)? textField,
    TResult Function(OnbPrimaryButton value)? primaryButton,
    TResult Function(OnbSecondaryButton value)? secondaryButton,
    TResult Function(OnbLegal value)? legal,
    TResult Function(OnbSpacer value)? spacer,
    required TResult orElse(),
  }) {
    if (multiChoice != null) {
      return multiChoice(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OnbMultiChoiceImplToJson(
      this,
    );
  }
}

abstract class OnbMultiChoice implements OnboardingComponent {
  const factory OnbMultiChoice(
      {required final String question,
      required final List<Map<String, String>> options,
      required final String fieldKey,
      final List<String> selectedKeys,
      final int maxSelection}) = _$OnbMultiChoiceImpl;

  factory OnbMultiChoice.fromJson(Map<String, dynamic> json) =
      _$OnbMultiChoiceImpl.fromJson;

  String get question;
  List<Map<String, String>> get options;
  String get fieldKey;
  List<String> get selectedKeys;
  int get maxSelection;

  /// Create a copy of OnboardingComponent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnbMultiChoiceImplCopyWith<_$OnbMultiChoiceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnbTextFieldImplCopyWith<$Res> {
  factory _$$OnbTextFieldImplCopyWith(
          _$OnbTextFieldImpl value, $Res Function(_$OnbTextFieldImpl) then) =
      __$$OnbTextFieldImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String label, String hint, String fieldKey, String? keyboardType});
}

/// @nodoc
class __$$OnbTextFieldImplCopyWithImpl<$Res>
    extends _$OnboardingComponentCopyWithImpl<$Res, _$OnbTextFieldImpl>
    implements _$$OnbTextFieldImplCopyWith<$Res> {
  __$$OnbTextFieldImplCopyWithImpl(
      _$OnbTextFieldImpl _value, $Res Function(_$OnbTextFieldImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingComponent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? hint = null,
    Object? fieldKey = null,
    Object? keyboardType = freezed,
  }) {
    return _then(_$OnbTextFieldImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      hint: null == hint
          ? _value.hint
          : hint // ignore: cast_nullable_to_non_nullable
              as String,
      fieldKey: null == fieldKey
          ? _value.fieldKey
          : fieldKey // ignore: cast_nullable_to_non_nullable
              as String,
      keyboardType: freezed == keyboardType
          ? _value.keyboardType
          : keyboardType // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OnbTextFieldImpl implements OnbTextField {
  const _$OnbTextFieldImpl(
      {required this.label,
      required this.hint,
      required this.fieldKey,
      this.keyboardType,
      final String? $type})
      : $type = $type ?? 'textField';

  factory _$OnbTextFieldImpl.fromJson(Map<String, dynamic> json) =>
      _$$OnbTextFieldImplFromJson(json);

  @override
  final String label;
  @override
  final String hint;
  @override
  final String fieldKey;
  @override
  final String? keyboardType;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OnboardingComponent.textField(label: $label, hint: $hint, fieldKey: $fieldKey, keyboardType: $keyboardType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnbTextFieldImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.hint, hint) || other.hint == hint) &&
            (identical(other.fieldKey, fieldKey) ||
                other.fieldKey == fieldKey) &&
            (identical(other.keyboardType, keyboardType) ||
                other.keyboardType == keyboardType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, label, hint, fieldKey, keyboardType);

  /// Create a copy of OnboardingComponent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnbTextFieldImplCopyWith<_$OnbTextFieldImpl> get copyWith =>
      __$$OnbTextFieldImplCopyWithImpl<_$OnbTextFieldImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String subtitle) hero,
    required TResult Function(int step, int total) progress,
    required TResult Function(
            String question,
            List<Map<String, String>> options,
            String fieldKey,
            String? selectedKey)
        singleChoice,
    required TResult Function(
            String question,
            List<Map<String, String>> options,
            String fieldKey,
            List<String> selectedKeys,
            int maxSelection)
        multiChoice,
    required TResult Function(
            String label, String hint, String fieldKey, String? keyboardType)
        textField,
    required TResult Function(String text, String action) primaryButton,
    required TResult Function(String text, String action) secondaryButton,
    required TResult Function(String text) legal,
    required TResult Function(double size) spacer,
  }) {
    return textField(label, hint, fieldKey, keyboardType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String subtitle)? hero,
    TResult? Function(int step, int total)? progress,
    TResult? Function(String question, List<Map<String, String>> options,
            String fieldKey, String? selectedKey)?
        singleChoice,
    TResult? Function(String question, List<Map<String, String>> options,
            String fieldKey, List<String> selectedKeys, int maxSelection)?
        multiChoice,
    TResult? Function(
            String label, String hint, String fieldKey, String? keyboardType)?
        textField,
    TResult? Function(String text, String action)? primaryButton,
    TResult? Function(String text, String action)? secondaryButton,
    TResult? Function(String text)? legal,
    TResult? Function(double size)? spacer,
  }) {
    return textField?.call(label, hint, fieldKey, keyboardType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String subtitle)? hero,
    TResult Function(int step, int total)? progress,
    TResult Function(String question, List<Map<String, String>> options,
            String fieldKey, String? selectedKey)?
        singleChoice,
    TResult Function(String question, List<Map<String, String>> options,
            String fieldKey, List<String> selectedKeys, int maxSelection)?
        multiChoice,
    TResult Function(
            String label, String hint, String fieldKey, String? keyboardType)?
        textField,
    TResult Function(String text, String action)? primaryButton,
    TResult Function(String text, String action)? secondaryButton,
    TResult Function(String text)? legal,
    TResult Function(double size)? spacer,
    required TResult orElse(),
  }) {
    if (textField != null) {
      return textField(label, hint, fieldKey, keyboardType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnbHero value) hero,
    required TResult Function(OnbProgress value) progress,
    required TResult Function(OnbSingleChoice value) singleChoice,
    required TResult Function(OnbMultiChoice value) multiChoice,
    required TResult Function(OnbTextField value) textField,
    required TResult Function(OnbPrimaryButton value) primaryButton,
    required TResult Function(OnbSecondaryButton value) secondaryButton,
    required TResult Function(OnbLegal value) legal,
    required TResult Function(OnbSpacer value) spacer,
  }) {
    return textField(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnbHero value)? hero,
    TResult? Function(OnbProgress value)? progress,
    TResult? Function(OnbSingleChoice value)? singleChoice,
    TResult? Function(OnbMultiChoice value)? multiChoice,
    TResult? Function(OnbTextField value)? textField,
    TResult? Function(OnbPrimaryButton value)? primaryButton,
    TResult? Function(OnbSecondaryButton value)? secondaryButton,
    TResult? Function(OnbLegal value)? legal,
    TResult? Function(OnbSpacer value)? spacer,
  }) {
    return textField?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnbHero value)? hero,
    TResult Function(OnbProgress value)? progress,
    TResult Function(OnbSingleChoice value)? singleChoice,
    TResult Function(OnbMultiChoice value)? multiChoice,
    TResult Function(OnbTextField value)? textField,
    TResult Function(OnbPrimaryButton value)? primaryButton,
    TResult Function(OnbSecondaryButton value)? secondaryButton,
    TResult Function(OnbLegal value)? legal,
    TResult Function(OnbSpacer value)? spacer,
    required TResult orElse(),
  }) {
    if (textField != null) {
      return textField(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OnbTextFieldImplToJson(
      this,
    );
  }
}

abstract class OnbTextField implements OnboardingComponent {
  const factory OnbTextField(
      {required final String label,
      required final String hint,
      required final String fieldKey,
      final String? keyboardType}) = _$OnbTextFieldImpl;

  factory OnbTextField.fromJson(Map<String, dynamic> json) =
      _$OnbTextFieldImpl.fromJson;

  String get label;
  String get hint;
  String get fieldKey;
  String? get keyboardType;

  /// Create a copy of OnboardingComponent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnbTextFieldImplCopyWith<_$OnbTextFieldImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnbPrimaryButtonImplCopyWith<$Res> {
  factory _$$OnbPrimaryButtonImplCopyWith(_$OnbPrimaryButtonImpl value,
          $Res Function(_$OnbPrimaryButtonImpl) then) =
      __$$OnbPrimaryButtonImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text, String action});
}

/// @nodoc
class __$$OnbPrimaryButtonImplCopyWithImpl<$Res>
    extends _$OnboardingComponentCopyWithImpl<$Res, _$OnbPrimaryButtonImpl>
    implements _$$OnbPrimaryButtonImplCopyWith<$Res> {
  __$$OnbPrimaryButtonImplCopyWithImpl(_$OnbPrimaryButtonImpl _value,
      $Res Function(_$OnbPrimaryButtonImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingComponent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? action = null,
  }) {
    return _then(_$OnbPrimaryButtonImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OnbPrimaryButtonImpl implements OnbPrimaryButton {
  const _$OnbPrimaryButtonImpl(
      {required this.text, required this.action, final String? $type})
      : $type = $type ?? 'primaryButton';

  factory _$OnbPrimaryButtonImpl.fromJson(Map<String, dynamic> json) =>
      _$$OnbPrimaryButtonImplFromJson(json);

  @override
  final String text;
  @override
  final String action;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OnboardingComponent.primaryButton(text: $text, action: $action)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnbPrimaryButtonImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.action, action) || other.action == action));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, action);

  /// Create a copy of OnboardingComponent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnbPrimaryButtonImplCopyWith<_$OnbPrimaryButtonImpl> get copyWith =>
      __$$OnbPrimaryButtonImplCopyWithImpl<_$OnbPrimaryButtonImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String subtitle) hero,
    required TResult Function(int step, int total) progress,
    required TResult Function(
            String question,
            List<Map<String, String>> options,
            String fieldKey,
            String? selectedKey)
        singleChoice,
    required TResult Function(
            String question,
            List<Map<String, String>> options,
            String fieldKey,
            List<String> selectedKeys,
            int maxSelection)
        multiChoice,
    required TResult Function(
            String label, String hint, String fieldKey, String? keyboardType)
        textField,
    required TResult Function(String text, String action) primaryButton,
    required TResult Function(String text, String action) secondaryButton,
    required TResult Function(String text) legal,
    required TResult Function(double size) spacer,
  }) {
    return primaryButton(text, action);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String subtitle)? hero,
    TResult? Function(int step, int total)? progress,
    TResult? Function(String question, List<Map<String, String>> options,
            String fieldKey, String? selectedKey)?
        singleChoice,
    TResult? Function(String question, List<Map<String, String>> options,
            String fieldKey, List<String> selectedKeys, int maxSelection)?
        multiChoice,
    TResult? Function(
            String label, String hint, String fieldKey, String? keyboardType)?
        textField,
    TResult? Function(String text, String action)? primaryButton,
    TResult? Function(String text, String action)? secondaryButton,
    TResult? Function(String text)? legal,
    TResult? Function(double size)? spacer,
  }) {
    return primaryButton?.call(text, action);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String subtitle)? hero,
    TResult Function(int step, int total)? progress,
    TResult Function(String question, List<Map<String, String>> options,
            String fieldKey, String? selectedKey)?
        singleChoice,
    TResult Function(String question, List<Map<String, String>> options,
            String fieldKey, List<String> selectedKeys, int maxSelection)?
        multiChoice,
    TResult Function(
            String label, String hint, String fieldKey, String? keyboardType)?
        textField,
    TResult Function(String text, String action)? primaryButton,
    TResult Function(String text, String action)? secondaryButton,
    TResult Function(String text)? legal,
    TResult Function(double size)? spacer,
    required TResult orElse(),
  }) {
    if (primaryButton != null) {
      return primaryButton(text, action);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnbHero value) hero,
    required TResult Function(OnbProgress value) progress,
    required TResult Function(OnbSingleChoice value) singleChoice,
    required TResult Function(OnbMultiChoice value) multiChoice,
    required TResult Function(OnbTextField value) textField,
    required TResult Function(OnbPrimaryButton value) primaryButton,
    required TResult Function(OnbSecondaryButton value) secondaryButton,
    required TResult Function(OnbLegal value) legal,
    required TResult Function(OnbSpacer value) spacer,
  }) {
    return primaryButton(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnbHero value)? hero,
    TResult? Function(OnbProgress value)? progress,
    TResult? Function(OnbSingleChoice value)? singleChoice,
    TResult? Function(OnbMultiChoice value)? multiChoice,
    TResult? Function(OnbTextField value)? textField,
    TResult? Function(OnbPrimaryButton value)? primaryButton,
    TResult? Function(OnbSecondaryButton value)? secondaryButton,
    TResult? Function(OnbLegal value)? legal,
    TResult? Function(OnbSpacer value)? spacer,
  }) {
    return primaryButton?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnbHero value)? hero,
    TResult Function(OnbProgress value)? progress,
    TResult Function(OnbSingleChoice value)? singleChoice,
    TResult Function(OnbMultiChoice value)? multiChoice,
    TResult Function(OnbTextField value)? textField,
    TResult Function(OnbPrimaryButton value)? primaryButton,
    TResult Function(OnbSecondaryButton value)? secondaryButton,
    TResult Function(OnbLegal value)? legal,
    TResult Function(OnbSpacer value)? spacer,
    required TResult orElse(),
  }) {
    if (primaryButton != null) {
      return primaryButton(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OnbPrimaryButtonImplToJson(
      this,
    );
  }
}

abstract class OnbPrimaryButton implements OnboardingComponent {
  const factory OnbPrimaryButton(
      {required final String text,
      required final String action}) = _$OnbPrimaryButtonImpl;

  factory OnbPrimaryButton.fromJson(Map<String, dynamic> json) =
      _$OnbPrimaryButtonImpl.fromJson;

  String get text;
  String get action;

  /// Create a copy of OnboardingComponent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnbPrimaryButtonImplCopyWith<_$OnbPrimaryButtonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnbSecondaryButtonImplCopyWith<$Res> {
  factory _$$OnbSecondaryButtonImplCopyWith(_$OnbSecondaryButtonImpl value,
          $Res Function(_$OnbSecondaryButtonImpl) then) =
      __$$OnbSecondaryButtonImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text, String action});
}

/// @nodoc
class __$$OnbSecondaryButtonImplCopyWithImpl<$Res>
    extends _$OnboardingComponentCopyWithImpl<$Res, _$OnbSecondaryButtonImpl>
    implements _$$OnbSecondaryButtonImplCopyWith<$Res> {
  __$$OnbSecondaryButtonImplCopyWithImpl(_$OnbSecondaryButtonImpl _value,
      $Res Function(_$OnbSecondaryButtonImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingComponent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
    Object? action = null,
  }) {
    return _then(_$OnbSecondaryButtonImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
      action: null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OnbSecondaryButtonImpl implements OnbSecondaryButton {
  const _$OnbSecondaryButtonImpl(
      {required this.text, required this.action, final String? $type})
      : $type = $type ?? 'secondaryButton';

  factory _$OnbSecondaryButtonImpl.fromJson(Map<String, dynamic> json) =>
      _$$OnbSecondaryButtonImplFromJson(json);

  @override
  final String text;
  @override
  final String action;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OnboardingComponent.secondaryButton(text: $text, action: $action)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnbSecondaryButtonImpl &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.action, action) || other.action == action));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text, action);

  /// Create a copy of OnboardingComponent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnbSecondaryButtonImplCopyWith<_$OnbSecondaryButtonImpl> get copyWith =>
      __$$OnbSecondaryButtonImplCopyWithImpl<_$OnbSecondaryButtonImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String subtitle) hero,
    required TResult Function(int step, int total) progress,
    required TResult Function(
            String question,
            List<Map<String, String>> options,
            String fieldKey,
            String? selectedKey)
        singleChoice,
    required TResult Function(
            String question,
            List<Map<String, String>> options,
            String fieldKey,
            List<String> selectedKeys,
            int maxSelection)
        multiChoice,
    required TResult Function(
            String label, String hint, String fieldKey, String? keyboardType)
        textField,
    required TResult Function(String text, String action) primaryButton,
    required TResult Function(String text, String action) secondaryButton,
    required TResult Function(String text) legal,
    required TResult Function(double size) spacer,
  }) {
    return secondaryButton(text, action);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String subtitle)? hero,
    TResult? Function(int step, int total)? progress,
    TResult? Function(String question, List<Map<String, String>> options,
            String fieldKey, String? selectedKey)?
        singleChoice,
    TResult? Function(String question, List<Map<String, String>> options,
            String fieldKey, List<String> selectedKeys, int maxSelection)?
        multiChoice,
    TResult? Function(
            String label, String hint, String fieldKey, String? keyboardType)?
        textField,
    TResult? Function(String text, String action)? primaryButton,
    TResult? Function(String text, String action)? secondaryButton,
    TResult? Function(String text)? legal,
    TResult? Function(double size)? spacer,
  }) {
    return secondaryButton?.call(text, action);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String subtitle)? hero,
    TResult Function(int step, int total)? progress,
    TResult Function(String question, List<Map<String, String>> options,
            String fieldKey, String? selectedKey)?
        singleChoice,
    TResult Function(String question, List<Map<String, String>> options,
            String fieldKey, List<String> selectedKeys, int maxSelection)?
        multiChoice,
    TResult Function(
            String label, String hint, String fieldKey, String? keyboardType)?
        textField,
    TResult Function(String text, String action)? primaryButton,
    TResult Function(String text, String action)? secondaryButton,
    TResult Function(String text)? legal,
    TResult Function(double size)? spacer,
    required TResult orElse(),
  }) {
    if (secondaryButton != null) {
      return secondaryButton(text, action);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnbHero value) hero,
    required TResult Function(OnbProgress value) progress,
    required TResult Function(OnbSingleChoice value) singleChoice,
    required TResult Function(OnbMultiChoice value) multiChoice,
    required TResult Function(OnbTextField value) textField,
    required TResult Function(OnbPrimaryButton value) primaryButton,
    required TResult Function(OnbSecondaryButton value) secondaryButton,
    required TResult Function(OnbLegal value) legal,
    required TResult Function(OnbSpacer value) spacer,
  }) {
    return secondaryButton(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnbHero value)? hero,
    TResult? Function(OnbProgress value)? progress,
    TResult? Function(OnbSingleChoice value)? singleChoice,
    TResult? Function(OnbMultiChoice value)? multiChoice,
    TResult? Function(OnbTextField value)? textField,
    TResult? Function(OnbPrimaryButton value)? primaryButton,
    TResult? Function(OnbSecondaryButton value)? secondaryButton,
    TResult? Function(OnbLegal value)? legal,
    TResult? Function(OnbSpacer value)? spacer,
  }) {
    return secondaryButton?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnbHero value)? hero,
    TResult Function(OnbProgress value)? progress,
    TResult Function(OnbSingleChoice value)? singleChoice,
    TResult Function(OnbMultiChoice value)? multiChoice,
    TResult Function(OnbTextField value)? textField,
    TResult Function(OnbPrimaryButton value)? primaryButton,
    TResult Function(OnbSecondaryButton value)? secondaryButton,
    TResult Function(OnbLegal value)? legal,
    TResult Function(OnbSpacer value)? spacer,
    required TResult orElse(),
  }) {
    if (secondaryButton != null) {
      return secondaryButton(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OnbSecondaryButtonImplToJson(
      this,
    );
  }
}

abstract class OnbSecondaryButton implements OnboardingComponent {
  const factory OnbSecondaryButton(
      {required final String text,
      required final String action}) = _$OnbSecondaryButtonImpl;

  factory OnbSecondaryButton.fromJson(Map<String, dynamic> json) =
      _$OnbSecondaryButtonImpl.fromJson;

  String get text;
  String get action;

  /// Create a copy of OnboardingComponent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnbSecondaryButtonImplCopyWith<_$OnbSecondaryButtonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnbLegalImplCopyWith<$Res> {
  factory _$$OnbLegalImplCopyWith(
          _$OnbLegalImpl value, $Res Function(_$OnbLegalImpl) then) =
      __$$OnbLegalImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String text});
}

/// @nodoc
class __$$OnbLegalImplCopyWithImpl<$Res>
    extends _$OnboardingComponentCopyWithImpl<$Res, _$OnbLegalImpl>
    implements _$$OnbLegalImplCopyWith<$Res> {
  __$$OnbLegalImplCopyWithImpl(
      _$OnbLegalImpl _value, $Res Function(_$OnbLegalImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingComponent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? text = null,
  }) {
    return _then(_$OnbLegalImpl(
      text: null == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OnbLegalImpl implements OnbLegal {
  const _$OnbLegalImpl({required this.text, final String? $type})
      : $type = $type ?? 'legal';

  factory _$OnbLegalImpl.fromJson(Map<String, dynamic> json) =>
      _$$OnbLegalImplFromJson(json);

  @override
  final String text;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OnboardingComponent.legal(text: $text)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnbLegalImpl &&
            (identical(other.text, text) || other.text == text));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, text);

  /// Create a copy of OnboardingComponent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnbLegalImplCopyWith<_$OnbLegalImpl> get copyWith =>
      __$$OnbLegalImplCopyWithImpl<_$OnbLegalImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String subtitle) hero,
    required TResult Function(int step, int total) progress,
    required TResult Function(
            String question,
            List<Map<String, String>> options,
            String fieldKey,
            String? selectedKey)
        singleChoice,
    required TResult Function(
            String question,
            List<Map<String, String>> options,
            String fieldKey,
            List<String> selectedKeys,
            int maxSelection)
        multiChoice,
    required TResult Function(
            String label, String hint, String fieldKey, String? keyboardType)
        textField,
    required TResult Function(String text, String action) primaryButton,
    required TResult Function(String text, String action) secondaryButton,
    required TResult Function(String text) legal,
    required TResult Function(double size) spacer,
  }) {
    return legal(text);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String subtitle)? hero,
    TResult? Function(int step, int total)? progress,
    TResult? Function(String question, List<Map<String, String>> options,
            String fieldKey, String? selectedKey)?
        singleChoice,
    TResult? Function(String question, List<Map<String, String>> options,
            String fieldKey, List<String> selectedKeys, int maxSelection)?
        multiChoice,
    TResult? Function(
            String label, String hint, String fieldKey, String? keyboardType)?
        textField,
    TResult? Function(String text, String action)? primaryButton,
    TResult? Function(String text, String action)? secondaryButton,
    TResult? Function(String text)? legal,
    TResult? Function(double size)? spacer,
  }) {
    return legal?.call(text);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String subtitle)? hero,
    TResult Function(int step, int total)? progress,
    TResult Function(String question, List<Map<String, String>> options,
            String fieldKey, String? selectedKey)?
        singleChoice,
    TResult Function(String question, List<Map<String, String>> options,
            String fieldKey, List<String> selectedKeys, int maxSelection)?
        multiChoice,
    TResult Function(
            String label, String hint, String fieldKey, String? keyboardType)?
        textField,
    TResult Function(String text, String action)? primaryButton,
    TResult Function(String text, String action)? secondaryButton,
    TResult Function(String text)? legal,
    TResult Function(double size)? spacer,
    required TResult orElse(),
  }) {
    if (legal != null) {
      return legal(text);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnbHero value) hero,
    required TResult Function(OnbProgress value) progress,
    required TResult Function(OnbSingleChoice value) singleChoice,
    required TResult Function(OnbMultiChoice value) multiChoice,
    required TResult Function(OnbTextField value) textField,
    required TResult Function(OnbPrimaryButton value) primaryButton,
    required TResult Function(OnbSecondaryButton value) secondaryButton,
    required TResult Function(OnbLegal value) legal,
    required TResult Function(OnbSpacer value) spacer,
  }) {
    return legal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnbHero value)? hero,
    TResult? Function(OnbProgress value)? progress,
    TResult? Function(OnbSingleChoice value)? singleChoice,
    TResult? Function(OnbMultiChoice value)? multiChoice,
    TResult? Function(OnbTextField value)? textField,
    TResult? Function(OnbPrimaryButton value)? primaryButton,
    TResult? Function(OnbSecondaryButton value)? secondaryButton,
    TResult? Function(OnbLegal value)? legal,
    TResult? Function(OnbSpacer value)? spacer,
  }) {
    return legal?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnbHero value)? hero,
    TResult Function(OnbProgress value)? progress,
    TResult Function(OnbSingleChoice value)? singleChoice,
    TResult Function(OnbMultiChoice value)? multiChoice,
    TResult Function(OnbTextField value)? textField,
    TResult Function(OnbPrimaryButton value)? primaryButton,
    TResult Function(OnbSecondaryButton value)? secondaryButton,
    TResult Function(OnbLegal value)? legal,
    TResult Function(OnbSpacer value)? spacer,
    required TResult orElse(),
  }) {
    if (legal != null) {
      return legal(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OnbLegalImplToJson(
      this,
    );
  }
}

abstract class OnbLegal implements OnboardingComponent {
  const factory OnbLegal({required final String text}) = _$OnbLegalImpl;

  factory OnbLegal.fromJson(Map<String, dynamic> json) =
      _$OnbLegalImpl.fromJson;

  String get text;

  /// Create a copy of OnboardingComponent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnbLegalImplCopyWith<_$OnbLegalImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OnbSpacerImplCopyWith<$Res> {
  factory _$$OnbSpacerImplCopyWith(
          _$OnbSpacerImpl value, $Res Function(_$OnbSpacerImpl) then) =
      __$$OnbSpacerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double size});
}

/// @nodoc
class __$$OnbSpacerImplCopyWithImpl<$Res>
    extends _$OnboardingComponentCopyWithImpl<$Res, _$OnbSpacerImpl>
    implements _$$OnbSpacerImplCopyWith<$Res> {
  __$$OnbSpacerImplCopyWithImpl(
      _$OnbSpacerImpl _value, $Res Function(_$OnbSpacerImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnboardingComponent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? size = null,
  }) {
    return _then(_$OnbSpacerImpl(
      size: null == size
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OnbSpacerImpl implements OnbSpacer {
  const _$OnbSpacerImpl({required this.size, final String? $type})
      : $type = $type ?? 'spacer';

  factory _$OnbSpacerImpl.fromJson(Map<String, dynamic> json) =>
      _$$OnbSpacerImplFromJson(json);

  @override
  final double size;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'OnboardingComponent.spacer(size: $size)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnbSpacerImpl &&
            (identical(other.size, size) || other.size == size));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, size);

  /// Create a copy of OnboardingComponent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnbSpacerImplCopyWith<_$OnbSpacerImpl> get copyWith =>
      __$$OnbSpacerImplCopyWithImpl<_$OnbSpacerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title, String subtitle) hero,
    required TResult Function(int step, int total) progress,
    required TResult Function(
            String question,
            List<Map<String, String>> options,
            String fieldKey,
            String? selectedKey)
        singleChoice,
    required TResult Function(
            String question,
            List<Map<String, String>> options,
            String fieldKey,
            List<String> selectedKeys,
            int maxSelection)
        multiChoice,
    required TResult Function(
            String label, String hint, String fieldKey, String? keyboardType)
        textField,
    required TResult Function(String text, String action) primaryButton,
    required TResult Function(String text, String action) secondaryButton,
    required TResult Function(String text) legal,
    required TResult Function(double size) spacer,
  }) {
    return spacer(size);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title, String subtitle)? hero,
    TResult? Function(int step, int total)? progress,
    TResult? Function(String question, List<Map<String, String>> options,
            String fieldKey, String? selectedKey)?
        singleChoice,
    TResult? Function(String question, List<Map<String, String>> options,
            String fieldKey, List<String> selectedKeys, int maxSelection)?
        multiChoice,
    TResult? Function(
            String label, String hint, String fieldKey, String? keyboardType)?
        textField,
    TResult? Function(String text, String action)? primaryButton,
    TResult? Function(String text, String action)? secondaryButton,
    TResult? Function(String text)? legal,
    TResult? Function(double size)? spacer,
  }) {
    return spacer?.call(size);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title, String subtitle)? hero,
    TResult Function(int step, int total)? progress,
    TResult Function(String question, List<Map<String, String>> options,
            String fieldKey, String? selectedKey)?
        singleChoice,
    TResult Function(String question, List<Map<String, String>> options,
            String fieldKey, List<String> selectedKeys, int maxSelection)?
        multiChoice,
    TResult Function(
            String label, String hint, String fieldKey, String? keyboardType)?
        textField,
    TResult Function(String text, String action)? primaryButton,
    TResult Function(String text, String action)? secondaryButton,
    TResult Function(String text)? legal,
    TResult Function(double size)? spacer,
    required TResult orElse(),
  }) {
    if (spacer != null) {
      return spacer(size);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(OnbHero value) hero,
    required TResult Function(OnbProgress value) progress,
    required TResult Function(OnbSingleChoice value) singleChoice,
    required TResult Function(OnbMultiChoice value) multiChoice,
    required TResult Function(OnbTextField value) textField,
    required TResult Function(OnbPrimaryButton value) primaryButton,
    required TResult Function(OnbSecondaryButton value) secondaryButton,
    required TResult Function(OnbLegal value) legal,
    required TResult Function(OnbSpacer value) spacer,
  }) {
    return spacer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(OnbHero value)? hero,
    TResult? Function(OnbProgress value)? progress,
    TResult? Function(OnbSingleChoice value)? singleChoice,
    TResult? Function(OnbMultiChoice value)? multiChoice,
    TResult? Function(OnbTextField value)? textField,
    TResult? Function(OnbPrimaryButton value)? primaryButton,
    TResult? Function(OnbSecondaryButton value)? secondaryButton,
    TResult? Function(OnbLegal value)? legal,
    TResult? Function(OnbSpacer value)? spacer,
  }) {
    return spacer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(OnbHero value)? hero,
    TResult Function(OnbProgress value)? progress,
    TResult Function(OnbSingleChoice value)? singleChoice,
    TResult Function(OnbMultiChoice value)? multiChoice,
    TResult Function(OnbTextField value)? textField,
    TResult Function(OnbPrimaryButton value)? primaryButton,
    TResult Function(OnbSecondaryButton value)? secondaryButton,
    TResult Function(OnbLegal value)? legal,
    TResult Function(OnbSpacer value)? spacer,
    required TResult orElse(),
  }) {
    if (spacer != null) {
      return spacer(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OnbSpacerImplToJson(
      this,
    );
  }
}

abstract class OnbSpacer implements OnboardingComponent {
  const factory OnbSpacer({required final double size}) = _$OnbSpacerImpl;

  factory OnbSpacer.fromJson(Map<String, dynamic> json) =
      _$OnbSpacerImpl.fromJson;

  double get size;

  /// Create a copy of OnboardingComponent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnbSpacerImplCopyWith<_$OnbSpacerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
