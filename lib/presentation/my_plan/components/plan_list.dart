import 'package:flutter/material.dart';

import '../../../domain/entities/plan.dart';
import '../../home/components/recent_plan.dart';

class PlanList extends StatelessWidget {
  const PlanList({
    super.key,
    required this.plans,
  });
  final List<Plan> plans;

  List<Widget> planList(List<Plan> plans) {
    final widgets = <Widget>[];
    for (final plan in plans) {
      widgets.add(
        RecentPlan(
          title: plan.title,
          imageUrl: plan.thumbnailUrl,
          tags: plan.topics.map((e) => e.name).toList(),
        ),
      );
    }
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: planList(plans),
    );
  }
}
