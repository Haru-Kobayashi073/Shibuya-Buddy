import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../utils/styles/app_color.dart';
import '../../../utils/styles/app_text_style.dart';

class ReviewListView extends StatelessWidget {
  const ReviewListView({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '4.7',
                    style: AppTextStyle.textStyle.copyWith(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Gap(8),
                  Column(
                    children: [
                      SizedBox(
                        width: 120,
                        height: 24,
                        child: ListView.builder(
                          itemCount: 5,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return const Icon(
                              Icons.star,
                              color: AppColor.yellow600Primary,
                            );
                          },
                        ),
                      ),
                      Text(
                        '22件の評価',
                        style: AppTextStyle.textStyle.copyWith(
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ],
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
                    SizedBox(
                      width: 120,
                      height: 24,
                      child: ListView.builder(
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return const Icon(
                            Icons.star,
                            color: AppColor.yellow600Primary,
                          );
                        },
                      ),
                    ),
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
