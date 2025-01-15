import 'package:flutter/material.dart';

import '../../../domain/entities/plan.dart';
import '../../../i18n/strings.g.dart';
import '../../my_plan/mock.dart';
import 'recent_plan.dart';
import 'section_title.dart';

class RecentPlansSection extends StatelessWidget {
  const RecentPlansSection({super.key, required this.recentPlans});
  final List<Plan> recentPlans;

  @override
  Widget build(BuildContext context) {
    final i18n = Translations.of(context);
    createDummyPlan();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          SectionTitle.medium(
            label: i18n.homePage.recentPlans.title,
            onPressed: () {},
          ),
          const SizedBox(height: 8),
          Wrap(
            direction: Axis.vertical,
            spacing: 8,
            children: List.generate(
              recentPlans.length,
              (i) => RecentPlan(plan: recentPlans[i]),
            ),
          ),
        ],
      ),
    );
  }
}
