import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_event.freezed.dart';
part 'onboarding_event.g.dart';

enum OnboardingEventType { selectOption, enterText, pressAction }

@freezed
class OnboardingEvent with _$OnboardingEvent {
  const factory OnboardingEvent({
    required OnboardingEventType type,
    String? fieldKey,
    dynamic value, // String or List<String>
    required DateTime timestamp,
    required String replyToSurfaceId,
  }) = _OnboardingEvent;

  factory OnboardingEvent.fromJson(Map<String, dynamic> json) =>
      _$OnboardingEventFromJson(json);
}
