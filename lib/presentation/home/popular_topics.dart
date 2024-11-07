import 'package:flutter/material.dart';
import 'topicCard.dart';

class PopularTopics extends StatelessWidget {
  const PopularTopics({super.key});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    return Column(children: [
      Padding(
        padding: EdgeInsets.only(left: 15, bottom: 0),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "人気のトピック",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Icon(Icons.chevron_right, size: 40),
            ],
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(left: 10),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              topicCard(
                title: "アニメ",
                imagePath: "images/sample.jpg",
                screenHeight: screenHeight,
              ),
              topicCard(
                title: "ショッピング",
                imagePath: "images/sample.jpg",
                screenHeight: screenHeight,
              ),
              topicCard(
                title: "アクティビティー",
                imagePath: "images/sample.jpg",
                screenHeight: screenHeight,
              ),
              topicCard(
                title: "グルメ",
                imagePath: "images/sample.jpg",
                screenHeight: screenHeight,
              ),
            ],
          ),
        ),
      )
    ]);
  }
}
