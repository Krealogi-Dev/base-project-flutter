import 'dart:io';

import 'package:alice/alice.dart';
import 'package:dependencies/dio/dio.dart';
import 'package:dependencies/shared_preferences/shared_preferences.dart';
import 'package:dio/adapter.dart';

import 'api_interceptors.dart';

class DioHandler {
  final String apiBaseUrl;
  final Alice alice;
  late SharedPreferences sharedPreferences;

  DioHandler(
    this.sharedPreferences, {
    required this.apiBaseUrl,
    required this.alice,
  });

  Dio get dio => _getDio();

  Dio _getDio() {
    BaseOptions options = BaseOptions(
      baseUrl: apiBaseUrl,
      connectTimeout: 50000,
      receiveTimeout: 30000,
    );
    final dio = Dio(options);
    (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (HttpClient client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
      return client;
    };
    dio.interceptors.add(
      ApiInterceptors(sharedPreferences: sharedPreferences),
    );
    dio.interceptors.add(
      alice.getDioInterceptor(),
    );
    return dio;
  }
}
