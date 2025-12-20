enum OnboardingActionType {
  next,
  back,
  reset,
  finish,
  request_push_permission,
  request_calendar_permission,
}

extension OnboardingActionTypeEx on OnboardingActionType {
  static OnboardingActionType fromString(String val) {
    return OnboardingActionType.values.firstWhere(
      (e) => e.name == val,
      orElse: () => OnboardingActionType.next,
    );
  }
}
