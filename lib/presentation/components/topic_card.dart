import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../../i18n/strings.g.dart';
import '../../utils/extensions/context.dart';
import '../../utils/styles/app_color.dart';
import '../../utils/styles/app_text_style.dart';

class TopicCard extends StatelessWidget {
  const TopicCard({
    super.key,
    required this.title,
    required this.imagePath,
    required this.numberOfTopics,
    required this.onTap,
  });
  final String title;
  final String imagePath;
  final int numberOfTopics;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    final deviceWidth = context.deviceWidth;
    final i18n = Translations.of(context);

    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: deviceWidth * 0.44,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                width: deviceWidth * 0.47,
              ),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                color: AppColor.blue50Background,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(12),
                  bottomRight: Radius.circular(12),
                ),
              ),
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
                    i18n.homePage.popularTopics
                        .numberOfTopics(number: numberOfTopics),
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
      ),
    );
    // );
  }
}
