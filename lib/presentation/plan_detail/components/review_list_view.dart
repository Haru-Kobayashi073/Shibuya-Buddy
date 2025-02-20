import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';

import '../../../utils/styles/app_color.dart';
import '../../../utils/styles/app_text_style.dart';
import 'plan_review_modal.dart';
import 'star_review_rating.dart';

class ReviewListView extends StatelessWidget {
  const ReviewListView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                child: Column(
                  children: [
                    Text(
                      'タップして評価',
                      style: AppTextStyle.textStyle.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Gap(4),
                    RatingBar(
                      ratingWidget: RatingWidget(
                        full: const Icon(
                          Icons.star,
                          color: AppColor.yellow800Secondary,
                          size: 40,
                        ),
                        half: const Icon(
                          Icons.star_half,
                          color: AppColor.yellow800Secondary,
                          size: 40,
                        ),
                        empty: const Icon(
                          Icons.star_border_outlined,
                          color: AppColor.yellow800Secondary,
                          size: 40,
                        ),
                      ),
                      onRatingUpdate: (rating) async {
                        await showModalBottomSheet<void>(
                          context: context,
                          builder: (context) => PlanReviewModal(rating: rating),
                        );
                      },
                    ),
                  ],
                ),
              ),
              const Gap(16),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  '口コミ(8件)',
                  style: AppTextStyle.textStyle.copyWith(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Divider(
                color: AppColor.grey200,
                thickness: 1,
              ),
            ],
          ),
        ),
        SliverList.separated(
          itemCount: 8,
          itemBuilder: (_, index) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    const StarReviewRating(rating: 4.7),
                    const Spacer(),
                    Text(
                      '2021/10/10',
                      style: AppTextStyle.textStyle.copyWith(
                        fontSize: 14,
                        color: AppColor.grey600,
                      ),
                    ),
                  ],
                ),
                const Gap(8),
                Text(
                  'とても楽しいプランでした！',
                  style: AppTextStyle.textStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ],
            );
          },
          separatorBuilder: (_, __) => const Divider(
            color: AppColor.grey200,
            thickness: 1,
          ),
        ),
      ],
    );
  }
}
