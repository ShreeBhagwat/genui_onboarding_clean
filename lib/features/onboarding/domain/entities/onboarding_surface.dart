import 'package:freezed_annotation/freezed_annotation.dart';
import 'onboarding_component.dart';

part 'onboarding_surface.freezed.dart';
part 'onboarding_surface.g.dart';

@freezed
class OnboardingSurface with _$OnboardingSurface {
  const factory OnboardingSurface({
    required String id,
    required int stepIndex,
    required int totalSteps,
    String? surfaceTitle,
    required List<OnboardingComponent> components,
  }) = _OnboardingSurface;

  factory OnboardingSurface.fromJson(Map<String, dynamic> json) =>
      _$OnboardingSurfaceFromJson(json);
}
