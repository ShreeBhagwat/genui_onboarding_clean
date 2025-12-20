import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/value_objects/onboarding_event.dart';
import '../providers/onboarding_providers.dart';
import '../widgets/surface_renderer.dart';
import '../widgets/debug_panel.dart';
import '../widgets/error_banner.dart';
import '../fallback/basic_onboarding_flow.dart';

class OnboardingHostScreen extends ConsumerStatefulWidget {
  const OnboardingHostScreen({super.key});

  @override
  ConsumerState<OnboardingHostScreen> createState() =>
      _OnboardingHostScreenState();
}

class _OnboardingHostScreenState extends ConsumerState<OnboardingHostScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(onboardingControllerProvider.notifier).start();
    });
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(onboardingControllerProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('GenUI Onboarding'),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: () =>
                ref.read(onboardingControllerProvider.notifier).handleEvent(
                      OnboardingEvent(
                        type: OnboardingEventType.pressAction,
                        value: 'reset',
                        timestamp: DateTime.now(),
                        replyToSurfaceId: 'manual',
                      ),
                    ),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            state.maybeWhen(
              error: (msg) => ErrorBanner(message: msg),
              orElse: () => const SizedBox.shrink(),
            ),
            Expanded(
              child: state.when(
                initial: () => const Center(child: CircularProgressIndicator()),
                loading: () => const Center(child: CircularProgressIndicator()),
                error: (msg) => _buildFallback(context, msg),
                data: (surface, internalState) => SurfaceRenderer(
                  components: surface.components,
                  surfaceId: surface.id,
                  onEvent: (event) => ref
                      .read(onboardingControllerProvider.notifier)
                      .handleEvent(event),
                ),
              ),
            ),
            state.maybeWhen(
              data: (_, internalState) => DebugPanel(state: internalState),
              orElse: () => const SizedBox.shrink(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFallback(BuildContext context, String errorMsg) {
    final fallback = BasicOnboardingFlow.getFallbackSurface();
    return SurfaceRenderer(
      components: fallback.components,
      surfaceId: fallback.id,
      onEvent: (event) =>
          ref.read(onboardingControllerProvider.notifier).handleEvent(event),
    );
  }
}
