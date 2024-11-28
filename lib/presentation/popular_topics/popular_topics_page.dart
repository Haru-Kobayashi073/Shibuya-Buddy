import 'package:flutter/material.dart';

import '/gen/assets.gen.dart';
import '../../i18n/strings.g.dart';
import '../../utils/styles/app_text_style.dart';
import '../components/topic_card.dart';

Map<String, Map<int, String>> topics = {
  'アニメ': {
    30: Assets.images.anime.path,
  },
  'ショッピング': {
    208: Assets.images.shopping.path,
  },
  'アクティビティー': {
    16: Assets.images.activity.path,
  },
  'グルメ': {
    430: Assets.images.gourmet.path,
  },
  'もじもじもじもじもじもじもじもじもじもじもじもじもじもじもじ': {
    430: Assets.images.gourmet.path,
  },
};

class PopularTopicsPage extends StatelessWidget {
  const PopularTopicsPage({super.key});
  @override
  Widget build(BuildContext context) {
    final i18n = Translations.of(context);
    final title = i18n.PopularTopics.section_name;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: AppTextStyle.textStyle.copyWith(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: topics.entries.map((entry) {
          final title = entry.key;
          final path = entry.value;
          final pathWidgets = <Widget>[];
          for (final pathEntry in path.entries) {
            final image = pathEntry.value;
            final numberOfTopics = pathEntry.key;
            pathWidgets.add(
              TopicCard(
                title: title,
                imagePath: image,
                numberOfTopics: numberOfTopics,
              ),
            );
          }
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: pathWidgets,
          );
        }).toList(),
      ),
    );
  }
}
