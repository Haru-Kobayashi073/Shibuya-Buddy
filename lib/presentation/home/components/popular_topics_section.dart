import 'package:flutter/material.dart';

import '../../../domain/entities/topic.dart';
import '../../../i18n/strings.g.dart';
import '../../../utils/routes/app_router.dart';
import '../../components/topic_card.dart';
import 'section_title.dart';

class PopularTopicsSection extends StatelessWidget {
  const PopularTopicsSection({super.key, required this.topics});
  final List<Topic> topics;

  @override
  Widget build(BuildContext context) {
    final i18n = Translations.of(context);

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
              children: topics.map((topic) {
                return TopicCard(
                  title: topic.name,
                  imagePath: topic.thumbnailUrl,
                  numberOfTopics: topic.totalCount,
                  ranking: topic.ranking,
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
