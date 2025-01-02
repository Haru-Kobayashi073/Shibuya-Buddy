import 'package:flutter/material.dart';

import 'components/plan_list.dart';
import 'mock.dart';

class BookmarkPlansTabView extends StatefulWidget {
  const BookmarkPlansTabView({super.key});

  @override
  State<BookmarkPlansTabView> createState() => _BookmarkPlansTabViewState();
}

class _BookmarkPlansTabViewState extends State<BookmarkPlansTabView> {
  @override
  Widget build(BuildContext context) {
    return PlanList(plans: dummyBookmarkPlan);
  }
}
