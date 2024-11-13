import 'package:flutter/material.dart';

import '../../../utils/styles/app_color.dart';
import '../../../utils/styles/app_text_style.dart';

class CategoryTags extends StatelessWidget {
  const CategoryTags({super.key, required this.tags});
  final List<String> tags;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 8,
      runSpacing: 4,
      children: tags.map((tag) {
        return Container(
          padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
          decoration: BoxDecoration(
            color: AppColor.blue50Background,
            borderRadius: BorderRadius.circular(4),
          ),
          child: Text(
            tag,
            style: AppTextStyle.textStyle.copyWith(
              fontSize: 10,
            ),
          ),
        );
      }).toList(),
    );
  }
}
