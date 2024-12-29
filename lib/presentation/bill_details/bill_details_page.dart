import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../../utils/styles/app_color.dart';
import 'components/bottom_modal.dart';
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
        top: false,
        child: Padding(
          padding: const EdgeInsets.only(bottom: bottomModalHeight),
          child: CustomScrollView(
            slivers: [
              SliverAppBar(
                expandedHeight: 250,
                flexibleSpace: FlexibleSpaceBar(
                  background: Image.asset(imagePath, fit: BoxFit.cover),
                ),
                pinned: true,
                backgroundColor: Colors.transparent,
                surfaceTintColor: Colors.transparent,
                leading: Padding(
                  padding: const EdgeInsets.all(8),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: AppColor.white,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: IconButton(
                      alignment: Alignment.center,
                      iconSize: 24,
                      icon: const Icon(
                        Symbols.arrow_back_ios_new,
                        color: AppColor.black,
                        weight: 600,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ),
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
