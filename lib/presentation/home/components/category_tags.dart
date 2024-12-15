import 'package:flutter/material.dart';

import '../../../utils/styles/app_text_style.dart';

class CategoryTags extends StatelessWidget {
  const CategoryTags({
    super.key,
    required this.tags,
    required this.tagColor,
    required this.spacing,
  });

  final List<String> tags;
  final Color tagColor;
  final int spacing;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Wrap(
          spacing: spacing.toDouble(),
          runSpacing: 3,
          children: _buildTagWidgets(constraints.maxWidth),
        );
      },
    );
  }

  List<Widget> _buildTagWidgets(double maxWidth) {
    final tagWidgets = <Widget>[];
    var currentLineWidth = 0;

    for (final tag in tags) {
      final tagWidth = _calculateTagWidth(tag);
      if (currentLineWidth + tagWidth > maxWidth) {
        tagWidgets.add(_buildEllipsisTag());
        break;
      }

      tagWidgets.add(_buildTag(tag));
      currentLineWidth += tagWidth.toInt();
    }

    return tagWidgets;
  }

  double _calculateTagWidth(String tag) {
    // タグの幅を計算するための定数を明確に定義
    return (tag.length * 6.0) + spacing * 2;
  }

  Widget _buildTag(String tag) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      decoration: BoxDecoration(
        color: tagColor,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        tag,
        style: AppTextStyle.textStyle.copyWith(
          fontSize: 10,
          fontWeight: FontWeight.w800,
        ),
        overflow: TextOverflow.ellipsis,
        maxLines: 1,
      ),
    );
  }

  Widget _buildEllipsisTag() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 3),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(
        '...',
        style: AppTextStyle.textStyle.copyWith(
          fontSize: 16,
          fontWeight: FontWeight.w800,
        ),
      ),
    );
  }
}
