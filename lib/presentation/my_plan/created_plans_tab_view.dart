import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../home/components/plan_list.dart';
import 'mock.dart';
import 'my_plan_notifier.dart';

class CreatedPlanTabView extends ConsumerWidget {
  const CreatedPlanTabView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final notifier = ref.watch(myPlanNotifierProvider.notifier);
    // notifier.getBookmarkedPlans(userId: 'n2lEinZTRIVzcKyMR2nTWrZJUy52');

    // notifier.addPlanToBookmarks(
    //   userId: 'n2lEinZTRIVzcKyMR2nTWrZJUy52',
    //   planId: '88c7ded2-3847-4879-b9cc-ff7f2ba9671e',
    // );

    return Padding(
      padding: const EdgeInsets.all(16),
      child: ListView(
        children: [
          PlanList(plans: dummyPlan),
        ],
      ),
    );
  }
}
