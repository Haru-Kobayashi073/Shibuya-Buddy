import 'package:flutter/material.dart';
import '../../../domain/entities/plan.dart';
import 'recent_plan.dart';

class PlanList extends StatelessWidget {
  const PlanList({
    super.key,
    required this.plans,
  });

  final List<Plan> plans;

  List<Widget> _buildPlanItems() {
    return plans
        .map(
          (plan) => Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: RecentPlan(
              title: plan.title,
              imageUrl: plan.thumbnailUrl,
              tags: plan.topics.map((e) => e.name).toList(),
            ),
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _buildPlanItems(),
    );
  }
}
