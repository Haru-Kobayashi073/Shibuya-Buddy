import 'package:flutter/material.dart';
import '../../utils/styles/app_color.dart';
import '../../utils/styles/app_text_style.dart';

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
    final size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.47,
      // child: AspectRatio(
      //   aspectRatio: 16 / 11,
      child: GestureDetector(
        onTap: () {
          debugPrint('タップ$title');
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 5),
          child: DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                AspectRatio(
                  aspectRatio: 16 / 12,
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
                    decoration: const BoxDecoration(
                      color: AppColor.blue50Background,
                      borderRadius: BorderRadius.only(
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
                            style: AppTextStyle.textStyle.copyWith(
                              fontSize: 15,
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
    );
    // );
  }
}
