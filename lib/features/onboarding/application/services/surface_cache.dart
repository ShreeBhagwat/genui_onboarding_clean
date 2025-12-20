import '../../domain/entities/onboarding_surface.dart';

class SurfaceCache {
  final List<OnboardingSurface> _history = [];

  void push(OnboardingSurface surface) {
    _history.add(surface);
  }

  OnboardingSurface? pop() {
    if (_history.isNotEmpty) {
      _history.removeLast();
      return _history.isNotEmpty
          ? _history.last
          : null; // Return the *new* top, or null if empty
    }
    return null;
  }

  OnboardingSurface? get current => _history.isNotEmpty ? _history.last : null;

  void clear() {
    _history.clear();
  }
}
