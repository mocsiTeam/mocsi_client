import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@module
abstract class LoggerService {
  @lazySingleton
  final logger = Logger(printer: PrettyPrinter());
}
