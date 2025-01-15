import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/entities/plan.dart';
import '../../i18n/strings.g.dart';
import '../../utils/routes/app_router.dart';
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
            onRefresh: () async => ref.invalidate(myPlanPageNotifierProvider),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: plans
                    .map(
                      (plan) => Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: RecentPlan(
                          plan: plan,
                        ),
                      ),
                    )
                    .toList(),
              ),
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
