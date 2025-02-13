import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../utils/styles/app_color.dart';
import '../../utils/styles/app_text_style.dart';

class ExpandableText extends HookWidget {
  const ExpandableText(
    this.text, {
    super.key,
    this.textColor = AppColor.black,
    this.trimLines = 3,
  });
  final String text;
  final int trimLines;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    const ellipsis = '...';
    const moreText = ' もっと見る';
    const lessText = ' 閉じる';
    const colorClickableText = AppColor.blue600Primary;
    final isExpanded = useState(false);

    void toggleReadMoreOrLess() {
      isExpanded.value = !isExpanded.value;
    }

    final toggleTextSpan = TextSpan(
      text: isExpanded.value ? lessText : moreText,
      style: const TextStyle(color: colorClickableText),
      recognizer: TapGestureRecognizer()..onTap = toggleReadMoreOrLess,
    );
    final ellipsisTextSpan = TextSpan(
      text: ellipsis,
      style: AppTextStyle.textStyle.copyWith(fontSize: 14),
    );
    final mainTextSpan = TextSpan(
      text: text,
      style: AppTextStyle.textStyle.copyWith(fontSize: 14),
    );

    return LayoutBuilder(
      builder: (_, constraints) {
        assert(constraints.hasBoundedWidth);

        final textPainter = TextPainter(
          text: toggleTextSpan,
          textDirection: TextDirection.ltr,
          maxLines: trimLines,
        )..layout(
            minWidth: constraints.minWidth,
            maxWidth: constraints.maxWidth,
          );
        final toggleTextSize = textPainter.size;

        textPainter
          ..text = mainTextSpan
          ..layout(
            minWidth: constraints.minWidth,
            maxWidth: constraints.maxWidth,
          );
        final textSize = textPainter.size;

        final pos = textPainter.getPositionForOffset(
          Offset(textSize.width - toggleTextSize.width, textSize.height),
        );
        final endIndex = textPainter.getOffsetBefore(pos.offset);

        TextSpan displayTextSpan;
        if (textPainter.didExceedMaxLines) {
          displayTextSpan = TextSpan(
            text: isExpanded.value ? text : text.substring(0, endIndex),
            style: AppTextStyle.textStyle.copyWith(fontSize: 14),
            children: isExpanded.value
                ? <TextSpan>[toggleTextSpan]
                : <TextSpan>[ellipsisTextSpan, toggleTextSpan],
          );
        } else {
          displayTextSpan = mainTextSpan;
        }

        return RichText(
          text: displayTextSpan,
          overflow: TextOverflow.ellipsis,
          maxLines: isExpanded.value ? 100 : trimLines,
        );
      },
    );
  }
}
