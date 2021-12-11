import 'package:xepa/app/config/network.dart';

class MyNetworkHelper {

  static Future<dynamic> getRequestQueryUrl(String url, {Map<String, String> queryParameters}) async {
    final Network _network = Network();
    String queryString = "?foo=foo";
    if (queryParameters != null && queryParameters.isNotEmpty) queryParameters.forEach((key, value) => queryString += '&$key=$value');
    var response = await _network.get('$url/$queryString');
    return response;
  }
}