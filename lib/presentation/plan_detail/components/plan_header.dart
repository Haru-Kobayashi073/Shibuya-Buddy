import 'package:flutter/material.dart';

import '../../../domain/entities/plan.dart';
import '../../../utils/styles/app_color.dart';
import '../../../utils/styles/app_text_style.dart';
import '../../home/components/category_tags.dart';

class PlanHeader extends StatelessWidget {
  const PlanHeader({
    super.key,
    required this.plan,
  });
  final Plan plan;
  @override
  Widget build(BuildContext context) {
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
