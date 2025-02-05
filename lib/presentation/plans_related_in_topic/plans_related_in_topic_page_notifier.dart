import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/plan.dart';
import '../../infrastructure/plan/plan_data_source.dart';
import '../../utils/custom_logger.dart';

part 'plans_related_in_topic_page_notifier.g.dart';

@riverpod
class PlansRelatedInTopicPageNotifier
    extends _$PlansRelatedInTopicPageNotifier {
  PlanDataSource get planDataSource =>
      ref.read(planDataSourceProvider.notifier);

  @override
  Future<List<Plan>> build(List<String> planIds) async {
    final plans = await getPlansRelatedInTopic();

    return plans;
  }

  Future<List<Plan>> getPlansRelatedInTopic() async {
    try {
      final plans = <Plan>[];
      for (final planId in planIds) {
        final plan = await planDataSource.getPlanData(planId: planId);
        plans.add(plan);
      }
      return plans;
    } on Exception catch (e) {
      logger.d('getPlansRelatedInTopic: $e');
      return <Plan>[];
    }
  }
}
