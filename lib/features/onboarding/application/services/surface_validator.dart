import '../../domain/entities/onboarding_surface.dart';
import '../../domain/entities/onboarding_component.dart';
import '../../../../core/errors/validation_exception.dart';

class SurfaceValidator {
  void validate(OnboardingSurface surface) {
    if (surface.stepIndex < 0 || surface.stepIndex > surface.totalSteps) {
      throw ValidationException('Step index out of bounds');
    }

    // Bounds: totalSteps usually 7 or so, but let's be generous
    if (surface.totalSteps > 20) {
      throw ValidationException('Total steps too high');
    }

    // Validate components
    for (final component in surface.components) {
      _validateComponent(component);
    }
  }

  void _validateComponent(OnboardingComponent component) {
    component.map(
      hero: (c) {
        if (c.title.length > 60) {
          throw ValidationException('Hero title too long');
        }
        if (c.subtitle.length > 120) {
          throw ValidationException('Hero subtitle too long');
        }
      },
      progress: (c) {
        if (c.step < 0 || c.step > c.total) {
          throw ValidationException('Invalid progress');
        }
      },
      singleChoice: (c) {
        if (c.question.length > 80) {
          throw ValidationException('Question too long');
        }
        if (c.options.length > 6) {
          throw ValidationException('Too many options');
        }
        for (final opt in c.options) {
          if ((opt['label']?.length ?? 0) > 24) {
            throw ValidationException('Option label too long');
          }
        }
      },
      multiChoice: (c) {
        if (c.question.length > 80) {
          throw ValidationException('Question too long');
        }
        if (c.options.length > 6) {
          throw ValidationException('Too many options');
        }
      },
      textField: (c) {
        if (c.label.length > 30) {
          throw ValidationException('Label too long');
        }
      },
      primaryButton: (c) {},
      secondaryButton: (c) {},
      legal: (c) {},
      spacer: (c) {},
    );
  }
}
