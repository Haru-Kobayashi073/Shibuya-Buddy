import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../i18n/strings.g.dart';
import '../../utils/styles/app_color.dart';
import '../../utils/styles/app_text_style.dart';
import '../components/error_view.dart';
import '../create_plan_loading/create_loading_overlay.dart';
import 'bookmark_plans_tab_view.dart';
import 'created_plans_tab_view.dart';
import 'my_plan_page_notifier.dart';

class MyPlanPage extends ConsumerWidget {
  const MyPlanPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedIndex = ref.watch(selectedIndexProvider);
    final state = ref.watch(myPlanPageNotifierProvider);
    final i18n = Translations.of(context);
    final titlei18n = i18n.myPlanPage.title;
    final tabi18n = i18n.myPlanPage.tabs;

    return state.when(
      data: (value) {
        return DefaultTabController(
          length: 2,
          child: Builder(
            builder: (context) {
              final tabController = DefaultTabController.of(context)
                ..index = selectedIndex;
              tabController.addListener(() {
                ref.read(selectedIndexProvider.notifier).state =
                    tabController.index;
              });

              return Scaffold(
                appBar: AppBar(
                  title: Text(
                    titlei18n,
                    style: AppTextStyle.textStyle.copyWith(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  bottom: TabBar(
                    controller: tabController,
                    onTap: (index) {
                      ref.read(selectedIndexProvider.notifier).state = index;
                    },
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
                body: TabBarView(
                  controller: tabController,
                  children: [
                    CreatedPlanTabView(plans: value.createPlanList),
                    BookmarkPlansTabView(plans: value.bookmarkPlanList),
                  ],
                ),
              );
            },
          ),
        );
      },
      error: (e, s) => ErrorView(
        error: e,
        stackTrace: s,
        onRetry: () => ref.invalidate(myPlanPageNotifierProvider),
      ),
      loading: CreateLoading.new,
    );
  }
}
