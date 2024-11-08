import 'package:flutter/material.dart';

import '../../utils/styles/app_color.dart';
import '../../utils/styles/app_text_style.dart';
import 'bookmarkplan.dart';
import 'created_plan.dart';

class MyPlanPage extends StatelessWidget {
  const MyPlanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'マイプラン',
            style: AppTextStyle.textStyle.copyWith(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          bottom: TabBar(
            labelStyle: AppTextStyle.textStyle
                .copyWith(fontSize: 14, fontWeight: FontWeight.bold),
            unselectedLabelStyle: AppTextStyle.textStyle
                .copyWith(fontSize: 14, fontWeight: FontWeight.bold),
            labelColor: AppColor.black,
            unselectedLabelColor: AppColor.black,
            indicatorColor: AppColor.blue800Secondary,
            dividerColor: AppColor.black,
            tabs: const <Widget>[
              Tab(
                text: '作成したプラン',
              ),
              Tab(
                text: 'ブックマーク',
              ),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            CreatedPlan(),
            Bookmarkplan(),
          ],
        ),
      ),
    );
  }
}
