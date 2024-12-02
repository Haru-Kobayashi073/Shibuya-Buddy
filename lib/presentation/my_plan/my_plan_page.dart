import 'package:flutter/material.dart';

import '../../i18n/strings.g.dart';
import '../../utils/styles/app_color.dart';
import '../../utils/styles/app_text_style.dart';
import 'bookmark_plans_tab_view.dart';
import 'created_plans_tab_view.dart';

class MyPlanPage extends StatelessWidget {
  const MyPlanPage({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = Translations.of(context);
    final titlei18n = i18n.myPlanPage.title;
    final tabi18n = i18n.myPlanPage.tabs;

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            titlei18n,
            style: AppTextStyle.textStyle.copyWith(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          bottom: TabBar(
            indicatorWeight: 4,
            labelStyle: AppTextStyle.textStyle
                .copyWith(fontSize: 14, fontWeight: FontWeight.bold),
            unselectedLabelStyle: AppTextStyle.textStyle
                .copyWith(fontSize: 14, fontWeight: FontWeight.bold),
            labelColor: AppColor.black,
            unselectedLabelColor: AppColor.black,
            indicatorColor: AppColor.blue800Secondary,
            dividerColor: AppColor.blue900Tertiary,
            tabs: <Widget>[
              Tab(text: tabi18n.createdPlans),
              Tab(text: tabi18n.bookmark),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            CreatedPlanTabView(),
            BookmarkPlansTabView(),
          ],
        ),
      ),
    );
  }
}
