import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../i18n/strings.g.dart';
import '../../../utils/styles/app_color.dart';
import '../../../utils/styles/app_text_style.dart';
import '../../components/wide_button.dart';

typedef ReviewContents = ({
  double rating,
  String content,
});

class PlanReviewModal extends HookWidget {
  const PlanReviewModal({
    super.key,
    required this.currentUserReviewContents,
    required this.onPressedCreateButton,
  });
  final ReviewContents currentUserReviewContents;
  final void Function(ReviewContents reviewContents) onPressedCreateButton;

  @override
  Widget build(BuildContext context) {
    final controller =
        useTextEditingController(text: currentUserReviewContents.content);
    final planDetailPagei18n = Translations.of(context).planDetailsPage;
    final updatedRating = useState(currentUserReviewContents.rating);

    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 24,
                height: 24,
                child: IconButton(
                  onPressed: () => context.pop(),
                  constraints: const BoxConstraints(),
                  padding: EdgeInsets.zero,
                  icon: const Icon(Icons.close),
                ),
              ),
              const Gap(16),
              Align(
                child: Column(
                  children: [
                    Text(
                      planDetailPagei18n.item.tapToReview,
                      style: AppTextStyle.textStyle.copyWith(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    RatingBar(
                      initialRating: currentUserReviewContents.rating,
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
                      onRatingUpdate: (rating) {
                        updatedRating.value = rating;
                      },
                    ),
                  ],
                ),
              ),
              const Gap(32),
              TextFormField(
                minLines: 1,
                maxLines: 6,
                cursorColor: AppColor.blue800Secondary,
                keyboardType: TextInputType.multiline,
                maxLength: 256,
                controller: controller,
                onFieldSubmitted: (_) {},
                decoration: InputDecoration(
                  counter: const SizedBox.shrink(),
                  label: Text(
                    planDetailPagei18n.item.reviewContentWithOptionalLabel,
                    style: AppTextStyle.textStyle.copyWith(
                      color: AppColor.black,
                    ),
                  ),
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColor.blue800Secondary,
                    ),
                  ),
                  enabledBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColor.blue800Secondary,
                    ),
                  ),
                  focusedBorder: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColor.blue800Secondary,
                      width: 2,
                    ),
                  ),
                ),
              ),
              const Gap(32),
              WideButton(
                label: currentUserReviewContents.reviewId != null
                    ? planDetailPagei18n.item.changeReview
                    : planDetailPagei18n.item.createReview,
                color: AppColor.yellow600Primary,
                onPressed: () => onPressedCreateButton(
                  (
                    reviewId: currentUserReviewContents.reviewId,
                    rating: updatedRating.value,
                    content: controller.text,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
