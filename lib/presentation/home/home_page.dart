import 'package:flutter/material.dart';
import 'components/recent_plan.dart';
import 'components/section_title_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(),
          SectionTitleWidget(
            label: '最近作成したプラン',
            fontsize: 20,
            onPressed: () {},
            iconSize: 20,
          ),
          const RecentPlan(label: '宮下パークへようこそ'),
          const RecentPlan(label: '宮下パークへようこそ'),
          const RecentPlan(label: '宮下パークへようこそ'),
        ],
      ),
    );
  }
}
