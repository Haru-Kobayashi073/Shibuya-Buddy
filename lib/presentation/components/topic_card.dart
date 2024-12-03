import 'package:flutter/material.dart';

import '../../utils/styles/app_color.dart';
import '../../utils/styles/app_text_style.dart';

Color rankingColor(int? ranking) {
  switch (ranking) {
    case 1:
      return AppColor.yellow900Tertiary;
    case 2:
      return AppColor.blue900Tertiary;
    case 3:
      return AppColor.yellow600Primary;
    case null:
      return AppColor.grey600;
    default:
      return AppColor.grey600;
  }
}

class TopicCard extends StatelessWidget {
  const TopicCard({
    super.key,
    required this.title,
    required this.imagePath,
    required this.numberOfTopics,
    required this.ranking,
  });
  final String title;
  final String imagePath;
  final int numberOfTopics;
  final int? ranking;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: (MediaQuery.of(context).size.width - 44) / 2,
      child: GestureDetector(
        onTap: () {
          debugPrint('タップ$title');
          debugPrint(ranking.toString());
        },
        child: DecoratedBox(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            alignment: Alignment.topLeft,
            children: <Widget>[
              Column(
                children: [
                  AspectRatio(
                    aspectRatio: 16 / 12,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(12),
                          topRight: Radius.circular(12),
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
                    child: DecoratedBox(
                      decoration: const BoxDecoration(
                        color: AppColor.blue50Background,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(12),
                          bottomRight: Radius.circular(12),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Row(
                          children: [
                            Expanded(
                              child: Text(
                                title,
                                overflow: TextOverflow.ellipsis,
                                style: AppTextStyle.textStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  overflow: TextOverflow.clip,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 5),
                              child: Text(
                                '$numberOfTopics件~',
                                style: const TextStyle(
                                  fontSize: 12,
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
              Offstage(
                offstage: ranking == null ? true : false,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                        bottomRight: Radius.circular(80),
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                        bottomLeft: Radius.circular(20),
                      ),
                      color: rankingColor(ranking),
                    ),
                    width: 45,
                    height: 45, //数値固定を修正
                    child: Align(
                      alignment: const Alignment(-0.1, -0.3),
                      child: Text(
                        '$ranking',
                        style: AppTextStyle.textStyle.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: AppColor.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
