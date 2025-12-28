// How to Run:
// flutter run --dart-define=GEMINI_API_KEY=YOUR_KEY

import 'package:flutter/material.dart';
import 'package:genui_onboarding_clean/app/plan_my_trip_app.dart';

void main() {
  const apiKey = String.fromEnvironment('GEMINI_API_KEY');
  runApp(const PlanMyTripApp(apiKey: apiKey));
}
