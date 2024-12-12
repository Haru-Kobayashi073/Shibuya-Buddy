import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../utils/styles/app_text_style.dart';
import '../create_plan_notifier.dart';
import '../create_plan_state.dart';

class SelectionModal extends ConsumerWidget {
  const SelectionModal({
    super.key,
    required this.selectionList,
    required this.field,
    required this.title,
    this.isSingleSelect = false,
  });

  final List<String> selectionList;
  final SelectionField field;
  final String title;
  final bool isSingleSelect;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(createPlanNotifierProvider);

    // Retrieve the selected items for the given field
    List<String> selectedItems;
    switch (field) {
      case SelectionField.transport:
        selectedItems = state.selectedTransport;
      case SelectionField.numberOfPeople:
        selectedItems = state.selectedNumberofPeople;
      case SelectionField.category:
        selectedItems = state.selectedCategory;
    }

    return Container(
      padding: const EdgeInsets.all(16),
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
                icon: const Icon(Icons.close),
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
                return GestureDetector(
                  onTap: () {
                    if (isSingleSelect) {
                      ref
                          .read(createPlanNotifierProvider.notifier)
                          .updateSingleSelection(field, item);
                    } else {
                      ref
                          .read(createPlanNotifierProvider.notifier)
                          .toggleSelection(field, item);
                    }
                  },
                  child: ListTile(
                    contentPadding: EdgeInsets.zero,
                    dense: true,
                    title: Text(item),
                    leading: isSingleSelect
                        ? Checkbox(
                            value: selectedItems.contains(item),
                            onChanged: (isChecked) {
                              ref
                                  .read(createPlanNotifierProvider.notifier)
                                  .updateSingleSelection(field, item);
                            },
                          )
                        : Checkbox(
                            value: selectedItems.contains(item),
                            onChanged: (isChecked) {
                              ref
                                  .read(createPlanNotifierProvider.notifier)
                                  .toggleSelection(field, item);
                            },
                          ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
