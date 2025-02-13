import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../../gen/assets.gen.dart';
import '../../utils/analytics_event.dart';
import '../../utils/billing_grade_options.dart';
import '../../utils/providers/analytics/analytics.dart';
import '../../utils/styles/app_color.dart';
import 'components/bottom_modal.dart';
import 'components/grade_based_features.dart';
import 'components/plan_table.dart';
import 'components/premium_plan.dart';
import 'components/restore_purchase_section.dart';

class BillDetailsPage extends HookConsumerWidget {
  const BillDetailsPage({
    super.key,
    this.isDialog = false,
    this.feature = BillingLimitedFeatures.none,
  });

  final bool isDialog;
  final BillingLimitedFeatures feature;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(
      () {
        Future.delayed(Duration.zero, () async {
          final eventName = isDialog
              ? AnalyticsEvent.billDetailPageView
              : AnalyticsEvent.billDetailDialogView;

          await ref
              .read(analyticsNotifierProvider.notifier)
              .logScreenView(screenName: eventName.key);
        });
        return null;
      },
      [],
    );

    const bottomModalHeight = 182.0;
    return Scaffold(
      body: SafeArea(
        top: false,
        child: CustomScrollView(
          slivers: [
            SliverAppBar(
              systemOverlayStyle: const SystemUiOverlayStyle(
                statusBarBrightness: Brightness.light,
              ),
              expandedHeight: 250,
              flexibleSpace: FlexibleSpaceBar(
                background: Image.asset(
                  Assets.images.billingHeader.path,
                  fit: BoxFit.cover,
                ),
              ),
              pinned: true,
              backgroundColor: Colors.transparent,
              surfaceTintColor: Colors.transparent,
              leading: isDialog
                  ? const SizedBox()
                  : Padding(
                      padding: const EdgeInsets.all(8),
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          color: AppColor.white,
                          borderRadius: BorderRadius.circular(50),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 4,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: IconButton(
                          alignment: Alignment.center,
                          iconSize: 24,
                          icon: const Icon(
                            Symbols.arrow_back_ios_new,
                            color: AppColor.black,
                            weight: 600,
                          ),
                          onPressed: () {
                            context.pop();
                          },
                        ),
                      ),
                    ),
              actions: isDialog
                  ? [
                      Padding(
                        padding: const EdgeInsets.all(8),
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            color: AppColor.white,
                            shape: BoxShape.circle,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 4,
                                offset: const Offset(0, 2),
                              ),
                            ],
                          ),
                          child: IconButton(
                            alignment: Alignment.center,
                            iconSize: 24,
                            icon: const Icon(
                              Symbols.close,
                              color: AppColor.black,
                              weight: 600,
                            ),
                            onPressed: () {
                              context.pop();
                            },
                          ),
                        ),
                      ),
                    ]
                  : null,
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    PremiumPlan(feature: feature),
                    const Gap(32),
                    const PlanTable(),
                    const Gap(32),
                    const GradeBasedFeatures(),
                    const Gap(32),
                    const RestorePurchaseSection(),
                  ],
                ),
              ),
            ),
            const SliverGap(bottomModalHeight),
          ],
        ),
      ),
      bottomSheet: BottomModal(feature: feature),
    );
  }
}
