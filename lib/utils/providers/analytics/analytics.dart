import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../infrastructure/analytics/analytics_data_source.dart';
import '../../../utils/analytics_event.dart';

class AnalyticsNotifier {
  AnalyticsNotifier(this._dataSource);
  final FirebaseAnalyticsDataSource _dataSource;

  Future<void> logEvent(
    AnalyticsEvent event, {
    Map<String, Object>? parameters,
  }) async {
    await _dataSource.logEvent(event, parameters: parameters);
  }
}

// Provider: Notifier を提供
final analyticsNotifierProvider = Provider<AnalyticsNotifier>((ref) {
  final dataSource = ref.read(firebaseAnalyticsDataSourceProvider);
  return AnalyticsNotifier(dataSource);
});
