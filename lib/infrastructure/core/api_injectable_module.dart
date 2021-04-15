import 'package:injectable/injectable.dart';
import 'package:artemis/artemis.dart';

const String kApiEndpoint = 'https://www.jmteam.tk/graph-api';

@module
abstract class ApiInjectableModule {
  @lazySingleton
  final ArtemisClient client = ArtemisClient(kApiEndpoint);
}
