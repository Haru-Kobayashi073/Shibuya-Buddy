import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';

import '../../../domain/entities/place.dart';
import '../../../domain/entities/plan.dart';
import '../../../i18n/strings.g.dart';
import '../../../utils/extensions/context.dart';
import '../../../utils/providers/ad_helper/ad_helper.dart';
import '../../../utils/routes/app_router.dart';
import '../../../utils/styles/app_color.dart';
import '../../../utils/styles/app_text_style.dart';
import '../../components/expandable_text.dart';
import '../../components/place_card.dart';
import '../../components/wide_button.dart';
import 'have_used_plan_question_dialog.dart';

class PlanInformationView extends HookConsumerWidget {
  const PlanInformationView({
    super.key,
    required this.plan,
    required this.places,
    required this.haveUsedPlan,
  });
  final Plan plan;
  final List<Place> places;
  final bool haveUsedPlan;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i18n = Translations.of(context);
    final planDetailPagei18n = i18n.planDetailsPage;
    final ads = ref.watch(adHelperProvider);
    final outputFormat = DateFormat(planDetailPagei18n.dateTime.dateFormat)
        .format(plan.createdAt!);

    useEffect(
      () {
        Future.microtask(
          () async => ref.read(adHelperProvider.notifier).loadNativeAd(),
        );
        return null;
      },
      const [],
    );

    return SingleChildScrollView(
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: ExpandableText(plan.description),
          ),
          const Gap(8),
          Column(
            children: [
              if (haveUsedPlan)
                GestureDetector(
                  onTap: () async {
                    await showDialog<void>(
                      context: context,
                      builder: (_) => const HaveUsedPlanQuestionDialog(),
                    );
                  },
                  child: Row(
                    children: [
                      const Icon(
                        Icons.check_circle,
                        color: AppColor.yellow600Primary,
                      ),
                      const Gap(4),
                      Text(
                        planDetailPagei18n.haveUsedPlan,
                        style: AppTextStyle.textStyle.copyWith(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              const Gap(8),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  planDetailPagei18n.dateTime.createOn(date: outputFormat),
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
                  await MapPageRouteData($extra: places).push<void>(context);
                },
              ),
              const Gap(16),
              Column(
                children: places
                    .map(
                      (place) => PlaceCard(
                        place: place,
                        index: places.indexOf(place),
                        endindex: places.length - 1,
                      ),
                    )
                    .toList(),
              ),
              const Gap(32),
              if (ads.nativeAd != null && ads.isLoadedNativeAd)
                ConstrainedBox(
                  constraints: BoxConstraints(
                    minWidth: 320, // minimum recommended width
                    minHeight: 320, // minimum recommended height
                    maxWidth: context.deviceWidth,
                    maxHeight: 400,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: AdWidget(ad: ads.nativeAd!),
                  ),
                ),
            ],
          ),
        ],
      ),
    );
  }
}
