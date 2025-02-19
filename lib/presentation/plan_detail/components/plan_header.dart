import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../domain/entities/plan.dart';
import '../../../i18n/strings.g.dart';
import '../../../utils/styles/app_color.dart';
import '../../../utils/styles/app_text_style.dart';
import '../../home/components/category_tags.dart';
import 'have_used_plan_question_dialog.dart';

class PlanHeader extends StatelessWidget {
  const PlanHeader({
    super.key,
    required this.plan,
    required this.haveUsedPlan,
  });
  final Plan plan;
  final bool haveUsedPlan;

  @override
  Widget build(BuildContext context) {
    final i18n = Translations.of(context);
    final planDetailPagei18n = i18n.planDetailsPage;

    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 16, right: 16),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              plan.title,
              style: AppTextStyle.textStyle.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, bottom: 16),
            child: Align(
              alignment: Alignment.centerLeft,
              child: CategoryTags(
                topics: plan.topics,
                tagColor: AppColor.blue50Background,
                spacing: 4,
              ),
            ),
          ),
          if (haveUsedPlan)
            GestureDetector(
              onTap: () async {
                await showDialog<void>(
                  context: context,
                  builder: (_) => const HaveUsedPlanQuestionDialog(),
                );
              },
              child: Row(
                children: [
                  const Icon(
                    Icons.check_circle,
                    color: AppColor.yellow600Primary,
                  ),
                  const Gap(4),
                  Text(
                    planDetailPagei18n.haveUsedPlan,
                    style: AppTextStyle.textStyle.copyWith(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          const Gap(8),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              plan.description,
              style: AppTextStyle.textStyle.copyWith(fontSize: 14),
            ),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}
