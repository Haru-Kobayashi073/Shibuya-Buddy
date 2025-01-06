import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'components/bookmark_plan_list.dart';
import 'components/nondata.dart';
import 'my_plan_notifier.dart';

class BookmarkPlansTabView extends ConsumerWidget {
  const BookmarkPlansTabView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncState = ref.watch(myPlanNotifierProvider);

    return asyncState.when(
      data: (state) {
        final plans = state.bookmarkPlanList;
        return plans.isEmpty
            ? const Nondata(message: 'ブックマークしているプランはありません。')
            : ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: BookmarkPlanList(plans: plans),
                  ),
                ],
              );
      },
      loading: () {
        return const Center(child: CircularProgressIndicator());
      },
      error: (error, stack) {
        return Center(
          child: Text('エラーが発生しました: $error'), //エラーページ
        );
      },
    );
  }
}
