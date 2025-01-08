import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../error_page.dart';
import '../../i18n/strings.g.dart';
import 'components/bookmark_plan_list.dart';
import 'components/nondata.dart';
import 'my_plan_notifier.dart';

class BookmarkPlansTabView extends ConsumerWidget {
  const BookmarkPlansTabView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncState = ref.watch(myPlanNotifierProvider);
    final notifier = ref.watch(myPlanNotifierProvider.notifier);
    final i18n = Translations.of(context);
    final bookmarkItemi18n = i18n.myPlanPage.bookmarkItems;

    return asyncState.when(
      data: (state) {
        final plans = state.bookmarkPlanList;
        return plans.isEmpty
            ? Nondata(
                message: bookmarkItemi18n.nondata,
                labelText: bookmarkItemi18n.reloading,
                onPressed: () async {
                  await notifier.refreshBookmarkData();
                },
              )
            : RefreshIndicator(
                onRefresh: () async {
                  await notifier.refreshBookmarkData();
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
      loading: () {
        return const Center(child: CircularProgressIndicator());
      },
      error: (error, stack) {
        return ErrorPage(
          onRetry: () async {
            await notifier.refreshBookmarkData();
          },
        );
      },
    );
  }
}
