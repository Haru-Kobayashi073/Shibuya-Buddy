import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';

import '../../../utils/extensions/context.dart';
import '../../../utils/hooks/use_form_state_key.dart';
import '../../../utils/styles/app_color.dart';
import '../../../utils/styles/app_text_style.dart';
import '../../../utils/validator.dart';
import '../../components/wide_button.dart';

class PlanReviewModal extends HookWidget {
  const PlanReviewModal({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = useTextEditingController();
    final formKey = useFormStateKey();

    return Container(
      height: context.deviceHeight * 0.5,
      color: Colors.white,
      padding: const EdgeInsets.all(16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                onPressed: () => context.pop(),
                icon: const Icon(Icons.close),
              ),
            ),
            Text(
              'タップして評価',
              style: AppTextStyle.textStyle.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              width: 216,
              height: 40,
              child: ListView.separated(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {},
                    child: const Icon(
                      Icons.star_border_outlined,
                      color: AppColor.yellow800Secondary,
                      size: 40,
                    ),
                  );
                },
                separatorBuilder: (_, __) => const Gap(4),
              ),
            ),
            Form(
              key: formKey,
              child: TextFormField(
                minLines: 1,
                maxLines: 6,
                cursorColor: AppColor.black,
                keyboardType: TextInputType.multiline,
                validator: Validator.common,
                maxLength: 256,
                controller: controller,
                onFieldSubmitted: (_) {},
                decoration: const InputDecoration(
                  counter: SizedBox.shrink(),
                  filled: true,
                  fillColor: AppColor.grey200,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                  ),
                ),
              ),
            ),
            const Gap(8),
            WideButton(
              label: '投稿',
              color: AppColor.yellow600Primary,
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  context.pop();
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
