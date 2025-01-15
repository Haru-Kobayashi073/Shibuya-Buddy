import 'package:flutter/material.dart';

import '../../domain/entities/plan.dart';
import '../../i18n/strings.g.dart';
import '../../utils/styles/app_text_style.dart';
import '../components/plan_card.dart';

class PopularPlansPage extends StatelessWidget {
  const PopularPlansPage({super.key, required this.plans});
  final List<Plan> plans;

  @override
  Widget build(BuildContext context) {
    final titlei18n = t.homePage.popularPlans.title;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          titlei18n,
          style: AppTextStyle.textStyle.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Wrap(
            spacing: 8,
            runSpacing: 8,
            children: plans.map((plan) => PlanCard(plan: plan)).toList(),
          ),
        ),
      ),
    );
  }
}
