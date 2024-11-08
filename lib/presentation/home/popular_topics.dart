import 'package:flutter/material.dart';
import '/gen/assets.gen.dart';
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
};

class PopularTopics extends StatelessWidget {
  const PopularTopics({super.key});

  @override
  Widget build(BuildContext context) {
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
                debugPrint('人気のトピック');
              },
              child: const Padding(
                padding: EdgeInsets.only(bottom: 10),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      '人気のトピック',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 3),
                      child: Icon(Icons.arrow_forward_ios, size: 23),
                    ),
                  ],
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
          ),
        ),
      ],
    );
  }
}
