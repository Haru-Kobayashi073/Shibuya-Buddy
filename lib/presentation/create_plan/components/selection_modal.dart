import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../../../utils/styles/app_color.dart';
import '../../../utils/styles/app_text_style.dart';
import '../create_plan_notifier.dart';

class SelectionModal extends ConsumerWidget {
  const SelectionModal({
    super.key,
    required this.selectionList,
    required this.field,
    required this.title,
    this.isSingleSelect = false,
    required this.onTapCheckBox,
  });

  final List<String> selectionList;
  final SelectionField field;
  final String title;
  final bool isSingleSelect;
  final void Function(String item) onTapCheckBox;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(createPlanNotifierProvider);

    var selectedItems = <String>[];
    switch (field) {
      case SelectionField.transport:
        selectedItems = state.transports;
      case SelectionField.numberOfPeople:
        selectedItems.add(state.numberOfPeople);
      case SelectionField.category:
        selectedItems = state.categories;
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
