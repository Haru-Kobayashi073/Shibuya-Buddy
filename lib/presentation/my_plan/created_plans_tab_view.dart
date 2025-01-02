import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'components/plan_list.dart';
import 'mock.dart';

class CreatedPlanTabView extends ConsumerWidget {
  const CreatedPlanTabView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    populateDummyBookmarkPlan();
    return PlanList(plans: dummyBookmarkPlan);
  }
}
