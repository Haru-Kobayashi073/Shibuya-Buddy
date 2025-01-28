import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/entities/plan.dart';
import '../../i18n/strings.g.dart';
import '../../utils/routes/app_router.dart';
import '../../utils/styles/app_color.dart';
import '../home/components/recent_plan.dart';
import 'components/empty_data.dart';
import 'my_plan_page_notifier.dart';

class CreatedPlanTabView extends ConsumerWidget {
  const CreatedPlanTabView({
    super.key,
    required this.plans,
  });
  final List<Plan> plans;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i18n = Translations.of(context);
    final createItemi18n = i18n.myPlanPage.createdPlansItems;

    return plans.isNotEmpty
        ? RefreshIndicator(
            backgroundColor: AppColor.white,
            color: AppColor.yellow600Primary,
            onRefresh: () async {
              ref.invalidate(myPlanPageNotifierProvider);
              await ref.read(myPlanPageNotifierProvider.future);
            },
            child: ListView.builder(
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.all(16),
              itemCount: plans.length,
              itemBuilder: (context, index) {
                final plan = plans[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: RecentPlan(
                    plan: plan,
                  ),
                );
              },
            ),
          )
        : EmptyDataView(
            message: createItemi18n.nondata,
            labelText: createItemi18n.createaplan,
            onPressed: () async {
              await const CreatePlanPageRouteData().push<void>(context);
            },
          );
  }
}
