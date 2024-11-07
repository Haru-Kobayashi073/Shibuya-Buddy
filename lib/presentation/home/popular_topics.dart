import 'package:flutter/material.dart';
import '/gen/assets.gen.dart';
import '../components/topic_card.dart';

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
          padding: const EdgeInsets.only(left: 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                TopicCard(
                  title: 'アニメ',
                  imagePath: Assets.images.anime.path,
                  numberOfTopics: 30,
                ),
                TopicCard(
                  title: 'ショッピング',
                  imagePath: Assets.images.shopping.path,
                  numberOfTopics: 208,
                ),
                TopicCard(
                  title: 'アクティビティー',
                  imagePath: Assets.images.activity.path,
                  numberOfTopics: 16,
                ),
                TopicCard(
                  title: 'グルメ',
                  imagePath: Assets.images.gourmet.path,
                  numberOfTopics: 430,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
