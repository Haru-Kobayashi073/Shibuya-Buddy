import 'package:flutter/material.dart';

import '/gen/assets.gen.dart';
import '../../domain/entities/topic.dart';
import '../../i18n/strings.g.dart';
import '../../utils/styles/app_text_style.dart';
import '../components/topic_card.dart';

class PopularTopicsPage extends StatelessWidget {
  const PopularTopicsPage({super.key});
  @override
  Widget build(BuildContext context) {
    final i18n = Translations.of(context);
    final title = i18n.popularTopics.sectionName;

    final topics = [
      Topic(
        name: 'アニメ',
        thumbnailUrl: Assets.images.anime.path,
        ranking: 1,
        totalCount: 30,
      ),
      Topic(
        name: 'ショッピング',
        thumbnailUrl: Assets.images.shopping.path,
        ranking: 2,
        totalCount: 300,
      ),
      Topic(
        name: 'アクティビティー',
        thumbnailUrl: Assets.images.activity.path,
        ranking: 3,
        totalCount: 30,
      ),
      Topic(
        name: 'グルメ',
        thumbnailUrl: Assets.images.gourmet.path,
        ranking: 4,
        totalCount: 30,
      ),
      Topic(
        name: 'もじもじもじもじもじもじもじもじもじもじもじもじもじもじもじ',
        thumbnailUrl: Assets.images.gourmet.path,
        ranking: 5,
        totalCount: 30,
      ),
    ];
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
