import 'package:flutter/material.dart';

import '/gen/assets.gen.dart';
import '../../../i18n/strings.g.dart';
import '../../../utils/routes/app_router.dart';
import '../../../utils/styles/app_text_style.dart';
import '../../components/topic_card.dart';

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
    final i18n = Translations.of(context);
    final section = i18n.PopularTopics.section_name;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 15,
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
              onTap: () {
                debugPrint(section);
              },
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16),
                child: GestureDetector(
                  onTap: () async {
                    await const PopularTopicsRouteData().push<void>(context);
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        section,
                        style: AppTextStyle.textStyle.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Icon(Icons.arrow_forward_ios, size: 20),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            left: 10,
          ),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: topics.entries.map((entry) {
                final title = entry.key;
                final path = entry.value;
                final pathWidgets = <Widget>[];
                for (final pathEntry in path.entries) {
                  final image = pathEntry.value;
                  final numberOfTopics = pathEntry.key;
                  pathWidgets.add(
                    Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: TopicCard(
                        title: title,
                        imagePath: image,
                        numberOfTopics: numberOfTopics,
                        ranking: null,
                      ),
                    ),
                  );
                }
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: pathWidgets,
                );
              }).toList(),
            ),
          ),
        ),
      ],
    );
  }
}
