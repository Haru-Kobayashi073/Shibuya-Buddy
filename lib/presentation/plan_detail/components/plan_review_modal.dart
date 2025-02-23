import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../utils/extensions/context.dart';
import '../../../utils/hooks/use_form_state_key.dart';
import '../../../utils/styles/app_color.dart';
import '../../../utils/styles/app_text_style.dart';
import '../../../utils/validator.dart';
import '../../components/wide_button.dart';

class PlanReviewModal extends HookWidget {
  const PlanReviewModal({
    super.key,
    required this.rating,
  });
  final double rating;

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    final formKey = useFormStateKey();

    return Container(
      height: context.deviceHeight * 0.5,
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
                    RatingBar(
                      initialRating: rating,
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
                      onRatingUpdate: (_) {},
                    ),
                  ],
                ),
              ),
              const Gap(32),
              Form(
                key: formKey,
                child: TextFormField(
                  minLines: 1,
                  maxLines: 6,
                  cursorColor: AppColor.blue800Secondary,
                  keyboardType: TextInputType.multiline,
                  validator: Validator.common,
                  maxLength: 256,
                  controller: controller,
                  onFieldSubmitted: (_) {},
                  decoration: InputDecoration(
                    counter: const SizedBox.shrink(),
                    label: Text(
                      '口コミ (任意)',
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
              ),
              const Gap(32),
              WideButton(
                label: '投稿',
                color: AppColor.yellow600Primary,
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    context.pop();
                  }
                },
              ),
              Gap(MediaQuery.of(context).viewInsets.bottom),
            ],
          ),
        ),
      ),
    );
  }
}
