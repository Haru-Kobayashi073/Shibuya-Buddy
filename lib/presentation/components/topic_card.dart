import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../utils/styles/app_color.dart';
import '../../utils/styles/app_text_style.dart';
import 'ranking_label.dart';

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
                            Flexible(
                              child: Text(
                                title,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: AppTextStyle.textStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  overflow: TextOverflow.clip,
                                ),
                              ),
                            ),
                            const Gap(4),
                            Text(
                              '$numberOfTopics件~',
                              style: AppTextStyle.textStyle.copyWith(
                                fontSize: 12,
                                color: AppColor.black,
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
                offstage: ranking == null,
                child: Align(
                  alignment: Alignment.topLeft,
                  child: RankingLabel(ranking: ranking),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
