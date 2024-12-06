import 'package:flutter/material.dart';

import '../../../i18n/strings.g.dart';
import 'recent_plan.dart';
import 'section_title.dart';

class RecentPlansSection extends StatelessWidget {
  const RecentPlansSection({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = Translations.of(context);

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
          Wrap(
            direction: Axis.vertical,
            spacing: 8,
            children: List.generate(
              3,
              (index) => const RecentPlan(
                title: '宮下公園でピクニック',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
