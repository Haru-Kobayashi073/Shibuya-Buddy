import 'package:flutter/material.dart';

import '../../domain/entities/plan.dart';
import '../../utils/styles/app_color.dart';
import '../../utils/styles/app_text_style.dart';
import '../home/components/category_tags.dart';
import 'presistent_cached_network_image.dart';
import 'ranking_label.dart';

class PlanCard extends StatelessWidget {
  const PlanCard({super.key, required this.plan});
  final Plan plan;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: (MediaQuery.of(context).size.width - 44) / 2,
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minHeight: 100,
        ),
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
                      child: PersistentCachedNetworkImage(
                        imageUrl: plan.thumbnailUrl,
                      ),
                    ),
                  ),
                  AspectRatio(
                    aspectRatio: 16 / 7,
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
                        child: Column(
                          children: [
                            Flexible(
                              child: Text(
                                plan.title,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: AppTextStyle.textStyle.copyWith(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  overflow: TextOverflow.clip,
                                ),
                              ),
                            ),
                            Flexible(
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Offstage(
                                  child: CategoryTags(
                                    tags:
                                        plan.topics.map((e) => e.name).toList(),
                                    tagColor: AppColor.white,
                                    spacing: 4,
                                  ),
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
              RankingLabel(ranking: plan.ranking),
            ],
          ),
        ),
      ),
    );
  }
}
