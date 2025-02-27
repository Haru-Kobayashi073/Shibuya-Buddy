import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';

import '../../../domain/entities/plan_review.dart';
import '../../../i18n/strings.g.dart';
import '../../../utils/styles/app_color.dart';
import '../../../utils/styles/app_text_style.dart';
import 'plan_review_modal.dart';
import 'star_review_rating.dart';

class ReviewListView extends StatelessWidget {
  const ReviewListView({
    super.key,
    required this.reviewsWithContent,
    required this.currentUserReview,
    required this.reviewWithContentsCount,
    required this.onPressedCreateButton,
  });
  final List<PlanReview> reviewsWithContent;
  final PlanReview? currentUserReview;
  final int reviewWithContentsCount;
  final void Function(ReviewContents) onPressedCreateButton;

  @override
  Widget build(BuildContext context) {
    final i18n = Translations.of(context);
    final planDetailPagei18n = i18n.planDetailsPage;

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
                      currentUserReview?.reviewRating != 0
                          ? planDetailPagei18n.item.yourReview
                          : planDetailPagei18n.item.tapToReview,
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
                      initialRating: currentUserReview?.reviewRating ?? 0,
                      onRatingUpdate: (rating) async {
                        await showModalBottomSheet<void>(
                          context: context,
                          builder: (context) => PlanReviewModal(
                            currentUserReviewContents: (
                              reviewId: currentUserReview?.id,
                              rating: rating,
                              content: currentUserReview?.content,
                            ),
                            onPressedCreateButton: (reviewContents) {
                              onPressedCreateButton(
                                (
                                  reviewId: reviewContents.reviewId,
                                  rating: reviewContents.rating,
                                  content: reviewContents.content,
                                ),
                              );
                            },
                          ),
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
                  planDetailPagei18n.item
                      .wordOfMouthCount(count: reviewWithContentsCount),
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
          itemCount: reviewsWithContent.length,
          itemBuilder: (_, index) {
            final reviewWithCountent = reviewsWithContent[index];

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    StarReviewRating(rating: reviewWithCountent.reviewRating),
                    const Spacer(),
                    Text(
                      DateFormat(planDetailPagei18n.dateTime.dateFormat).format(
                        reviewWithCountent.updatedAt ??
                            reviewWithCountent.createdAt,
                      ),
                      style: AppTextStyle.textStyle.copyWith(
                        fontSize: 14,
                        color: AppColor.grey600,
                      ),
                    ),
                  ],
                ),
                const Gap(8),
                Text(
                  reviewWithCountent.content!,
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
