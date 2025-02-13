import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../infrastructure/analytics/analytics_data_source.dart';
import '../../../utils/analytics_event.dart';

part 'analytics.g.dart';

@riverpod
class AnalyticsNotifier extends _$AnalyticsNotifier {
  FirebaseAnalyticsDataSource get _dataSource =>
      ref.read(firebaseAnalyticsDataSourceProvider);

  @override
  void build() {
  }
  // 行動ログ
  Future<void> logEvent(
    UserActionEvent event, {
    Map<String, Object>? parameters,
  }) async {
    await _dataSource.logEvent(event.key, parameters: parameters);
  }

 // 画面遷移ログ
    Future<void> logScreenView(
    ScreenViewEvent event, {
    String? screenClassOverride,
  }) async {
    await _dataSource.logScreenView(
      event.key,
      screenClassOverride: screenClassOverride,
    );
  }
}
