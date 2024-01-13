import 'package:logger/logger.dart';

class Log {
  late final Logger _logger;
  static final Log _instance = Log._();
  static final Logger instanceLongLine = Logger(
    printer: PrettyPrinter(
      methodCount: 1,
      lineLength: 200,
    ),
  );

  Log._();

  factory Log() {
    return _instance;
  }

  void init() {
    _logger = Logger(
      printer: PrettyPrinter(
        methodCount: 1,
        lineLength: 20,
      ),
    );
  }
}

Logger get logger => Log()._logger;

Logger get loggerInfinity => Log.instanceLongLine;
