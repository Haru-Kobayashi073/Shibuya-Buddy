import 'package:flutter/material.dart';

Widget? createCard(String title, String path) {
  return Container(
    height: 200,
    width: 250,
    decoration: BoxDecoration(
      color: Colors.grey,
      borderRadius: BorderRadius.circular(20),
    ),
    child: Column(
      children: [
        Container(
          height: 160,
          width: 250,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20),
              topRight: Radius.circular(20),
            ),
            image: DecorationImage(
              image: AssetImage(path),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: 40,
          width: 250,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          child: Text(
            title,
            style: TextStyle(
              fontSize: 16,
              color: Colors.black87,
            ),
          ),
        ),
      ],
    ),
  );
}

class PopularTopics extends StatelessWidget {
  const PopularTopics({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Align(
        alignment: Alignment.centerLeft,
        child: Text(
          "人気のトピック",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
      SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            createCard("アニメ", "images/sample.jpg") ?? Container(),
            createCard("ショッピング", "images/sample.jpg") ?? Container(),
            createCard("アクティビティー", "images/sample.jpg") ?? Container(),
            createCard("グルメ", "images/sample.jpg") ?? Container()
          ]))
    ]);
  }
}
