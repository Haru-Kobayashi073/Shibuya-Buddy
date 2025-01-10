import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../error_page.dart';
import '../../i18n/strings.g.dart';
import '../components/loading_overlay.dart';
import 'components/bookmark_plan_list.dart';
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
                child: ListView(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16),
                      child: BookmarkPlanList(plans: plans),
                    ),
                  ],
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
