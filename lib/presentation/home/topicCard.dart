import 'package:flutter/material.dart';

class topicCard extends StatelessWidget {
  final String title;
  final String imagePath;
  final double screenHeight;

  const topicCard({
    super.key,
    required this.title,
    required this.imagePath,
    required this.screenHeight,
  });

  @override
  Widget build(BuildContext context) {
    double cardHeight = screenHeight * 0.18;
    double cardWidth = cardHeight * (5 / 4);

    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Container(
        height: cardHeight,
        width: cardWidth,
        decoration: BoxDecoration(
          color: Colors.grey,
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
              child: Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
