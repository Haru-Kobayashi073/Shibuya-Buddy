import 'package:flutter/material.dart';

import '/gen/assets.gen.dart';
import '../../components/topic_card.dart';
import 'section_title.dart';

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

class PopularTopics extends StatelessWidget {
  const PopularTopics({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SectionTitle.medium(
            label: '人気のトピック',
            onPressed: () {},
          ),
          const SizedBox(height: 16),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Wrap(
              spacing: 8,
              children: topics.entries.map(
                (entry) {
                  final title = entry.key;
                  final path = entry.value;
                  final imagePath = path.values.first;
                  final numberOfTopics = path.keys.first;

                  return TopicCard(
                    title: title,
                    imagePath: imagePath,
                    numberOfTopics: numberOfTopics,
                    onTap: () {},
                  );
                },
              ).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
