import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../../../i18n/strings.g.dart';
import '../../../utils/styles/app_color.dart';
import '../../../utils/styles/app_text_style.dart';

class GradeBasedFeatures extends StatelessWidget {
  const GradeBasedFeatures({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = AppTextStyle.textStyle.copyWith(
      fontSize: 14,
    );

    final headerStyle = AppTextStyle.textStyle.copyWith(
      fontSize: 10,
      fontWeight: FontWeight.bold,
    );

    return Column(
      children: [
        // タイトルを多言語化
        Text(
          t.billDetailsPage.features.title,
          style: AppTextStyle.textStyle.copyWith(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 16),
        Table(
          columnWidths: const {
            0: FlexColumnWidth(2.5),
            1: FlexColumnWidth(),
            2: FlexColumnWidth(),
          },
          border: const TableBorder(
            horizontalInside: BorderSide(
              color: Colors.grey,
              width: 0.5,
            ),
          ),
          children: [
            // ───────────── ヘッダー行 ─────────────
            TableRow(
              children: [
                const SizedBox(), // 左上は空欄
                _headerCell(
                  t.billDetailsPage.features.columns.standard.label,
                  headerStyle,
                ),
                _headerCell(
                  t.billDetailsPage.features.columns.premium.label,
                  headerStyle,
                  hasBackground: true,
                ),
              ],
            ),

            // ───────────── データ行 ─────────────
            _buildRow(
              label: t.billDetailsPage.features.rows.planCreationLimit,
              standard:
                  t.billDetailsPage.features.columns.standard.planCreationLimit,
              premium:
                  t.billDetailsPage.features.columns.premium.planCreationLimit,
              textStyle: textStyle,
            ),
            _buildRow(
              label: t.billDetailsPage.features.rows.chatLimit,
              standard: t.billDetailsPage.features.columns.standard.chatLimit,
              premium: t.billDetailsPage.features.columns.premium.chatLimit,
              textStyle: textStyle,
            ),
            _buildRow(
              label: t.billDetailsPage.features.rows.timelineAccess,
              standard: Symbols.close,
              premium: Symbols.circle,
              textStyle: textStyle,
            ),
            _buildRow(
              label: t.billDetailsPage.features.rows.adFree,
              standard: Symbols.close,
              premium: Symbols.circle,
              textStyle: textStyle,
            ),
            _buildRow(
              label: t.billDetailsPage.features.rows.exclusiveFeatures,
              standard: Symbols.close,
              premium: Symbols.circle,
              textStyle: textStyle,
            ),
          ],
        ),
      ],
    );
  }

  /// ヘッダーセル
  Widget _headerCell(
    String text,
    TextStyle style, {
    bool hasBackground = false,
  }) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(8),
        topRight: Radius.circular(8),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
        alignment: Alignment.center,
        color: hasBackground
            ? AppColor.yellow200
            : Colors.transparent, // 背景色を条件付きで設定
        child: FittedBox(
          fit: BoxFit.scaleDown, // テキストが親のサイズに収まるよう縮小
          child: Text(
            text,
            style: style,
            textAlign: TextAlign.center, // 中央揃え
            maxLines: 1, // 最大1行に制限
            softWrap: false, // 強制的に改行を防止
          ),
        ),
      ),
    );
  }

  /// 左列のセル
  Widget _leftCell(String text, TextStyle style) {
    return TableCell(
      verticalAlignment: TableCellVerticalAlignment.middle,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Text(
          text,
          style: style,
          textAlign: TextAlign.start,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
        ),
      ),
    );
  }

  /// スタンダード列のセル
  Widget _standardCell({
    String? text,
    IconData? icon,
    required TextStyle style,
  }) {
    assert(
      (text != null && icon == null) || (text == null && icon != null),
      'Either text or icon must be provided, not both or neither.',
    );

    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 8),
      alignment: Alignment.center,
      child: text != null
          ? Text(
              text,
              style: style,
              textAlign: TextAlign.center,
            )
          : Icon(
              icon,
              size: 24,
              color: style.color,
            ),
    );
  }

  /// プレミアム列のセル
  Widget _premiumCell({
    String? text,
    IconData? icon,
    required TextStyle style,
  }) {
    assert(
      (text != null && icon == null) || (text == null && icon != null),
      'Either text or icon must be provided, not both or neither.',
    );

    return Container(
      color: AppColor.yellow200,
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 8),
      alignment: Alignment.center,
      child: text != null
          ? Text(
              text,
              style: style,
              textAlign: TextAlign.center,
            )
          : Icon(
              icon,
              size: 24,
              color: style.color,
            ),
    );
  }

  /// 1行ぶんのTableRowを作るショートハンド
  TableRow _buildRow({
    required String label,
    required dynamic standard, // TextかIconかを動的に受け入れる
    required dynamic premium, // TextかIconかを動的に受け入れる
    required TextStyle textStyle,
  }) {
    return TableRow(
      children: [
        _leftCell(label, textStyle),
        if (standard is String)
          _standardCell(text: standard, style: textStyle)
        else
          standard is IconData
              ? _standardCell(icon: standard, style: textStyle)
              : throw ArgumentError(
                  'Standard must be either a String or IconData',
                ),
        if (premium is String)
          _premiumCell(text: premium, style: textStyle)
        else
          premium is IconData
              ? _premiumCell(icon: premium, style: textStyle)
              : throw ArgumentError(
                  'Premium must be either a String or IconData',
                ),
      ],
    );
  }
}
