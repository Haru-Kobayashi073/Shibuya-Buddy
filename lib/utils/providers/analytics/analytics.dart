import 'package:riverpod_annotation/riverpod_annotation.dart';
import '../../../infrastructure/analytics/analytics_data_source.dart';
import '../../../utils/analytics_event.dart';

part 'analytics.g.dart';

@riverpod
class AnalyticsNotifier extends _$AnalyticsNotifier {
  FirebaseAnalyticsDataSource get _dataSource =>
      ref.read(firebaseAnalyticsDataSourceProvider);

  @override
  Future<void> build() async {
  }

  Future<void> logEvent(
    AnalyticsEvent event, {
    Map<String, Object>? parameters,
  }) async {
    await _dataSource.logEvent(event, parameters: parameters);
  }
}
