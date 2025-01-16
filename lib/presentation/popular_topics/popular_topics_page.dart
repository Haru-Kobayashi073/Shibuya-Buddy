import 'package:flutter/material.dart';

import '../../domain/entities/topic.dart';
import '../../i18n/strings.g.dart';
import '../../utils/styles/app_text_style.dart';
import '../components/topic_card.dart';

class PopularTopicsPage extends StatelessWidget {
  const PopularTopicsPage({super.key, required this.topics});
  final List<Topic> topics;

  @override
  Widget build(BuildContext context) {
    final i18n = Translations.of(context);
    final title = i18n.popularTopics.sectionName;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: AppTextStyle.textStyle.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          child: Wrap(
            spacing: 8,
            runSpacing: 8,
            children: topics.map((topic) => TopicCard(topic: topic)).toList(),
          ),
        ),
      ),
    );
  }
}
