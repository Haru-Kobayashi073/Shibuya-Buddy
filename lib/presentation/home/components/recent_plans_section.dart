import 'package:flutter/material.dart';

import '../../../i18n/strings.g.dart';
import '../../my_plan/mock.dart';
import 'plan_list.dart';
import 'section_title.dart';

class RecentPlansSection extends StatelessWidget {
  const RecentPlansSection({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = Translations.of(context);
    createDummyPlan();

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(height: 16),
          SectionTitle.medium(
            label: i18n.homePage.recentPlans.title,
            onPressed: () {},
          ),
          const SizedBox(height: 8),
          Column(
            children: [
              PlanList(plans: dummyPlan),
            ],
          ),
        ],
      ),
    );
  }
}
