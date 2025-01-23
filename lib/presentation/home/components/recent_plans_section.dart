import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../domain/entities/plan.dart';
import '../../../i18n/strings.g.dart';
import '../../../utils/routes/app_router.dart';
import '../../my_plan/my_plan_page_notifier.dart';
import 'recent_plan.dart';
import 'section_title.dart';

class RecentPlansSection extends ConsumerWidget {
  const RecentPlansSection({super.key, required this.recentPlans});
  final List<Plan> recentPlans;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i18n = Translations.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 16),
          SectionTitle.medium(
            label: i18n.homePage.recentPlans.title,
            onPressed: () {
              ref.read(selectedIndexProvider.notifier).state = 0;
              const MyPlanPageRouteData().go(context);
            },
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
