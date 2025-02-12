import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../infrastructure/analytics/analytics_data_source.dart';
import '../../../utils/analytics_event.dart';

class AnalyticsNotifier {
  AnalyticsNotifier(this._analyticsDataSource);
  final FirebaseAnalyticsDataSource _analyticsDataSource;

  Future<void> logEvent(
    AnalyticsEvent event, {
    Map<String, Object>? parameters,
  }) async {
    await _analyticsDataSource.logEvent(
      event,
      parameters: parameters,
    ); 
  }
}

final analyticsNotifierProvider = Provider<AnalyticsNotifier>((ref) {
  final dataSource = ref.read(firebaseAnalyticsDataSourceProvider);
  return AnalyticsNotifier(dataSource);
});
