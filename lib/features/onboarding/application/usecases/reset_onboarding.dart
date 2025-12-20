import '../services/surface_cache.dart';

class ResetOnboarding {
  final SurfaceCache cache;

  ResetOnboarding(this.cache);

  void call() {
    cache.clear();
  }
}
