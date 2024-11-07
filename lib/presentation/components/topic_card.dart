import 'package:flutter/material.dart';

class TopicCard extends StatelessWidget {
  const TopicCard({
    super.key,
    required this.title,
    required this.imagePath,
    required this.numberOfTopics,
  });
  final String title;
  final String imagePath;
  final int numberOfTopics;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final cardHeight = screenHeight * 0.2;
    final cardWidth = cardHeight * (5 / 4);

    return SizedBox(
      width: cardWidth,
      child: AspectRatio(
        aspectRatio: 16 / 11,
        child: GestureDetector(
          onTap: () {
            debugPrint('タップ$title');
          },
          child: Padding(
            padding: const EdgeInsets.only(left: 5),
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: const Color.fromRGBO(255, 255, 255, 0.5),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                children: [
                  AspectRatio(
                    aspectRatio: 16 / 8,
                    child: Container(
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
                  ),
                  AspectRatio(
                    aspectRatio: 16 / 3,
                    child: Container(
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
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                '$numberOfTopics件~',
                                style: const TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
