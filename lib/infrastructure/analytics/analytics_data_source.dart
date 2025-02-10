import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../utils/analytics_event.dart';

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

final firebaseAnalyticsDataSourceProvider =
    Provider<FirebaseAnalyticsDataSource>((ref) {
  final analytics = FirebaseAnalytics.instance;
  return FirebaseAnalyticsDataSource(analytics);
});
