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
    const imageUrl =
        'https://images.unsplash.com/photo-1588099768550-4014589e03e0?ixlib=rb-1.2.1&ixid='
        'MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80';

    const bottomModalHeight = 200.0;

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
                  background: Image.network(imageUrl, fit: BoxFit.cover),
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
