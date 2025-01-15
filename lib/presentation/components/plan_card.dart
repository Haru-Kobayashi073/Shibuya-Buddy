import 'package:flutter/material.dart';

import '../../domain/entities/plan.dart';
import '../../utils/extensions/context.dart';
import '../../utils/routes/app_router.dart';
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
      width: (context.deviceWidth - 40) / 2,
      child: GestureDetector(
        onTap: () async => PlanDetailPageRouteData(plan).push<void>(context),
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
                Container(
                  decoration: const BoxDecoration(
                    color: AppColor.blue50Background,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
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
                      const SizedBox(height: 4),
                      Flexible(
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Offstage(
                            offstage: plan.topics.isEmpty,
                            child: CategoryTags(
                              tags: plan.topics.map((e) => e.name).toList(),
                              tagColor: AppColor.white,
                              spacing: 4,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            RankingLabel(ranking: plan.ranking),
          ],
        ),
      ),
    );
  }
}
