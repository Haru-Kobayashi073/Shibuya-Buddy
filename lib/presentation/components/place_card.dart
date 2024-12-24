import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:url_launcher/link.dart';

import '../../domain/entities/place.dart';
import '../../i18n/strings.g.dart';
import '../../utils/styles/app_color.dart';
import '../../utils/styles/app_text_style.dart';

class PlaceCard extends StatelessWidget {
  const PlaceCard({
    super.key,
    required this.place,
    required this.index,
  });
  final Place place;
  final int index;

  @override
  Widget build(BuildContext context) {
    final i18n = Translations.of(context);
    final placeCardi18n = i18n.buddyChatPage.placeCard;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Container(
              width: 32,
              height: 32,
              decoration: BoxDecoration(
                color: AppColor.blue600Primary,
                borderRadius: BorderRadius.circular(8),
              ),
              alignment: Alignment.center,
              child: Text(
                '${index + 1}',
                style: AppTextStyle.textStyle.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: AppColor.white,
                ),
              ),
            ),
          ],
        ),
        const Gap(8),
        Expanded(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: CachedNetworkImage(
                  imageUrl: place.thumbnailUrl,
                  fit: BoxFit.cover,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      place.title,
                      style: AppTextStyle.textStyle.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: AppColor.black,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.visible,
                    ),
                    const Gap(4),
                    Text(
                      place.name,
                      style: AppTextStyle.textStyle.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: AppColor.black,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.visible,
                    ),
                    const Gap(8),
                    const Divider(color: AppColor.grey400),
                    const Gap(8),
                    Row(
                      children: [
                        Text(
                          placeCardi18n.openingHours,
                          style: AppTextStyle.textStyle.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: AppColor.black,
                          ),
                        ),
                        const Gap(8),
                        Text(
                          place.getParsedOpeningHours(),
                          style: AppTextStyle.textStyle.copyWith(
                            fontSize: 12,
                            color: AppColor.black,
                          ),
                          softWrap: true,
                          overflow: TextOverflow.visible,
                        ),
                      ],
                    ),
                    const Gap(8),
                    const Divider(color: AppColor.grey400),
                    const Gap(8),
                    Row(
                      children: [
                        Text(
                          placeCardi18n.averageAmount,
                          style: AppTextStyle.textStyle.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: AppColor.black,
                          ),
                        ),
                        const Gap(8),
                        Text(
                          place.avevageAmount,
                          style: AppTextStyle.textStyle.copyWith(
                            fontSize: 12,
                            color: AppColor.black,
                          ),
                          softWrap: true,
                          overflow: TextOverflow.visible,
                        ),
                      ],
                    ),
                    const Gap(8),
                    const Divider(color: AppColor.grey400),
                    const Gap(8),
                    Row(
                      children: [
                        Text(
                          placeCardi18n.website,
                          style: AppTextStyle.textStyle.copyWith(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                            color: AppColor.black,
                          ),
                        ),
                        const Gap(8),
                        Flexible(
                          child: Link(
                            uri: place.websiteUrl,
                            builder: (context, followLink) {
                              return InkWell(
                                onTap: followLink,
                                borderRadius: BorderRadius.circular(8),
                                child: Text(
                                  place.websiteUrl.toString(),
                                  overflow: TextOverflow.ellipsis,
                                  style: AppTextStyle.textStyle.copyWith(
                                    fontSize: 12,
                                    decoration: TextDecoration.underline,
                                    color: AppColor.black,
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
