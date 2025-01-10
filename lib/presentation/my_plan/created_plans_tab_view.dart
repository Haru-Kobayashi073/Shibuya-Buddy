import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../error_page.dart';
import '../../i18n/strings.g.dart';
import '../../utils/routes/app_router.dart';
import '../components/loading_overlay.dart';
import 'components/empty_data.dart';
import 'components/plan_list.dart';
import 'my_plan_page_notifier.dart';

class CreatedPlanTabView extends ConsumerWidget {
  const CreatedPlanTabView({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncState = ref.watch(myPlanPageNotifierProvider);
    final i18n = Translations.of(context);
    final createItemi18n = i18n.myPlanPage.createdPlansItems;

    return asyncState.when(
      data: (state) {
        final plans = state.createPlanList;
        return plans.isEmpty
            ? EmptyDataView(
                message: createItemi18n.nondata,
                labelText: createItemi18n.createaplan,
                onPressed: () async {
                  await const CreatePlanPageRouteData().push<void>(context);
                },
              )
            : RefreshIndicator(
                onRefresh: () async {},
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: PlanList(plans: plans),
                ),
              );
      },
      loading: Loading.new,
      error: (error, stack) {
        return ErrorPage(
          onRetry: () async {},
        );
      },
    );
  }
}
