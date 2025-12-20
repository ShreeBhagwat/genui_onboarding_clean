import 'package:flutter/material.dart';
import '../../domain/entities/onboarding_component.dart';
// Import catalog
import '../catalog/widget_catalog.dart';
import '../../domain/value_objects/onboarding_event.dart';

class SurfaceRenderer extends StatelessWidget {
  final List<OnboardingComponent> components;
  final Function(OnboardingEvent) onEvent;
  final String surfaceId;

  const SurfaceRenderer({
    super.key,
    required this.components,
    required this.onEvent,
    required this.surfaceId,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(24.0),
      itemCount: components.length,
      itemBuilder: (context, index) {
        final component = components[index];
        return Padding(
          padding: const EdgeInsets.only(bottom: 16.0),
          child: _renderComponent(component),
        );
      },
    );
  }

  Widget _renderComponent(OnboardingComponent component) {
    return component.map(
      hero: (c) => OnbHeroWidget(title: c.title, subtitle: c.subtitle),
      progress: (c) => OnbProgressWidget(step: c.step, total: c.total),
      singleChoice: (c) => OnbSingleChoiceWidget(
        question: c.question,
        options: c.options,
        selectedKey: c.selectedKey,
        onSelected: (key) => onEvent(
          OnboardingEvent(
            type: OnboardingEventType.selectOption,
            fieldKey: c.fieldKey,
            value: key,
            timestamp: DateTime.now(),
            replyToSurfaceId: surfaceId,
          ),
        ),
      ),
      multiChoice: (c) => OnbMultiChoiceWidget(
        question: c.question,
        options: c.options,
        selectedKeys: c.selectedKeys,
        maxSelection: c.maxSelection,
        onChanged: (keys) => onEvent(
          OnboardingEvent(
            type: OnboardingEventType.selectOption,
            fieldKey: c.fieldKey,
            value: keys,
            timestamp: DateTime.now(),
            replyToSurfaceId: surfaceId,
          ),
        ),
      ),
      textField: (c) => OnbTextFieldWidget(
        label: c.label,
        hint: c.hint,
        keyboardType: c.keyboardType != null
            ? TextInputType.values.firstWhere(
                (e) => e.toString() == 'TextInputType.${c.keyboardType}',
                orElse: () => TextInputType.text,
              )
            : TextInputType.text,
        onChanged: (text) => onEvent(
          OnboardingEvent(
            type: OnboardingEventType.enterText,
            fieldKey: c.fieldKey,
            value: text,
            timestamp: DateTime.now(),
            replyToSurfaceId: surfaceId,
          ),
        ),
      ),
      primaryButton: (c) => OnbPrimaryButtonWidget(
        text: c.text,
        onPressed: () => onEvent(
          OnboardingEvent(
            type: OnboardingEventType.pressAction,
            value: c.action,
            timestamp: DateTime.now(),
            replyToSurfaceId: surfaceId,
          ),
        ),
      ),
      secondaryButton: (c) => OnbSecondaryButtonWidget(
        text: c.text,
        onPressed: () => onEvent(
          OnboardingEvent(
            type: OnboardingEventType.pressAction,
            value: c.action,
            timestamp: DateTime.now(),
            replyToSurfaceId: surfaceId,
          ),
        ),
      ),
      legal: (c) => OnbLegalWidget(text: c.text),
      spacer: (c) => OnbSpacerWidget(size: c.size),
    );
  }
}
