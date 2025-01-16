import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../domain/entities/topic.dart';
import '../../i18n/strings.g.dart';
import '../../utils/extensions/context.dart';
import '../../utils/styles/app_color.dart';
import '../../utils/styles/app_text_style.dart';
import 'presistent_cached_network_image.dart';
import 'ranking_label.dart';

class TopicCard extends StatelessWidget {
  const TopicCard({
    super.key,
    required this.topic,
    this.enableRanking = false,
  });
  final Topic topic;
  final bool enableRanking;

  @override
  Widget build(BuildContext context) {
    final i18n = Translations.of(context);

    return SizedBox(
      width: (context.deviceWidth - 40) / 2,
      child: GestureDetector(
        onTap: () {},
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
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(12),
                        topRight: Radius.circular(12),
                      ),
                      child: PersistentCachedNetworkImage(
                        imageUrl: topic.thumbnailUrl,
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
                          i18n.homePage.popularTopics
                              .numberOfTopics(number: topic.totalCount),
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
              if (enableRanking) RankingLabel(ranking: topic.ranking),
            ],
          ),
        ),
      ),
    );
  }
}
