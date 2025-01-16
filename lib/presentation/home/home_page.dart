import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../error_page.dart';
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
                const SliverToBoxAdapter(child: PopularTopics()),
                if (value.recentPlans != null && value.recentPlans!.isNotEmpty)
                  SliverToBoxAdapter(
                    child: RecentPlansSection(recentPlans: value.recentPlans!),
                  ),
              ],
            ),
          ),
          floatingActionButton: const CreatePlanButton(),
        );
      },
      error: (_, __) =>
          ErrorPage(onRetry: () => ref.invalidate(homePageNotifierProvider)),
      loading: Loading.new,
    );
  }
}
