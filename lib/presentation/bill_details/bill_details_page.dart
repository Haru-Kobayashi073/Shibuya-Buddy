import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'components/bottom_modal.dart'; // BottomModalをインポート
import 'components/grade_based_features.dart';
import 'components/plan_table.dart';
import 'components/premium_plan.dart';

class BillDetailsPage extends StatelessWidget {
  const BillDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    const imagePath = 'assets/images/billing_header.png';

    const bottomModalHeight = 150.0;

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(bottom: bottomModalHeight),
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                pinned: true,
                expandedHeight: 250,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(imagePath, fit: BoxFit.cover),
                ),
              ),
              const SliverToBoxAdapter(
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      PremiumPlan(),
                      Gap(32),
                      PlanTable(),
                      Gap(32),
                      GradeBasedFeatures(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomSheet: const BottomModal(),
    );
  }
}
