import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../domain/entities/topic.dart';
import '../../utils/extensions/context.dart';
import '../../utils/styles/app_color.dart';
import '../../utils/styles/app_text_style.dart';
import 'ranking_label.dart';

class TopicCard extends StatelessWidget {
  const TopicCard({super.key, required this.topic});
  final Topic topic;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: (context.deviceWidth - 40) / 2,
      child: GestureDetector(
        onTap: () {},
        child: Stack(
          alignment: Alignment.topLeft,
          children: <Widget>[
            Column(
              children: [
                AspectRatio(
                  aspectRatio: 16 / 12,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                    ),
                    child: Image.asset(
                      topic.thumbnailUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: AppColor.blue50Background,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                  ),
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      Flexible(
                        child: Text(
                          topic.name,
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
                        '${topic.totalCount}件~',
                        style: AppTextStyle.textStyle.copyWith(
                          fontSize: 12,
                          color: AppColor.black,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            RankingLabel(ranking: topic.ranking),
          ],
        ),
      ),
    );
  }
}
