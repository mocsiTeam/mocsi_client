import 'package:connectivity/connectivity.dart';
import 'package:injectable/injectable.dart';
import 'package:artemis/artemis.dart';
import 'package:mocsi_client/infrastructure/core/http_client_service.dart';

const String kApiEndpoint = 'https://www.jmteam.tk/graph-api';

@module
abstract class ApiInjectableModule {
  @injectable
  @factoryMethod
  ArtemisClient getClient(@factoryParam String? accessToken) => ArtemisClient(
        kApiEndpoint,
        httpClient: HttpClientService(accessToken!),
      );
  @lazySingleton
  final Connectivity connectivity = Connectivity();
}
