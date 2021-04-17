import 'package:http/http.dart' as http;

class HttpClientService extends http.BaseClient {
  final String accessToken;
  final http.Client _client = http.Client();

  HttpClientService(this.accessToken);

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    request.headers['Authorization'] = accessToken;
    return _client.send(request);
  }
}
