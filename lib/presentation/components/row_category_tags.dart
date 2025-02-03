import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/entities/topic.dart';
import '../../utils/providers/locale/locale_service.dart';
import '../../utils/styles/app_text_style.dart';

class RowCategoryTags extends ConsumerWidget {
  const RowCategoryTags({
    super.key,
    required this.topics,
    required this.tagColor,
    required this.spacing,
  });

  final List<Topic> topics;
  final Color tagColor;
  final int spacing;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localeNotifier = ref.read(localeServiceProvider.notifier);
    final tags = topics.map(localeNotifier.getTranslatedTopicName).toList();

    return LayoutBuilder(
      builder: (context, constraints) {
        return Row(
          children: _buildTagWidgets(constraints.maxWidth, tags),
        );
      },
    );
  }

  List<Widget> _buildTagWidgets(double maxWidth, List<String> tags) {
    final tagWidgets = <Widget>[];
    var currentLineWidth = 0;

    for (final tag in tags) {
      final tagWidget = _buildTag(tag);
      final tagWidth = _measureWidgetWidth(tagWidget);
      final endtagWidth = _measureWidgetWidth(buildEllipsisTag());

      if ((currentLineWidth + tagWidth + spacing + endtagWidth) > maxWidth) {
        tagWidgets.add(
          Padding(
            padding: EdgeInsets.only(right: spacing.toDouble()),
            child: buildEllipsisTag(),
          ),
        );
        break;
      }

      tagWidgets.add(
        Padding(
          padding: EdgeInsets.only(right: spacing.toDouble()),
          child: tagWidget,
        ),
      );
      currentLineWidth += tagWidth.toInt() + spacing;
    }

    return tagWidgets;
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
      ),
    );
  }

  Widget buildEllipsisTag() {
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

  //タグのテキストの横幅とスペースを足して計算するメソッド
  double _measureWidgetWidth(Widget widget) {
    final textWidget = widget as Container;
    final text = (textWidget.child! as Text).data ?? '';

    final textPainter = TextPainter(
      text: TextSpan(
        text: text,
        style: AppTextStyle.textStyle.copyWith(
          fontSize: 10,
          fontWeight: FontWeight.w800,
        ),
      ),
      textDirection: TextDirection.ltr,
    )..layout();
    return textPainter.width + 18;
  }
}
