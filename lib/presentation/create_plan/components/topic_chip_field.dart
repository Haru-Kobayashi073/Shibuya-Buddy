import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../domain/entities/topic.dart';
import '../../../utils/providers/locale/locale_service.dart';
import '../../../utils/styles/app_color.dart';

class TopicChipField extends ConsumerWidget {
  const TopicChipField({
    super.key,
    required this.topics,
    required this.selectedTopics,
    required this.onSelected,
  });

  final List<Topic> topics;
  final List<Topic> selectedTopics;
  final void Function(Topic topic, {required bool isSelected}) onSelected;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localeNotifier = ref.read(localeServiceProvider.notifier);
    return Align(
      alignment: Alignment.centerLeft,
      child: Wrap(
        spacing: 8,
        runSpacing: -4,
        children: topics.map((topic) {
          final isSelected = selectedTopics.contains(topic);
          return Theme(
            data: Theme.of(context).copyWith(
              splashColor: AppColor.grey400,
              highlightColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
            ),
            child: Material(
              color: Colors.transparent,
              child: FilterChip(
                selected: isSelected,
                backgroundColor: AppColor.blue50Background,
                selectedColor: AppColor.blue50Background,
                side: BorderSide(
                  color: isSelected
                      ? AppColor.blue800Secondary
                      : Colors.transparent,
                ),
                label: Text(
                  localeNotifier.getTranslatedTopicName(topic),
                  style: const TextStyle(color: AppColor.black),
                ),
                showCheckmark: false,
                onSelected: (value) {
                  onSelected(topic, isSelected: value);
                },
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}
