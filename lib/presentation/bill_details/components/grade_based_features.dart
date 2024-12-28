import 'package:flutter/material.dart';

import '../../../utils/styles/app_color.dart'; // 実際のパスに合わせてインポート
import '../../../utils/styles/app_text_style.dart';

class GradeBasedFeatures extends StatelessWidget {
  const GradeBasedFeatures({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = AppTextStyle.textStyle.copyWith(
      fontSize: 12,
    );

    return Column(
      children: [
        Text(
          'グレードごとの機能',
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
                  'スタンダード',
                  textStyle,
                ),
                _headerCell('プレミアム', textStyle, hasBackground: true),
              ],
            ),

            // ───────────── データ行 ─────────────
            _buildRow(
              label: 'プランの作成可能回数',
              standard: '2回',
              premium: '無制限',
              textStyle: textStyle,
            ),
            _buildRow(
              label: 'プラン作成中のチャット可能回数',
              standard: '3回',
              premium: '無制限',
              textStyle: textStyle,
            ),
            _buildRow(
              label: '全プラン一覧のタイムライン閲覧',
              standard: '×',
              premium: '〇',
              textStyle: textStyle,
            ),
            _buildRow(
              label: '広告の非表示',
              standard: '×',
              premium: '〇',
              textStyle: textStyle,
            ),
            _buildRow(
              label: 'プランの翻訳機能',
              standard: '×',
              premium: '〇',
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
        child: Text(
          text,
          style: style.copyWith(fontWeight: FontWeight.bold),
          textAlign: TextAlign.end,
        ),
      ),
    );
  }

  /// 通常セル（左列やスタンダード列用）
  Widget _cell(String text, TextStyle style, {bool center = false}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 8),
      child: Text(
        text,
        style: style,
        textAlign: center ? TextAlign.center : TextAlign.start,
      ),
    );
  }

  /// プレミアム列のセル（背景色をつけ、中央寄せ）
  Widget _premiumCell(String text, TextStyle style) {
    return Container(
      color: AppColor.yellow200,
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 8),
      child: Text(
        text,
        style: style,
        textAlign: TextAlign.center,
      ),
    );
  }

  /// 1行ぶんのTableRowを作るショートハンド
  TableRow _buildRow({
    required String label,
    required String standard,
    required String premium,
    required TextStyle textStyle,
  }) {
    return TableRow(
      children: [
        _cell(label, textStyle),
        _cell(standard, textStyle, center: true),
        _premiumCell(premium, textStyle),
      ],
    );
  }
}
