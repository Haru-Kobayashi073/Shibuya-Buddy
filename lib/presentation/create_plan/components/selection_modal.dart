import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../../../i18n/strings.g.dart';
import '../../../utils/styles/app_color.dart';
import '../../../utils/styles/app_text_style.dart';
import '../create_plan_notifier.dart';

class SelectionModal extends ConsumerWidget {
  const SelectionModal({
    super.key,
    required this.selectionField,
    required this.title,
    required this.onTapCheckBox,
  });

  final SelectionField selectionField;
  final String title;
  final void Function(String item) onTapCheckBox;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(createPlanNotifierProvider);
    var selectionList = <String>[]; // 選択肢
    var selectedItems = <String>[]; // 選択されたアイテム
    switch (selectionField) {
      case SelectionField.transport:
        selectionList = t.createPlanPage.transportOptions;
        selectedItems = state.requireValue.transports;
      case SelectionField.numberOfPeople:
        selectionList = t.createPlanPage.numberOfPeopleOptions;
        selectedItems.add(state.requireValue.numberOfPeople);
      case SelectionField.category:
        selectionList = t.createPlanPage.categoryOptions;
        selectedItems = state.requireValue.categories;
    }

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

enum SelectionField {
  transport,
  numberOfPeople,
  category,
}
