import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../i18n/strings.g.dart';
import '../../../utils/styles/app_color.dart';
import '../../../utils/styles/app_text_style.dart';

class GradeBasedFeatures extends StatelessWidget {
  const GradeBasedFeatures({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildTitle(),
        const Gap(16),
        _buildFeatureTable(),
      ],
    );
  }

  Widget _buildTitle() {
    return Text(
      t.billDetailsPage.features.title,
      style: AppTextStyle.textStyle
          .copyWith(fontSize: 24, fontWeight: FontWeight.bold),
    );
  }

  Widget _buildFeatureTable() {
    final textStyle =
        AppTextStyle.textStyle.copyWith(fontSize: 14, height: 1.5);
    final headerStyle = AppTextStyle.textStyle
        .copyWith(fontSize: 14, fontWeight: FontWeight.bold);

    return Table(
      columnWidths: const {
        0: FlexColumnWidth(2.5),
        1: FlexColumnWidth(),
        2: FlexColumnWidth(),
      },
      border: const TableBorder(
        horizontalInside: BorderSide(color: Colors.grey, width: 0.5),
      ),
      children: [
        TableRow(
          children: [
            const SizedBox(),
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
        ..._buildFeatureRows(textStyle),
      ],
    );
  }

  List<TableRow> _buildFeatureRows(TextStyle textStyle) {
    final rows = [
      [
        t.billDetailsPage.features.rows.planCreationLimit,
        t.billDetailsPage.features.columns.standard.planCreationLimit,
        t.billDetailsPage.features.columns.premium.planCreationLimit,
      ],
      [
        t.billDetailsPage.features.rows.chatLimit,
        t.billDetailsPage.features.columns.standard.chatLimit,
        t.billDetailsPage.features.columns.premium.chatLimit,
      ],
      // [
      //   t.billDetailsPage.features.rows.timelineAccess,
      //   Symbols.close,
      //   Symbols.circle,
      // ],
      // ignore: lines_longer_than_80_chars
      // [t.billDetailsPage.features.rows.adFree, Symbols.close, Symbols.circle],
      // [
      //   t.billDetailsPage.features.rows.exclusiveFeatures,
      //   Symbols.close,
      //   Symbols.circle,
      // ],
    ];

    return rows.map((row) {
      return _buildRow(
        label: row[0],
        standard: row[1],
        premium: row[2],
        textStyle: textStyle,
      );
    }).toList();
  }

  Widget _headerCell(
    String text,
    TextStyle style, {
    bool hasBackground = false,
  }) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
        ),
        color: hasBackground ? AppColor.yellow200 : Colors.transparent,
      ),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      alignment: Alignment.center,
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          text,
          style: style,
          textAlign: TextAlign.center,
          maxLines: 1,
          softWrap: false,
        ),
      ),
    );
  }

  Widget _tableCell({
    String? text,
    IconData? icon,
    TextStyle? style,
    bool hasBackground = false,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 8),
      alignment: Alignment.center,
      color: hasBackground ? AppColor.yellow200 : Colors.transparent,
      child: text != null
          ? Text(text, style: style, textAlign: TextAlign.center)
          : Icon(icon, size: 24, color: style?.color),
    );
  }

  TableRow _buildRow({
    required String label,
    required dynamic standard,
    required dynamic premium,
    required TextStyle textStyle,
  }) {
    return TableRow(
      children: [
        TableCell(
          verticalAlignment: TableCellVerticalAlignment.middle,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              label,
              style: textStyle,
              textAlign: TextAlign.start,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        _tableCell(
          text: standard is String ? standard : null,
          icon: standard is IconData ? standard : null,
          style: textStyle,
        ),
        _tableCell(
          text: premium is String ? premium : null,
          icon: premium is IconData ? premium : null,
          style: textStyle,
          hasBackground: true,
        ),
      ],
    );
  }
}
