import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_dio.g.dart';

@Riverpod(keepAlive: true)
AppDio appDio(AppDioRef ref) {
  return AppDio();
}

class AppDio extends DioMixin {
  factory AppDio() {
    final instance = _instance;
    if (instance != null) {
      return instance;
    }
    final dio = AppDio._();
    final options = BaseOptions(
      connectTimeout: const Duration(seconds: 15),
    );
    dio
      ..options = options
      ..httpClientAdapter = HttpClientAdapter();
    dio.interceptors.add(
      LogInterceptor(
        requestBody: true,
        responseBody: true,
      ),
    );
    _instance = dio;
    return dio;
  }

  AppDio._();

  static AppDio? _instance;
}
