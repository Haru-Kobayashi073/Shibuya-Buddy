import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../domain/entities/plan.dart';
import '../../../utils/styles/app_color.dart';
import '../../home/components/recent_plan.dart';
import '../my_plan_page_notifier.dart';

class BookmarkPlanList extends ConsumerWidget {
  const BookmarkPlanList({
    super.key,
    required this.plans,
  });

  final List<Plan> plans;

  List<Widget> _buildPlanItems(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(myPlanPageNotifierProvider.notifier);
    final width = MediaQuery.of(context).size.width;
    return plans
        .map(
          (plan) => Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: Row(
              children: [
                SizedBox(
                  width: width * 0.8,
                  child: RecentPlan(
                    title: plan.title,
                    imageUrl: plan.thumbnailUrl,
                    tags: plan.topics.map((e) => e.name).toList(),
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
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ListView(
      children: _buildPlanItems(context, ref),
    );
  }
}
