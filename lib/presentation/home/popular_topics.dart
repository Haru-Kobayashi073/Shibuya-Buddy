import 'package:flutter/material.dart';
import '../components/topicCard.dart';

class PopularTopics extends StatelessWidget {
  const PopularTopics({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: EdgeInsets.only(left: 15, bottom: 0),
        child: Align(
            alignment: Alignment.centerLeft,
            child: GestureDetector(
                onTap: () {
                  print("人気のトピック");
                },
                child: Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "人気のトピック",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 3),
                        child: Icon(Icons.arrow_forward_ios, size: 23),
                      )
                    ],
                  ),
                ))),
      ),
      Padding(
        padding: EdgeInsets.only(left: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              topicCard(
                title: "アニメ",
                imagePath: "images/anime.png",
                number_ofTopics: 30,
              ),
              topicCard(
                title: "ショッピング",
                imagePath: "images/shopping.png",
                number_ofTopics: 208,
              ),
              topicCard(
                title: "アクティビティー",
                imagePath: "images/activity.png",
                number_ofTopics: 16,
              ),
              topicCard(
                title: "グルメ",
                imagePath: "images/gourmet.png",
                number_ofTopics: 430,
              ),
              topicCard(
                title: "グルメ",
                imagePath: "images/gourmet.png",
                number_ofTopics: 430,
              ),
              topicCard(
                title: "グルメ",
                imagePath: "images/gourmet.png",
                number_ofTopics: 430,
              ),
              topicCard(
                title: "グルメ",
                imagePath: "images/gourmet.png",
                number_ofTopics: 430,
              ),
              topicCard(
                title: "グルメ",
                imagePath: "images/gourmet.png",
                number_ofTopics: 430,
              ),
            ],
          ),
        ),
      )
    ]);
  }
}
