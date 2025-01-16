import 'package:flutter/material.dart';

import '/gen/assets.gen.dart';
import '../../../domain/entities/topic.dart';
import '../../../i18n/strings.g.dart';
import '../../../utils/routes/app_router.dart';
import '../../components/topic_card.dart';
import 'section_title.dart';

class PopularTopics extends StatelessWidget {
  const PopularTopics({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = Translations.of(context);

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

    return Padding(
      padding: const EdgeInsets.only(left: 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SectionTitle.medium(
            label: i18n.homePage.popularTopics.title,
            onPressed: () async {
              await const PopularTopicsPageRouteData().push<void>(context);
            },
          ),
          const SizedBox(height: 8),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Wrap(
              spacing: 8,
              children: topics.map((topic) => TopicCard(topic: topic)).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
