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
import '../../utils/analytics_event.dart';
import '../../utils/providers/analytics/analytics.dart';
import '../../utils/routes/app_router.dart';
import '../../utils/styles/app_color.dart';
import '../../utils/styles/app_text_style.dart';
import '../components/error_view.dart';
import '../components/loading_overlay.dart';
import '../components/place_card.dart';
import '../components/presistent_cached_network_image.dart';
import '../components/wide_button.dart';
import 'components/circle_icon_button.dart';
import 'components/plan_header.dart';
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
              .read(analyticsNotifierProvider)
              .logEvent(AnalyticsEvent.planDetailPageView);
        });
        return null;
      },
      [],
    );

    final i18n = Translations.of(context);
    final planDetailPagei18n = i18n.planDetailsPage;
    final state = ref.watch(planDetailPageNotifierProvider(plan));
    final notifier = ref.read(planDetailPageNotifierProvider(plan).notifier);

    final outputFormat = DateFormat(planDetailPagei18n.dateTime.dateFormat)
        .format(DateTime.now());

    return state.when(
      data: (value) {
        return Scaffold(
          body: Stack(
            children: [
              SafeArea(
                top: false,
                child: CustomScrollView(
                  slivers: [
                    SliverAppBar(
                      automaticallyImplyLeading: false,
                      systemOverlayStyle: const SystemUiOverlayStyle(
                        statusBarBrightness: Brightness.light,
                      ),
                      expandedHeight: 250,
                      flexibleSpace: FlexibleSpaceBar(
                        background: PersistentCachedNetworkImage(
                          imageUrl: value.plan.thumbnailUrl,
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: PlanHeader(plan: plan),
                    ),
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16, right: 16),
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                planDetailPagei18n.dateTime
                                    .createOn(date: outputFormat),
                                style: AppTextStyle.textStyle.copyWith(
                                  fontSize: 14,
                                  color: AppColor.grey600,
                                ),
                              ),
                            ),
                            const Gap(16),
                            WideButton(
                              icon: const Icon(
                                Icons.pin_drop_outlined,
                                color: AppColor.black,
                              ),
                              label: planDetailPagei18n.item.viewOnMap,
                              color: AppColor.blue50Background,
                              onPressed: () async {
                                final places = value.places;
                                await MapPageRouteData($extra: places)
                                    .push<void>(context);
                              },
                            ),
                            const Gap(16),
                            Column(
                              children: value.places
                                  .map(
                                    (place) => PlaceCard(
                                      place: place,
                                      index: value.places.indexOf(place),
                                      endindex: value.places.length - 1,
                                    ),
                                  )
                                  .toList(),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Row(
                      children: [
                        CircleIconButton(
                          icon: Icons.arrow_back_ios_new,
                          iconColor: AppColor.black,
                          onPressed: () => context.pop(),
                        ),
                        const Spacer(),
                        CircleIconButton(
                          icon: value.plan.isBookmarked
                              ? Icons.bookmark_rounded
                              : Symbols.bookmark_border_rounded,
                          iconColor: value.plan.isBookmarked
                              ? AppColor.yellow600Primary
                              : AppColor.black,
                          onPressed: notifier.onBookmarkButtonTap,
                        ),
                        const Gap(16),
                      ],
                    ),
                  ),
                ),
              ),
            ],
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
