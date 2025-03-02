import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/entities/plan.dart';
import '../../i18n/strings.g.dart';
import '../../utils/analytics_event.dart';
import '../../utils/providers/analytics/analytics.dart';
import '../../utils/styles/app_color.dart';
import '../../utils/styles/app_text_style.dart';
import '../components/error_view.dart';
import '../components/loading_overlay.dart';
import '../components/presistent_cached_network_image.dart';
import '../components/sticky_tab_bar_delegate.dart';
import '../home/components/category_tags.dart';
import 'components/circle_icon_button.dart';
import 'components/plan_information_view.dart';
import 'components/review_list_view.dart';
import 'components/star_review_rating.dart';
import 'plan_detail_page_notifier.dart';

class PlanDetailPage extends HookConsumerWidget {
  const PlanDetailPage({super.key, required this.plan});
  final Plan plan;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(
      () {
        Future.delayed(Duration.zero, () async {
          await ref
              .read(analyticsNotifierProvider.notifier)
              .logScreenView(ScreenViewEvent.planDetailPageView);
        });
        return null;
      },
      [],
    );
    final state = ref.watch(planDetailPageNotifierProvider(plan));
    final notifier = ref.read(planDetailPageNotifierProvider(plan).notifier);
    final tabController = useTabController(initialLength: 2);
    final scrollController = useScrollController();
    final isScrolled = useState(false);
    final planDetailPagei18n = Translations.of(context).planDetailsPage;

    return state.when(
      data: (value) {
        return Scaffold(
          extendBodyBehindAppBar: true,
          appBar: AppBar(
            automaticallyImplyLeading: false,
            title: Row(
              children: [
                CircleIconButton(
                  icon: Icons.arrow_back_ios_new_rounded,
                  iconColor: AppColor.black,
                  onPressed: () => context.pop(),
                ),
                const Spacer(),
                CircleIconButton(
                  icon: value.isBookmarked
                      ? Icons.bookmark_rounded
                      : Icons.bookmark_border_rounded,
                  iconColor: value.isBookmarked
                      ? AppColor.yellow600Primary
                      : AppColor.black,
                  onPressed: notifier.onBookmarkButtonTap,
                ),
              ],
            ),
            backgroundColor: Colors.transparent,
            forceMaterialTransparency: true,
            elevation: 0,
          ),
          body: NestedScrollView(
            controller: scrollController,
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              scrollController.addListener(() {
                // 190 = AppBar(118) + SafeAreaTop(62)
                isScrolled.value = scrollController.position.pixels >= 190;
              });
              return [
                SliverToBoxAdapter(
                  child: PersistentCachedNetworkImage(
                    imageUrl: value.plan.thumbnailUrl,
                    height: 300,
                  ),
                ),
                SliverAppBar(
                  pinned: true,
                  centerTitle: false,
                  automaticallyImplyLeading: false,
                  scrolledUnderElevation: 0,
                  expandedHeight: 124,
                  toolbarHeight: 124,
                  backgroundColor: AppColor.white,
                  primary: isScrolled.value,
                  title: Container(
                    alignment: Alignment.centerLeft,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Gap(16),
                        Text(
                          plan.title,
                          style: AppTextStyle.textStyle.copyWith(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Gap(8),
                        Row(
                          children: [
                            StarReviewRating(rating: value.comprehensiveRating),
                            Text(
                              value.comprehensiveRating.toString(),
                              style: AppTextStyle.textStyle.copyWith(
                                fontSize: 16,
                              ),
                            ),
                            const Gap(8),
                            Text(
                              value.reviewCount > 0
                                  ? planDetailPagei18n.item
                                      .reviewCount(count: value.reviewCount)
                                  : planDetailPagei18n.item.noReview,
                              style: AppTextStyle.textStyle.copyWith(
                                color: AppColor.grey600,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                        const Gap(8),
                        CategoryTags(
                          topics: plan.topics,
                          tagColor: AppColor.blue50Background,
                          spacing: 4,
                        ),
                      ],
                    ),
                  ),
                ),
                SliverPersistentHeader(
                  pinned: true,
                  delegate: StickyTabBarDelegate(
                    TabBar(
                      controller: tabController,
                      indicatorWeight: 4,
                      labelStyle: AppTextStyle.textStyle.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      unselectedLabelStyle: AppTextStyle.textStyle.copyWith(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      labelColor: AppColor.black,
                      unselectedLabelColor: AppColor.black,
                      indicatorColor: AppColor.blue800Secondary,
                      dividerColor: AppColor.blue900Tertiary,
                      tabs: [
                        Tab(text: planDetailPagei18n.tab.information),
                        Tab(text: planDetailPagei18n.tab.wordOfMouth),
                      ],
                    ),
                  ),
                ),
              ];
            },
            body: Padding(
              padding: const EdgeInsets.all(16),
              child: TabBarView(
                controller: tabController,
                children: [
                  PlanInformationView(
                    plan: plan,
                    places: value.places,
                    haveUsedPlan: value.haveUsedPlan,
                  ),
                  ReviewListView(
                    reviewsWithContent: value.reviewsWithContent,
                    currentUserReview: value.currentUserReview,
                    reviewWithContentsCount: value.reviewWithContentsCount,
                    onPressedCreateButton: (reviewContents) async =>
                        notifier.writeReview(
                      reviewContents: reviewContents,
                      onSuccess: () => context.pop(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      error: (e, s) => ErrorView(
        error: e,
        stackTrace: s,
        onRetry: () => ref.invalidate(planDetailPageNotifierProvider(plan)),
      ),
      loading: Loading.new,
    );
  }
}
