import 'package:flutter/material.dart';

import 'components/plan_list.dart';
import 'mock.dart';

class CreatedPlanTabView extends StatelessWidget {
  const CreatedPlanTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return PlanList(plans: dummyBookmarkPlan);
  }
}
