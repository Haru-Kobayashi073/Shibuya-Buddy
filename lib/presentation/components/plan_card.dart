import 'package:flutter/material.dart';

import '../../utils/styles/app_color.dart';
import '../../utils/styles/app_text_style.dart';
import '../home/components/category_tags.dart';
import 'ranking_label.dart';

class PlanCard extends StatelessWidget {
  const PlanCard({
    super.key,
    required this.title,
    required this.imagePath,
    required this.tags,
    this.ranking,
  });
  final String title;
  final String imagePath;
  final int? ranking;
  final List<String>? tags;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: (MediaQuery.of(context).size.width - 44) / 2,
      child: ConstrainedBox(
        constraints: const BoxConstraints(
          minHeight: 100,
        ),
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
                          image: imagePath.startsWith('https://')
                              ? DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(imagePath),
                                )
                              : DecorationImage(
                                  fit: BoxFit.cover,
                                  image: AssetImage(imagePath),
                                ),
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
                              Row(
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
                                ],
                              ),
                              Flexible(
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Offstage(
                                    offstage: tags == null,
                                    child: CategoryTags(
                                      tags: tags ?? [],
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
                RankingLabel(ranking: ranking),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
