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
                label: Text(
                  localeNotifier.getTranslatedTopicName(topic),
                ),
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
