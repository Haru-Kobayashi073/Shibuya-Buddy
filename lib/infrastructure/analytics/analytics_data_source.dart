import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../utils/analytics_event.dart';
import '../firebase/firebase_analytics_provider.dart';
part 'analytics_data_source.g.dart';

@riverpod
class FirebaseAnalyticsDataSource extends _$FirebaseAnalyticsDataSource {
  FirebaseAnalytics get _analytics => ref.read(firebaseAnalyticsProvider);

  @override
  FirebaseAnalyticsDataSource build() {
    return FirebaseAnalyticsDataSource();
  }

  // 行動ログ
  Future<void> logEvent(
    AnalyticsEvent event, {
    Map<String, Object>? parameters,
  }) async {
    await _analytics.logEvent(
      name: event.key,
      parameters: parameters,
    );
  }

  // 画面遷移ログ
  Future<void> logScreenView({
    required String screenName,
    String? screenClassOverride,
  }) async {
    await _analytics.logScreenView(
      screenName: screenName,
      screenClass: screenClassOverride ?? screenName,
    );
  }
}
