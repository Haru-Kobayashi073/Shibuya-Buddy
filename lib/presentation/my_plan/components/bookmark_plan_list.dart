import 'package:flutter/material.dart';

import '../../../domain/entities/plan.dart';
import '../../../utils/styles/app_color.dart';
import '../../home/components/recent_plan.dart';

class BookmarkPlanList extends StatefulWidget {
  const BookmarkPlanList({
    super.key,
    required this.plans,
  });

  final List<Plan> plans;

  @override
  State<BookmarkPlanList> createState() => _BookmarkPlanListState();
}

class _BookmarkPlanListState extends State<BookmarkPlanList> {
  List<Widget> _buildPlanItems(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return widget.plans
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
                  onPressed: () {},
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
  Widget build(BuildContext context) {
    return Column(
      children: _buildPlanItems(context),
    );
  }
}
