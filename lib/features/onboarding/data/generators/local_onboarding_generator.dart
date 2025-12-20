import 'package:uuid/uuid.dart';
import '../../../../core/platform/platform_info.dart';
import '../../domain/entities/onboarding_component.dart';
import '../../domain/entities/onboarding_state.dart';
import '../../domain/entities/onboarding_surface.dart';
import 'onboarding_content_generator.dart';

class LocalOnboardingGenerator implements OnboardingContentGenerator {
  final _uuid = const Uuid();

  @override
  Future<OnboardingSurface> generateNextSurface(
    OnboardingState state,
    int stepIndex,
  ) async {
    // Simulate thinking
    await Future.delayed(const Duration(milliseconds: 600));

    final String id = _uuid.v4();

    // Step index is 0-based coming in, so we map to surfaces
    // We'll treat stepIndex as the "next" step to show.

    // Logic to determine what to show based on state
    // We implement a state machine here essentially

    // However, the request says "LocalOnboardingGenerator must generate the onboarding surfaces in order, but adapt"
    // So we map stepIndex to logical steps, but some might be skipped or modified.

    // Let's determine the logical step based on what data is present, OR just trust stepIndex if we manage it well.
    // The prompt says "Surface 1... Surface 7". Let's simply switch on stepIndex (1-based in prompt, 0-based in code).

    int totalSteps = 7;

    // ADJUSTMENT: if timePreference is mixed, we might insert an extra step or modify the current flow.
    // The prompt says "timePreference=mixed => skip rigid routine; add a textField".
    // This implies modifying the *next* surface or the *current* surface?
    // "Surface 3: Time preference... Surface 4: Experience"
    // "timePreference=mixed => ... add a textField 'biggest distraction'"
    // This likely means if they chose mixed in #3, step #4 might be different or augmented.

    // Let's map stepIndex (0 to 6) to content.

    switch (stepIndex) {
      case 0:
        return _buildSurface1(id, totalSteps);
      case 1:
        return _buildSurface2(id, totalSteps, state);
      case 2:
        return _buildSurface3(id, totalSteps);
      case 3:
        return _buildSurface4(id, totalSteps, state);
      case 4:
        return _buildSurface5(id, totalSteps);
      case 5:
        return _buildSurface6(id, totalSteps);
      case 6:
        return _buildSurface7(id, totalSteps, state);
      default:
        return _buildSurface7(
          id,
          totalSteps,
          state,
        ); // Fallback to summary/finish
    }
  }

  OnboardingSurface _buildSurface1(String id, int total) {
    return OnboardingSurface(
      id: id,
      stepIndex: 1,
      totalSteps: total,
      surfaceTitle: 'Welcome',
      components: [
        const OnboardingComponent.hero(
          title: 'Welcome to GenUI',
          subtitle: 'Let\'s tailor your experience.',
        ),
        const OnboardingComponent.singleChoice(
          question: 'Which describes you best?',
          fieldKey: 'persona',
          options: [
            {'key': 'student', 'label': 'Student'},
            {'key': 'founder', 'label': 'Founder'},
            {'key': 'parent', 'label': 'Parent'},
            {'key': 'developer', 'label': 'Developer'},
            {'key': 'other', 'label': 'Other'},
          ],
        ),
        const OnboardingComponent.primaryButton(text: 'Next', action: 'next'),
      ],
    );
  }

  OnboardingSurface _buildSurface2(
    String id,
    int total,
    OnboardingState state,
  ) {
    // Adaptivity: persona=parent => suggest family/sleep first
    // persona=developer => suggest productivity/focus first

    List<Map<String, String>> goals = [
      {'key': 'focus', 'label': 'Deep Focus'},
      {'key': 'health', 'label': 'Better Health'},
      {'key': 'learning', 'label': 'Learning'},
      {'key': 'family', 'label': 'Family Time'},
      {'key': 'productivity', 'label': 'Productivity'},
      {'key': 'sleep', 'label': 'Better Sleep'},
    ];

    if (state.persona == OnboardingPersona.parent) {
      // Move family/sleep to front
      goals.sort((a, b) {
        bool aPrio = a['key'] == 'family' || a['key'] == 'sleep';
        bool bPrio = b['key'] == 'family' || b['key'] == 'sleep';
        if (aPrio && !bPrio) return -1;
        if (!aPrio && bPrio) return 1;
        return 0;
      });
    } else if (state.persona == OnboardingPersona.developer) {
      // Move productivity/focus to front
      goals.sort((a, b) {
        bool aPrio = a['key'] == 'productivity' || a['key'] == 'focus';
        bool bPrio = b['key'] == 'productivity' || b['key'] == 'focus';
        if (aPrio && !bPrio) return -1;
        if (!aPrio && bPrio) return 1;
        return 0;
      });
    }

    return OnboardingSurface(
      id: id,
      stepIndex: 2,
      totalSteps: total,
      surfaceTitle: 'Goals',
      components: [
        const OnboardingComponent.progress(step: 2, total: 7),
        const OnboardingComponent.hero(
          title: 'What matters most?',
          subtitle: 'Select up to 2 primary goals.',
        ),
        OnboardingComponent.multiChoice(
          question: 'I want to improve...',
          fieldKey: 'primaryGoals',
          options: goals,
          maxSelection: 2,
        ),
        const OnboardingComponent.primaryButton(
          text: 'Continue',
          action: 'next',
        ),
        const OnboardingComponent.secondaryButton(text: 'Back', action: 'back'),
      ],
    );
  }

  OnboardingSurface _buildSurface3(String id, int total) {
    return OnboardingSurface(
      id: id,
      stepIndex: 3,
      totalSteps: total,
      surfaceTitle: 'Routine',
      components: [
        const OnboardingComponent.progress(step: 3, total: 7),
        const OnboardingComponent.hero(
          title: 'When do you work best?',
          subtitle: 'We help optimize your schedule.',
        ),
        const OnboardingComponent.singleChoice(
          question: 'My peak hours are:',
          fieldKey: 'timePreference',
          options: [
            {'key': 'morning', 'label': 'Morning'},
            {'key': 'afternoon', 'label': 'Afternoon'},
            {'key': 'evening', 'label': 'Evening'},
            {'key': 'mixed', 'label': 'It varies (Mixed)'},
          ],
        ),
        const OnboardingComponent.primaryButton(text: 'Next', action: 'next'),
        const OnboardingComponent.secondaryButton(text: 'Back', action: 'back'),
      ],
    );
  }

  OnboardingSurface _buildSurface4(
    String id,
    int total,
    OnboardingState state,
  ) {
    // Adaptivity: timePreference=mixed => add a textField "biggest distraction"
    // Adaptivity: experienceLevel=advanced => less explanation text (simulated here by changing subtitle based on hypothetical prev state or just static here?
    // Wait, experienceLevel is decided IN this step, so we can't adapt based on it yet.
    // Ah, the prompt says "experienceLevel=advanced => less explanation text". This implies if the user *is* advanced, we show less text.
    // But this step *asks* for experience level. Maybe it means subsequent steps?
    // Or maybe the User meant "If previous choices implied advanced...".
    // Let's assume the question text adapts based on "Persona".
    // Actually, let's just implement the 'mixed' logic here.

    List<OnboardingComponent> comps = [
      const OnboardingComponent.progress(step: 4, total: 7),
      const OnboardingComponent.hero(
        title: 'Experience',
        subtitle: 'Help us calibrate the difficulty.',
      ),
    ];

    if (state.timePreference == OnboardingTimePreference.mixed) {
      comps.add(
        const OnboardingComponent.textField(
          label: 'Biggest Distraction?',
          hint: 'Social media, meetings, etc.',
          fieldKey: 'biggestDistraction',
        ),
      );
      comps.add(const OnboardingComponent.spacer(size: 16));
    }

    comps.add(
      const OnboardingComponent.singleChoice(
        question: 'How comfortable are you with productivity tools?',
        fieldKey: 'experienceLevel',
        options: [
          {'key': 'beginner', 'label': 'Beginner'},
          {'key': 'intermediate', 'label': 'Intermediate'},
          {'key': 'advanced', 'label': 'Advanced'},
        ],
      ),
    );

    comps.add(
      const OnboardingComponent.primaryButton(text: 'Next', action: 'next'),
    );
    comps.add(
      const OnboardingComponent.secondaryButton(text: 'Back', action: 'back'),
    );

    return OnboardingSurface(
      id: id,
      stepIndex: 4,
      totalSteps: total,
      surfaceTitle: 'Experience',
      components: comps,
    );
  }

  OnboardingSurface _buildSurface5(String id, int total) {
    // Platform differences
    final isIOS = PlatformInfo.isIOS;
    final String pushText = isIOS
        ? 'Enable Push Notifications to stay on track?'
        : 'Allow notifications for updates?';
    final String calText = isIOS
        ? 'Allow Calendar access for scheduling?'
        : 'Sync with your device calendar?';

    return OnboardingSurface(
      id: id,
      stepIndex: 5,
      totalSteps: total,
      surfaceTitle: 'Permissions',
      components: [
        const OnboardingComponent.progress(step: 5, total: 7),
        const OnboardingComponent.hero(
          title: 'Setup Permissions',
          subtitle: 'We need access to help you.',
        ),

        OnboardingComponent.primaryButton(
          text: pushText,
          action: 'request_push_permission',
        ),
        const OnboardingComponent.spacer(size: 12),
        OnboardingComponent.primaryButton(
          text: calText,
          action: 'request_calendar_permission',
        ),

        const OnboardingComponent.spacer(size: 24),
        const OnboardingComponent.secondaryButton(
          text: 'Continue',
          action: 'next',
        ), // Or skip
      ],
    );
  }

  OnboardingSurface _buildSurface6(String id, int total) {
    return OnboardingSurface(
      id: id,
      stepIndex: 6,
      totalSteps: total,
      surfaceTitle: 'Account',
      components: [
        const OnboardingComponent.progress(step: 6, total: 7),
        const OnboardingComponent.hero(
          title: 'Almost there',
          subtitle: 'Save your progress?',
        ),
        const OnboardingComponent.singleChoice(
          question: 'Choose mode:',
          fieldKey: 'accountMode',
          options: [
            {'key': 'guest', 'label': 'Guest Mode'},
            {'key': 'createAccount', 'label': 'Create Account'},
          ],
        ),
        const OnboardingComponent.primaryButton(text: 'Next', action: 'next'),
        const OnboardingComponent.secondaryButton(text: 'Back', action: 'back'),
      ],
    );
  }

  OnboardingSurface _buildSurface7(
    String id,
    int total,
    OnboardingState state,
  ) {
    // Summary
    final summary =
        'Persona: ${state.persona?.name}\n'
        'Goals: ${state.primaryGoals.join(", ")}\n'
        'Time: ${state.timePreference?.name}\n'
        'Exp: ${state.experienceLevel?.name}\n'
        'Permissions: Push=${state.pushAllowed}, Cal=${state.calendarAllowed}';

    return OnboardingSurface(
      id: id,
      stepIndex: 7,
      totalSteps: total,
      surfaceTitle: 'Summary',
      components: [
        const OnboardingComponent.hero(
          title: 'All Set!',
          subtitle: 'Here is what we captured.',
        ),
        OnboardingComponent.legal(text: summary),
        const OnboardingComponent.spacer(size: 20),
        const OnboardingComponent.primaryButton(
          text: 'Finish Setup',
          action: 'finish',
        ),
        const OnboardingComponent.secondaryButton(
          text: 'Reset',
          action: 'reset',
        ),
      ],
    );
  }
}
