import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_component.freezed.dart';
part 'onboarding_component.g.dart';

@freezed
class OnboardingComponent with _$OnboardingComponent {
  const factory OnboardingComponent.hero({
    required String title,
    required String subtitle,
  }) = OnbHero;

  const factory OnboardingComponent.progress({
    required int step,
    required int total,
  }) = OnbProgress;

  const factory OnboardingComponent.singleChoice({
    required String question,
    required List<Map<String, String>> options, // [{key, label}]
    required String fieldKey,
    String? selectedKey,
  }) = OnbSingleChoice;

  const factory OnboardingComponent.multiChoice({
    required String question,
    required List<Map<String, String>> options,
    required String fieldKey,
    @Default([]) List<String> selectedKeys,
    @Default(2) int maxSelection,
  }) = OnbMultiChoice;

  const factory OnboardingComponent.textField({
    required String label,
    required String hint,
    required String fieldKey,
    String? keyboardType,
  }) = OnbTextField;

  const factory OnboardingComponent.primaryButton({
    required String text,
    required String action, // OnboardingAction stringified
  }) = OnbPrimaryButton;

  const factory OnboardingComponent.secondaryButton({
    required String text,
    required String action,
  }) = OnbSecondaryButton;

  const factory OnboardingComponent.legal({required String text}) = OnbLegal;

  const factory OnboardingComponent.spacer({required double size}) = OnbSpacer;

  factory OnboardingComponent.fromJson(Map<String, dynamic> json) =>
      _$OnboardingComponentFromJson(json);
}
