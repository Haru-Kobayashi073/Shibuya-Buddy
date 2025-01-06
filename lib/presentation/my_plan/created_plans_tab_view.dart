import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../home/components/plan_list.dart';
import 'mock.dart';

class CreatedPlanTabView extends ConsumerWidget {
  const CreatedPlanTabView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {

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
