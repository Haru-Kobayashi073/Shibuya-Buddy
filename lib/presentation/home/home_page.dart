import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../utils/billing_grade_options.dart';
import '../../utils/routes/app_router.dart';
import '../components/error_view.dart';
import '../components/loading_overlay.dart';
import 'components/create_plan_button.dart';
import 'components/popular_plans_carousel.dart';
import 'components/popular_topics_section.dart';
import 'components/recent_plans_section.dart';
import 'home_page_notifier.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(homePageNotifierProvider);
    final notifier = ref.read(homePageNotifierProvider.notifier);

    return state.when(
      data: (value) {
        return Scaffold(
          body: SafeArea(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: PopularPlansCarousel(plans: value.popularPlans),
                ),
                const SliverGap(16),
                SliverToBoxAdapter(
                  child: PopularTopicsSection(topics: value.popularTopics),
                ),
                if (value.recentPlans.isNotEmpty)
                  SliverToBoxAdapter(
                    child: RecentPlansSection(recentPlans: value.recentPlans),
                  ),
              ],
            ),
          ),
          floatingActionButton: CreatePlanButton(
            onPressed: () => notifier.onCreatePlanButtonPressed(
              onUnlimitedUser: () async {
                await const CreatePlanPageRouteData().push<void>(context);
              },
              needUpgradeToPremium: () async {
                await const BillDetailsDialogRouteData(
                  BillingLimitedFeatures.createPlan,
                ).push<void>(context);
              },
            ),
          ),
        );
      },
      error: (e, s) => ErrorView(
        error: e,
        stackTrace: s,
        onRetry: () => ref.invalidate(homePageNotifierProvider),
        isRootPage: true,
      ),
      loading: Loading.new,
    );
  }
}
