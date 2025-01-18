import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../../../utils/styles/app_color.dart';
import '../../../utils/styles/app_text_style.dart';

class SelectionModal extends StatelessWidget {
  const SelectionModal({
    super.key,
    required this.selectionList,
    required this.selectedItems,
    required this.title,
    this.isSingleSelect = false,
    required this.onTapCheckBox,
  });

  final List<String> selectionList;
  final List<String> selectedItems;
  final String title;
  final bool isSingleSelect;
  final void Function(String item) onTapCheckBox;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: AppTextStyle.textStyle.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              IconButton(
                icon: const Icon(Symbols.close),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
          const Divider(),
          Expanded(
            child: ListView.builder(
              padding: EdgeInsets.zero,
              itemCount: selectionList.length,
              itemBuilder: (context, index) {
                final item = selectionList[index];
                return CheckboxListTile(
                  contentPadding: EdgeInsets.zero,
                  controlAffinity: ListTileControlAffinity.leading,
                  fillColor: WidgetStateProperty.resolveWith((states) {
                    if (states.contains(WidgetState.selected)) {
                      return AppColor.yellow600Primary;
                    }
                    return AppColor.white;
                  }),
                  dense: true,
                  title: Text(
                    item,
                    style: AppTextStyle.textStyle.copyWith(
                      fontSize: 14,
                    ),
                  ),
                  value: selectedItems.contains(item),
                  onChanged: (_) => onTapCheckBox(item),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
