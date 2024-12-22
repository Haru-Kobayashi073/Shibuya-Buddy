import 'package:flutter/material.dart';

import '../../../utils/styles/app_color.dart';

class TopicChipField extends StatelessWidget {
  const TopicChipField({
    super.key,
    required this.topics,
    required this.selectedTopics,
    required this.onSelected,
  });

  final List<String> topics;
  final List<String> selectedTopics;
  final void Function(String topic, {required bool isSelected}) onSelected;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        children: [
          Wrap(
            spacing: 8,
            runSpacing: -4,
            children: topics
                .where((topic) => !selectedTopics.contains(topic))
                .map((topic) {
              return FilterChip(
                side: BorderSide.none,
                backgroundColor: AppColor.blue50Background,
                label: Text(topic),
                onSelected: (isSelected) {
                  onSelected(topic, isSelected: true);
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
