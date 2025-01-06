import 'package:flutter/material.dart';

import '../../../domain/entities/plan.dart';
import '../../../utils/extensions/context.dart';
import '../../../utils/styles/app_color.dart';
import '../../../utils/styles/app_text_style.dart';
import '../../components/presistent_cached_network_image.dart';
import 'category_tags.dart';

class RecentPlan extends StatelessWidget {
  const RecentPlan({
    super.key,
    required this.plan,
  });

  final Plan plan;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: PersistentCachedNetworkImage(
            imageUrl: plan.thumbnailUrl,
            width: context.deviceWidth * 0.22,
            height: context.deviceWidth * 0.22 * 0.65,
          ),
        ),
        const SizedBox(width: 8),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              plan.title,
              style: AppTextStyle.textStyle.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            CategoryTags(
              tags: plan.topics.map((e) => e.name).toList(),
              tagColor: AppColor.blue50Background,
              spacing: 8,
            ),
          ],
        ),
      ],
    );
  }
}
