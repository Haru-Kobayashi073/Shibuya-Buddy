import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../utils/extensions/context.dart';
import '../../../utils/styles/app_color.dart';
import '../../../utils/styles/app_text_style.dart';
import 'category_tags.dart';

class RecentPlan extends StatelessWidget {
  const RecentPlan({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: CachedNetworkImage(
            imageUrl: 'https://placehold.jp/80x50.png',
            width: context.deviceWidth * 0.22,
            fit: BoxFit.cover,
          ),
        ),
        const SizedBox(width: 8),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: AppTextStyle.textStyle.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 4),
            const CategoryTags(
              tags: ['所要時間: 1時間〜', '人数: １人', '＃ショッピング', '＃お出かけ'],
              tagColor: AppColor.blue50Background,
              spacing: 8,
            ),
          ],
        ),
      ],
    );
  }
}
