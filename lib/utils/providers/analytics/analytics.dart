import 'package:firebase_core/firebase_core.dart'; // FirebaseException 用に追加
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../infrastructure/analytics/analytics_data_source.dart';
import '../../../utils/analytics_event.dart';
import '../../../utils/custom_logger.dart'; // CustomLogger をインポート

part 'analytics.g.dart';

@riverpod
class AnalyticsNotifier extends _$AnalyticsNotifier {
  FirebaseAnalyticsDataSource get _dataSource =>
      ref.read(firebaseAnalyticsDataSourceProvider);

  @override
  void build() {}

  // 行動ログ
  Future<void> logEvent(
    UserActionEvent event, {
    Map<String, Object>? parameters,
  }) async {
    try {
      await _dataSource.logEvent(event.key, parameters: parameters);
      logger.t('Event logged: ${event.key}');
    } on FirebaseException catch (e, stackTrace) {
      logger.error(
        'Firebase error logging event: ${event.key}',
        error: e,
        stackTrace: stackTrace,
        methodName: 'logEvent',
      );
    } on Exception catch (e, stackTrace) {
      logger.error(
        'General error logging event: ${event.key}',
        error: e,
        stackTrace: stackTrace,
        methodName: 'logEvent',
      );
    }
  }

  // 画面遷移ログ
  Future<void> logScreenView(
    ScreenViewEvent event, {
    String? screenClassOverride,
  }) async {
    try {
      await _dataSource.logScreenView(
        event.key,
        screenClassOverride: screenClassOverride,
      );
      logger.t('Screen view logged: ${event.key}');
    } on FirebaseException catch (e, stackTrace) {
      logger.error(
        'Firebase error logging screen view: ${event.key}',
        error: e,
        stackTrace: stackTrace,
        methodName: 'logScreenView',
      );
    } on Exception catch (e, stackTrace) {
      logger.error(
        'General error logging screen view: ${event.key}',
        error: e,
        stackTrace: stackTrace,
        methodName: 'logScreenView',
      );
    }
  }
}
