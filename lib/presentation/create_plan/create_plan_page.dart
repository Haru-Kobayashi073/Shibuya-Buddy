import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../../i18n/strings.g.dart';
import '../../utils/routes/app_router.dart';
import '../../utils/styles/app_color.dart';
import '../../utils/styles/app_text_style.dart';
import '../components/confirm_dialog.dart';
import '../components/error_view.dart';
import '../components/loading_overlay.dart';
import '../components/wide_button.dart';
import './components/transport_selector.dart';
import 'components/number_of_people_selector.dart';
import 'components/plan_text_field.dart';
import 'components/schedule_selector.dart';
import 'components/topic_chip_field.dart';
import 'create_plan_notifier.dart';

class CreatePlanPage extends HookConsumerWidget {
  const CreatePlanPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final planStateAsync = ref.watch(createPlanNotifierProvider);
    final planNotifier = ref.watch(createPlanNotifierProvider.notifier);

    // 各種コントローラーの生成
    final locationController =
        useTextEditingController(text: t.createPlanPage.hintText.location);
    final startDateController = useTextEditingController();
    final endDateController = useTextEditingController();

    final planState =
        planStateAsync.maybeWhen(data: (data) => data, orElse: () => null);
    useEffect(
      () {
        if (planState != null) {
          startDateController.text = planState.startDate ?? '';
          endDateController.text = planState.endDate ?? '';
        }
        return null;
      },
      [planState],
    );

    return planStateAsync.when(
      data: (planState) => PopScope(
        canPop: false,
        onPopInvokedWithResult: (didPop, _) async {
          if (!didPop) {
            await showDialog<void>(
              context: context,
              builder: (_) => ConfirmDialog(
                onConfirm: () => context.pop(),
                titleText: t.confirmDialog.popPage.title,
                bodyText: t.confirmDialog.popPage.description,
              ),
            );
          }
        },
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              t.createPlanPage.title,
              style: AppTextStyle.textStyle.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 場所
                  Text(
                    t.createPlanPage.label.location,
                    style: AppTextStyle.textStyle.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Gap(8),
                  PlanTextField(
                    label: '',
                    prefixIcon: const Icon(
                      Symbols.location_on,
                      color: AppColor.blue800Secondary,
                    ),
                    controller: locationController,
                  ),
                  // 場所終わり
                  const Gap(16),
                  // 日程入力のタイトル（共通：スケジュール）
                  Text(
                    'スケジュール',
                    style: AppTextStyle.textStyle.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Gap(8),
                  // 日程入力（開始日／終了日）
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ScheduleSelector(
                        dateController: startDateController,
                        planNotifier: planNotifier,
                        isStartDate: true,
                      ),
                      const Gap(8),
                      Text(
                        '〜',
                        style: AppTextStyle.textStyle.copyWith(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Gap(8),
                      ScheduleSelector(
                        dateController: endDateController,
                        planNotifier: planNotifier,
                        isStartDate: false,
                      ),
                    ],
                  ),
                  const Gap(16),
                  // 日程入力おわり

                  // 人数選択
                  Text(
                    t.createPlanPage.label.numberOfPeople,
                    style: AppTextStyle.textStyle.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Gap(8),
                  NumberOfPeopleSelector(
                    adultCount: planState.adultCount,
                    childCount: planState.childCount,
                    onIncrementAdult: planNotifier.incrementAdult,
                    onDecrementAdult: planNotifier.decrementAdult,
                    onIncrementChild: planNotifier.incrementChild,
                    onDecrementChild: planNotifier.decrementChild,
                  ),
                  const Gap(16),

                  // 交通手段選択
                  Text(
                    t.createPlanPage.label.transport,
                    style: AppTextStyle.textStyle.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Gap(8),
                  TransportSelector(
                    transportOptions: t.createPlanPage.transportOptions,
                    selectedTransports: planState.transports,
                    onTransportSelected: planNotifier.updateTransport,
                  ),
                  const Gap(16),

                  // トピック選択
                  Text(
                    t.createPlanPage.label.topics,
                    style: AppTextStyle.textStyle.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TopicChipField(
                    topics: planState.topics,
                    selectedTopics: planState.selectedTopics,
                    onSelected: planNotifier.updateSelectedTopics,
                  ),
                  const Gap(16),

                  // プラン送信ボタン
                  WideButton(
                    label: t.createPlanPage.submitButton,
                    color: AppColor.yellow600Primary,
                    onPressed: () async {
                      await planNotifier.submitPlanPrompt(
                        onNavigate: (planPrompt) async {
                          await BuddyChatPageRouteData(planPrompt)
                              .push<void>(context);
                        },
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      error: (e, s) => ErrorView(
        error: e,
        stackTrace: s,
        onRetry: () => ref.invalidate(createPlanNotifierProvider),
      ),
      loading: Loading.new,
    );
  }
}
