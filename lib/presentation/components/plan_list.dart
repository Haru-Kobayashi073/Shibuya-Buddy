import 'package:flutter/material.dart';

import '../../domain/entities/plan.dart';
import '../home/components/recent_plan.dart';

class PlanList extends StatelessWidget {
  const PlanList({
    super.key,
    required this.plans,
  });

  final List<Plan> plans;

  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
