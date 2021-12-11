import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:xepa/app/model/error.dart';

import 'enums.dart';
import 'hosts.dart';

class Network {
  static Network _instance = Network.internal();

  Network.internal(){
    setAuthHeader();
  }

  factory Network() => _instance;

  Map _authHeader = Map();

  Map<String, String> get authHeader => Map<String, String>.from(_authHeader);

  void setAuthHeader() {
    _authHeader[HttpHeaders.authorizationHeader] = TOKEN;
  }

  Future<dynamic> getWithStringParams({int id, Map<String, String> filtros, String url}) async {
    var queryString = "$id?";
    if (filtros.isNotEmpty) filtros.forEach((key, value) => queryString += "&$key=$value");
    return await get("$url/$queryString");
  }

  Future<dynamic> get(String url, {Map headers}) async => request(http.get(Uri.parse(url), headers: headers ?? authHeader));

  Future<dynamic> post(String url, {Map headers, body, encoding}) async => request(http.post(Uri.parse(url), body: jsonEncode(body), headers: headers ?? authHeader, encoding: encoding));

  Future<dynamic> put(String url, {Map headers, body, encoding}) async => request(http.put(Uri.parse(url), body: jsonEncode(body), headers: headers ?? authHeader, encoding: encoding));

  Future<dynamic> delete(String url, {Map headers}) async => request(http.delete(Uri.parse(url), headers: headers ?? authHeader));

  Future<dynamic> request(Future request) async {
    try {
      final response = await request;
      if (response.statusCode != 422 && (response.statusCode < 200 || response.statusCode > 400)) return MyError(type: ErrorType.noServiceAvailable);
      if (jsonDecode(response.body) is Map && jsonDecode(response.body)['error'] != null) return MyError(type: ErrorType.apiError, errorMessage: jsonDecode(response.body)['error'].toString());

      return response.body;
      // } on Exception catch (e){
      //     throw e;
      // }
    } on SocketException catch (e) {
      return MyError(type: ErrorType.noInternetConnection, errorMessage: e.toString());
    } on Error catch (e) {
      return MyError(type: ErrorType.noServiceAvailable, errorMessage: e.toString());
    } on FormatException catch (e) {
      return MyError(type: ErrorType.invalidFormat, errorMessage: e.toString());
    } catch (e) {
      return MyError(type: ErrorType.unknown, errorMessage: e.toString());
    }
  }

  Future<dynamic> multipartPost(String url, Map<String, File> files, {Map headers, Map body}) async {
    try {
      var postUri = Uri.parse(url);
      var request = http.MultipartRequest("POST", postUri);
      request.headers.addAll(headers);
      files.entries.forEach((entry) async => request.files.add(await http.MultipartFile.fromPath(entry.key, entry.value.path)));
      body.entries.forEach((entry) => request.fields[entry.key] = entry.value);

      var response = await request.send();
      final respStr = await response.stream.bytesToString();

      if (response.statusCode != 422 && (response.statusCode < 200 || response.statusCode > 400)) return MyError(type: ErrorType.noServiceAvailable);

      return respStr;
      // } on Exception catch (e){
      //     throw e;
      // }
    } on SocketException catch (e) {
      return MyError(type: ErrorType.noInternetConnection, errorMessage: e.toString());
    } on Error catch (e) {
      return MyError(type: ErrorType.noServiceAvailable, errorMessage: e.toString());
    } on FormatException catch (e) {
      return MyError(type: ErrorType.invalidFormat, errorMessage: e.toString());
    } catch (e) {
      return MyError(type: ErrorType.unknown, errorMessage: e.toString());
    }
  }
}
