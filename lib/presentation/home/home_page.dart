import 'package:flutter/material.dart';

import 'components/resent_plans_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Spacer(),
          RecentPlansSection(),
        ],
      ),
    );
  }
}
