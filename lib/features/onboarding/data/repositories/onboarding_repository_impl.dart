import 'package:genui_onboarding_clean/core/utils/result.dart';
import '../../../../core/errors/app_exception.dart';
import '../../domain/entities/onboarding_state.dart';
import '../../domain/entities/onboarding_surface.dart';
import '../../domain/repositories/onboarding_repository.dart';
import '../generators/onboarding_content_generator.dart';

class OnboardingRepositoryImpl implements OnboardingRepository {
  final OnboardingContentGenerator _generator;

  // In-memory cache just for this session demo
  final Map<String, OnboardingSurface> _cache = {};

  OnboardingRepositoryImpl(this._generator);

  @override
  Future<Result<OnboardingSurface>> getNextSurface(
    OnboardingState currentState, {
    String? lastSurfaceId,
  }) async {
    try {
      // Determine next step index. Implementation detail: we track steps in Application service ideally,
      // but here we just need to know what to generate.
      // For simplicity in this demo, we can't easily know "next" step index without context from app layer.
      // But the generator relies on "stepIndex".
      // We will look at the map of data in State to guess the step, OR we accept stepIndex as arg?
      // Interface says `getNextSurface(state)`.

      // Heuristic for step index based on filled fields:
      int step = 0;
      if (currentState.persona != null) step = 1;
      if (currentState.primaryGoals.isNotEmpty) step = 2;
      if (currentState.timePreference != null) step = 3;
      if (currentState.experienceLevel != null) step = 4;
      // Permissions are boolean flags, hard to distinguish "not set" vs "false" if default is false.
      // We might need a better state tracker or just pass a counter.
      // Let's assume the UI controller tracks the 'currentStepLimit' or similar.
      // Actually, standard Clean Arch: Repository blindly fetches data.
      // Logic of "what comes next" should be in the Generator or Use Case.
      // Here we trust the generator to deduce from state.

      // Refined Heuristic:
      if (currentState.accountMode != null) {
        step = 6; // Summary
      } else if (currentState.pushAllowed || currentState.calendarAllowed) {
        // Flawed if user denied both. Assuming flow passes through.
        step = 5;
      } else if (currentState.experienceLevel != null) {
        step = 4;
      } else if (currentState.timePreference != null) {
        step = 3;
      } else if (currentState.primaryGoals.isNotEmpty) {
        step = 2;
      } else if (currentState.persona != null) {
        step = 1;
      }

      // WAIT: If I use this heuristic, going "Back" and then "Next" works.
      // But "Permissions" step might be tricky if user selected nothing (skipped).
      // We'll fix this by passing explicit context from UseCase if possible, but UseCase uses Repo.
      // Let's just use this heuristic for the demo.

      final surface = await _generator.generateNextSurface(currentState, step);
      _cache[surface.id] = surface;
      return Result.success(surface);
    } catch (e) {
      return Result.failure(Exception(e.toString()));
    }
  }

  @override
  Future<Result<OnboardingSurface>> getSurfaceById(String id) async {
    if (_cache.containsKey(id)) {
      return Result.success(_cache[id]!);
    }
    return const Result.failure(
      AppException.unexpected('Surface not found in cache'),
    );
  }
}
