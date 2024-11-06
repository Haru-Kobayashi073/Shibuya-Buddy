import 'package:flutter/material.dart';

Widget? createCard(String title, String path, double screenHeight) {
  double card_Height = screenHeight * 0.18;
  double card_Width = card_Height * (5 / 4);
  return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Container(
        height: card_Height,
        width: card_Width,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          children: [
            Container(
              height: card_Height * 0.75,
              width: card_Width,
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
              height: card_Height * 0.25,
              width: card_Width,
              padding: const EdgeInsets.only(left: 10, top: 7),
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
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ));
}

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
              createCard("アニメ", "images/sample.jpg", screenHeight) ??
                  Container(),
              createCard("ショッピング", "images/sample.jpg", screenHeight) ??
                  Container(),
              createCard("アクティビティー", "images/sample.jpg", screenHeight) ??
                  Container(),
              createCard("グルメ", "images/sample.jpg", screenHeight) ??
                  Container(),
            ],
          ),
        ),
      )
    ]);
  }
}
