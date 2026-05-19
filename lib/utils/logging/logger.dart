import 'package:logger/logger.dart';

class AppLogger {
  static final Logger _logger = Logger(
    printer: PrettyPrinter(),
    level: Level.debug,
  );

  static void debug(String message) {
    _logger.d(message);
  }

  static void info(String message) {
    _logger.i(message);
  }

  static void warning(String message) {
    _logger.w(message);
  }

  // 3. Fixed: Passed the dynamic error object and StackTrace correctly into the method parameters
  static void error(String message, [dynamic error, StackTrace? stackTrace]) {
    _logger.e(
      message, 
      error: error, 
      stackTrace: stackTrace ?? StackTrace.current, // Fallback to current stack trace if none provided
    );
  }
}