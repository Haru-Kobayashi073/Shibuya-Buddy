import 'package:flutter/material.dart';

import 'recent_plan.dart';
import 'section_title.dart';

class RecentPlansSection extends StatelessWidget {
  const RecentPlansSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SectionTitle(
            label: '最近作成したプラン',
            fontsize: 20,
            onPressed: () {},
            iconSize: 20,
          ),
          const SizedBox(height: 16),
          const RecentPlan(label: '宮下パークへようこそ'),
          const RecentPlan(label: '宮下パークへようこそ'),
          const RecentPlan(label: '宮下パークへようこそ'),
        ],
      ),
    );
  }
}
