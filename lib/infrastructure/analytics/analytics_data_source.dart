import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../utils/analytics_event.dart';

final firebaseAnalyticsProvider = Provider<FirebaseAnalytics>((ref) {
  return FirebaseAnalytics.instance;
});

// FirebaseAnalyticsにlogEventを送るクラス
class FirebaseAnalyticsDataSource {
  FirebaseAnalyticsDataSource(this._analytics);
  final FirebaseAnalytics _analytics;

  Future<void> logEvent(
    AnalyticsEvent event, {
    Map<String, Object>? parameters,
  }) async {
    await _analytics.logEvent(
      name: event.key,
      parameters: parameters,
    );
  }
}

// ProviderでFirebaseAnalyticsDataSourceを提供
final firebaseAnalyticsDataSourceProvider =
    Provider<FirebaseAnalyticsDataSource>((ref) {
  final analytics = ref.read(firebaseAnalyticsProvider);
  return FirebaseAnalyticsDataSource(analytics);
});
