import 'dart:developer' as dev;

class Logger {
  static void log(String message, {String? name, Object? error}) {
    dev.log(message, name: name ?? 'App', error: error);
  }
}
