import 'package:flutter/material.dart';

class topicCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final int number_ofTopics;

  const topicCard({
    super.key,
    required this.title,
    required this.imagePath,
    required this.number_ofTopics,
  });

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double cardHeight = screenHeight * 0.18;
    double cardWidth = cardHeight * (5 / 4);

    return GestureDetector(
        onTap: () {
          print("タップ" + title);
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: Container(
            height: cardHeight,
            width: cardWidth,
            decoration: BoxDecoration(
              color: Color.fromRGBO(255, 255, 255, 0.5),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Container(
                  height: cardHeight * 0.75,
                  width: cardWidth,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    image: DecorationImage(
                      image: AssetImage(imagePath),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                    height: cardHeight * 0.25,
                    width: cardWidth,
                    padding: const EdgeInsets.only(left: 10, top: 7),
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 3, bottom: 8),
                      child: Row(
                        children: [
                          Text(
                            title,
                            style: const TextStyle(
                              fontSize: 16,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 5,
                            ),
                            child: Text(
                              number_ofTopics.toString() + "件~",
                              style: const TextStyle(
                                  fontSize: 10, fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    )),
              ],
            ),
          ),
        ));
  }
}
