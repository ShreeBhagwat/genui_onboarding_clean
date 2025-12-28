import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:genui_onboarding_clean/features/planner/planner_screen.dart';

class PlanMyTripApp extends StatelessWidget {
  final String apiKey;

  const PlanMyTripApp({super.key, required this.apiKey});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PlanMyTrip',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
        textTheme: GoogleFonts.outfitTextTheme(),
      ),
      home: apiKey.isEmpty
          ? const _MissingKeyScreen()
          : PlannerScreen(apiKey: apiKey),
    );
  }
}

class _MissingKeyScreen extends StatelessWidget {
  const _MissingKeyScreen();

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(24),
          child: Text(
            'Missing GEMINI_API_KEY.\n\nRun with:\nflutter run --dart-define=GEMINI_API_KEY=YOUR_KEY',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 16),
          ),
        ),
      ),
    );
  }
}
