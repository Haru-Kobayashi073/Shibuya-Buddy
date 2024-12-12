import 'package:flutter/material.dart';

import '../../../utils/styles/app_color.dart';

class TopicChipField extends StatelessWidget {
  const TopicChipField({
    super.key,
    required this.topics,
    required this.selectedTopics,
    required this.onChange,
  });

  final List<String> topics;
  final List<String> selectedTopics;
  final ValueChanged<List<String>> onChange;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Wrap(
        spacing: 8,
        runSpacing: -4,
        children: topics
            .where((topic) => !selectedTopics.contains(topic))
            .map((topic) {
          return FilterChip(
            side: BorderSide.none,
            backgroundColor: AppColor.blue50Background,
            label: Text(
              topic,
            ),
            selected: selectedTopics.contains(topic),
            onSelected: (isSelected) {
              final updatedTopics = List<String>.from(selectedTopics);
              if (isSelected) {
                updatedTopics.add(topic);
              } else {
                updatedTopics.remove(topic);
              }
              onChange(updatedTopics);
            },
          );
        }).toList(),
      ),
    );
  }
}
