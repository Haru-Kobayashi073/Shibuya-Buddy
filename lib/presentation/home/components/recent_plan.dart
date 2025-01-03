import 'package:flutter/material.dart';

import '../../../utils/styles/app_color.dart';
import '../../../utils/styles/app_text_style.dart';
import '../../components/presistent_cached_network_image.dart';
import '../../components/row_category_tags.dart';

class RecentPlan extends StatelessWidget {
  const RecentPlan({
    super.key,
    required this.title,
    required this.imageUrl,
    required this.tags,
  });

  final String title;
  final String imageUrl;
  final List<String> tags;

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final imageWidth = width * 0.22;
    const contentPadding = 8.0;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: PersistentCachedNetworkImage(
            imageUrl: imageUrl,
            width: imageWidth,
          ),
        ),
        const SizedBox(width: contentPadding),
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: AppTextStyle.textStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4),
              RowCategoryTags(
                tags: tags,
                tagColor: AppColor.grey200,
                spacing: 4,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
