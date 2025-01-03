import 'package:flutter/material.dart';

import '../home/components/plan_list.dart';
import 'mock.dart';

class BookmarkPlansTabView extends StatefulWidget {
  const BookmarkPlansTabView({super.key});

  @override
  State<BookmarkPlansTabView> createState() => _BookmarkPlansTabViewState();
}

class _BookmarkPlansTabViewState extends State<BookmarkPlansTabView> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: PlanList(plans: dummyPlan),
    );
  }
}
