import 'package:flutter/material.dart';

import '../../../utils/styles/app_color.dart';
import '../../../utils/styles/app_text_style.dart';
import '../../home/components/category_tags.dart';

class PlanHeader extends StatelessWidget {
  const PlanHeader({
    super.key,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.tags,
  });
  final String title;
  final String description;
  final String? imageUrl;
  final List<String> tags;
  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    final screenWidth = mediaQueryData.size.width;
    return Column(
      children: [
        SizedBox(
          width: screenWidth,
          child: Image(
            image: NetworkImage(imageUrl.toString()),
            errorBuilder: (c, o, s) {
              return const SizedBox(
                height: 116,
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  title,
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
                    tags: tags,
                    tagColor: AppColor.grey200,
                    spacing: 4,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  description,
                  style: AppTextStyle.textStyle.copyWith(fontSize: 14),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
