import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import '../../../domain/entities/plan.dart';
import '../../../domain/entities/topic.dart';
import '../../../i18n/strings.g.dart';
import '../../../utils/routes/app_router.dart';
import '../../../utils/styles/app_color.dart';
import '../../../utils/styles/app_text_style.dart';
import '../../components/presistent_cached_network_image.dart';
import 'category_tags.dart';
import 'section_title.dart';

class PopularPlansCarousel extends HookWidget {
  const PopularPlansCarousel({super.key, required this.plans});
  final List<Plan> plans;

  @override
  Widget build(BuildContext context) {
    final i18n = Translations.of(context);
    final currentIndex = useState(0); // カルーセルの現在のインデックス

    return Column(
      children: [
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SectionTitle.large(
            label: i18n.homePage.popularPlans.title,
            onPressed: () async {
              await PopularPlansPageRouteData(plans).push<void>(context);
            },
          ),
        ),
        const SizedBox(height: 8),
        CarouselSlider(
          options: CarouselOptions(
            enlargeCenterPage: true,
            aspectRatio: 16 / 12,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 6),
            onPageChanged: (index, reason) {
              currentIndex.value = index; // 現在のインデックスを更新
            },
          ),
          items: plans.map((plan) => buildCarouselItem(plan, context)).toList(),
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 6,
          children: plans.asMap().entries.map((entry) {
            return Container(
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: currentIndex.value == entry.key
                    ? AppColor.black
                    : AppColor.grey400,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget buildCarouselItem(Plan plan, BuildContext context) {
    return GestureDetector(
      onTap: () async => PlanDetailPageRouteData(plan).push<void>(context),
      child: Column(
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              child: PersistentCachedNetworkImage(imageUrl: plan.thumbnailUrl),
            ),
          ),
          buildBottomContainer(
            plan.title,
            plan.topics,
          ),
        ],
      ),
    );
  }

  Widget buildBottomContainer(String title, List<Topic> topics) {
    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColor.blue50Background,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTextStyle.textStyle.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          CategoryTags(
            topics: topics,
            tagColor: AppColor.white,
            spacing: 8,
          ),
        ],
      ),
    );
  }
}
