import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../error_page.dart';
import '../../i18n/strings.g.dart';
import '../../utils/styles/app_color.dart';
import '../components/loading_overlay.dart';
import '../home/components/recent_plan.dart';
import 'components/empty_data.dart';
import 'my_plan_page_notifier.dart';

class BookmarkPlansTabView extends ConsumerWidget {
  const BookmarkPlansTabView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncState = ref.watch(myPlanPageNotifierProvider);
    final notifier = ref.watch(myPlanPageNotifierProvider.notifier);
    final i18n = Translations.of(context);
    final bookmarkItemi18n = i18n.myPlanPage.bookmarkItems;
    final width = MediaQuery.of(context).size.width;

    return asyncState.when(
      data: (state) {
        final plans = state.bookmarkPlanList;
        return plans.isEmpty
            ? EmptyDataView(
                message: bookmarkItemi18n.nondata,
                labelText: bookmarkItemi18n.reloading,
                onPressed: () async {
                  await notifier.buildBookmarkPlans();
                },
              )
            : RefreshIndicator(
                onRefresh: () async {
                  await notifier.buildBookmarkPlans();
                },
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: ListView(
                    children: plans
                        .map(
                          (plan) => Row(
                            children: [
                              SizedBox(
                                width: width * 0.8,
                                child: RecentPlan(
                                  plan: plan,
                                ),
                              ),
                              const Spacer(),
                              IconButton(
                                onPressed: () async {
                                  await notifier.unBookmark(planId: plan.id);
                                },
                                icon: const Icon(
                                  Icons.bookmark,
                                  color: AppColor.yellow600Primary,
                                ),
                              ),
                            ],
                          ),
                        )
                        .toList(),
                  ),
                ),
              );
      },
      loading: Loading.new,
      error: (error, stack) {
        return ErrorPage(
          onRetry: () async {
            await notifier.buildBookmarkPlans();
          },
        );
      },
    );
  }
}
