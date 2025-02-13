import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../../domain/entities/plan.dart';
import '../../i18n/strings.g.dart';
import '../../utils/routes/app_router.dart';
import '../../utils/styles/app_color.dart';
import '../../utils/styles/app_text_style.dart';
import '../components/error_view.dart';
import '../components/expandable_text.dart';
import '../components/loading_overlay.dart';
import '../components/place_card.dart';
import '../components/presistent_cached_network_image.dart';
import '../components/sticky_tab_bar_delegate.dart';
import '../components/wide_button.dart';
import '../home/components/category_tags.dart';
import 'components/circle_icon_button.dart';
import 'components/plan_header.dart';
import 'plan_detail_page_notifier.dart';

class PlanDetailPage extends HookConsumerWidget {
  const PlanDetailPage({super.key, required this.plan});
  final Plan plan;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i18n = Translations.of(context);
    final planDetailPagei18n = i18n.planDetailsPage;
    final state = ref.watch(planDetailPageNotifierProvider(plan));
    final notifier = ref.read(planDetailPageNotifierProvider(plan).notifier);
    final outputFormat = DateFormat(planDetailPagei18n.dateTime.dateFormat)
        .format(DateTime.now());
    final tabController = useTabController(initialLength: 2);

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
                  icon: value.plan.isBookmarked
                      ? Icons.bookmark_rounded
                      : Icons.bookmark_border_rounded,
                  iconColor: value.plan.isBookmarked
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
            headerSliverBuilder: (_, innerBoxIsScrolled) {
              return [
                SliverToBoxAdapter(
                  child: PersistentCachedNetworkImage(
                    imageUrl: value.plan.thumbnailUrl,
                    height: 300,
                  ),
                ),
                SliverAppBar(
                  pinned: true,
                  forceElevated: innerBoxIsScrolled,
                  centerTitle: false,
                  automaticallyImplyLeading: false,
                  scrolledUnderElevation: 0,
                  expandedHeight: 100,
                  toolbarHeight: 100,
                  backgroundColor: AppColor.white,
                  primary: innerBoxIsScrolled,
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
                        const Gap(16),
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
                      tabs: const [
                        Tab(text: '情報'),
                        Tab(text: '口コミ'),
                      ],
                    ),
                  ),
                ),
              ];
            },
            body: const SizedBox(),
          ),
          // body: CustomScrollView(
          //   slivers: [
          //     SliverAppBar(
          //       automaticallyImplyLeading: false,
          //       expandedHeight: 180,
          //       flexibleSpace: FlexibleSpaceBar(
          //         background: PersistentCachedNetworkImage(
          //           imageUrl: value.plan.thumbnailUrl,
          //         ),
          //       ),
          //     ),
          //     SliverToBoxAdapter(
          //       child: Column(
          //         children: [
          //           Container(
          //             alignment: Alignment.centerLeft,
          //             padding: const EdgeInsets.all(16),
          //             child: Column(
          //               crossAxisAlignment: CrossAxisAlignment.start,
          //               children: [
          //                 Text(
          //                   plan.title,
          //                   style: AppTextStyle.textStyle.copyWith(
          //                     fontSize: 20,
          //                     fontWeight: FontWeight.bold,
          //                   ),
          //                 ),
          //                 const Gap(16),
          //                 CategoryTags(
          //                   topics: plan.topics,
          //                   tagColor: AppColor.blue50Background,
          //                   spacing: 4,
          //                 ),
          //               ],
          //             ),
          //           ),
          //           TabBar(
          //             controller: tabController,
          //             indicatorWeight: 4,
          //             labelStyle: AppTextStyle.textStyle.copyWith(
          //               fontSize: 14,
          //               fontWeight: FontWeight.bold,
          //             ),
          //             unselectedLabelStyle: AppTextStyle.textStyle.copyWith(
          //               fontSize: 14,
          //               fontWeight: FontWeight.bold,
          //             ),
          //             labelColor: AppColor.black,
          //             unselectedLabelColor: AppColor.black,
          //             indicatorColor: AppColor.blue800Secondary,
          //             dividerColor: AppColor.blue900Tertiary,
          //             tabs: const [
          //               Tab(text: '情報'),
          //               Tab(text: '口コミ'),
          //             ],
          //           ),
          //           Padding(
          //             padding: const EdgeInsets.symmetric(horizontal: 16),
          //             child: Column(
          //               children: [
          //                 const Gap(16),
          //                 Align(
          //                   alignment: Alignment.centerLeft,
          //                   child: ExpandableText(plan.description),
          //                 ),
          //                 const Gap(8),
          //               ],
          //             ),
          //           ),
          //         ],
          //       ),
          //     ),
          //     SliverToBoxAdapter(
          //       child: Padding(
          //         padding: const EdgeInsets.only(left: 16, right: 16),
          //         child: Column(
          //           children: [
          //             Align(
          //               alignment: Alignment.centerLeft,
          //               child: Text(
          //                 planDetailPagei18n.dateTime
          //                     .createOn(date: outputFormat),
          //                 style: AppTextStyle.textStyle.copyWith(
          //                   fontSize: 14,
          //                   color: AppColor.grey600,
          //                 ),
          //               ),
          //             ),
          //             const Gap(16),
          //             WideButton(
          //               icon: const Icon(
          //                 Icons.pin_drop_outlined,
          //                 color: AppColor.black,
          //               ),
          //               label: planDetailPagei18n.item.viewOnMap,
          //               color: AppColor.blue50Background,
          //               onPressed: () async {
          //                 final places = value.places;
          //                 await MapPageRouteData($extra: places)
          //                     .push<void>(context);
          //               },
          //             ),
          //             const Gap(16),
          //             Column(
          //               children: value.places
          //                   .map(
          //                     (place) => PlaceCard(
          //                       place: place,
          //                       index: value.places.indexOf(place),
          //                       endindex: value.places.length - 1,
          //                     ),
          //                   )
          //                   .toList(),
          //             ),
          //             const Gap(32),
          //           ],
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
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
