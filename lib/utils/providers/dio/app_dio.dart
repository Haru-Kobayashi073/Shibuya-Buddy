import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'app_dio.g.dart';

@Riverpod(keepAlive: true)
AppDio appDio(AppDioRef ref) {
  return AppDio();
}

class AppDio extends DioMixin {
  // 外部からアクセスするためのファクトリコンストラクタ
  factory AppDio() {
    return _instance;
  }

  // プライベートコンストラクタ
  AppDio._() {
    const isProductionBuild = String.fromEnvironment('flavor') == 'prod';
    options = BaseOptions(
      connectTimeout: const Duration(seconds: 15),
      receiveTimeout: const Duration(seconds: 15),
      sendTimeout: const Duration(seconds: 15),
    );
    httpClientAdapter = HttpClientAdapter();

    if (!isProductionBuild) {
      interceptors.add(
        LogInterceptor(
          requestBody: true,
          responseBody: true,
        ),
      );
    }
  }
  // スレッドセーフなSingletonインスタンス
  static final AppDio _instance = AppDio._();
}
