import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../domain/entities/plan.dart';
import '../../i18n/strings.g.dart';
import '../../utils/styles/app_color.dart';
import '../home/components/recent_plan.dart';
import 'components/empty_data.dart';
import 'my_plan_page_notifier.dart';

class BookmarkPlansTabView extends ConsumerWidget {
  const BookmarkPlansTabView({
    super.key,
    required this.plans,
  });
  final List<Plan> plans;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(myPlanPageNotifierProvider.notifier);
    final i18n = Translations.of(context);
    final bookmarkItemi18n = i18n.myPlanPage.bookmarkItems;
    final width = MediaQuery.of(context).size.width;

    return plans.isNotEmpty
        ? RefreshIndicator(
            onRefresh: () async => ref.invalidate(myPlanPageNotifierProvider),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                              await notifier.unBookmark(plan: plan);
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
          )
        : EmptyDataView(
            message: bookmarkItemi18n.nondata,
            labelText: bookmarkItemi18n.reloading,
            onPressed: () => ref.invalidate(myPlanPageNotifierProvider),
          );
  }
}
