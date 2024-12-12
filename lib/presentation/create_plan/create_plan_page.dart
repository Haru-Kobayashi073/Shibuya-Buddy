import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

import '../../utils/styles/app_color.dart';
import '../../utils/styles/app_text_style.dart';
import '../components/wide_button.dart';
import 'components/plan_text_field.dart';
import 'components/selection_modal.dart';
import 'components/topic_chip_field.dart';
import 'create_plan_notifier.dart';
import 'create_plan_state.dart';

class CreatePlanPage extends ConsumerWidget {
  const CreatePlanPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final planState = ref.watch(createPlanNotifierProvider);
    final planNotifier = ref.watch(createPlanNotifierProvider.notifier);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'プランの作成',
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
            children: [
              PlanTextField(
                label: '目的地',
                hintText: '渋谷',
                readOnly: true,
                prefixIcon: const Icon(Symbols.location_on),
                controller: planNotifier.locationController,
              ),
              const Gap(16),
              Row(
                children: [
                  Expanded(
                    child: PlanTextField(
                      label: '初日',
                      hintText: '1月1日（月）',
                      prefixIcon: const Icon(Symbols.calendar_month),
                      controller: planNotifier.startDateController,
                      keyboardType: TextInputType.none,
                      readOnly: true,
                      onTap: () async {
                        await planNotifier.showCupertinoDatePicker(
                          context,
                          planNotifier.startDateController,
                        );
                      },
                    ),
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
                  Expanded(
                    child: PlanTextField(
                      label: '最終日',
                      hintText: '1月3日（水）',
                      prefixIcon: const Icon(Symbols.calendar_month),
                      controller: planNotifier.endDateController,
                      keyboardType: TextInputType.none,
                      readOnly: true,
                      onTap: () async {
                        await planNotifier.showCupertinoDatePicker(
                          context,
                          planNotifier.endDateController,
                        );
                      },
                    ),
                  ),
                ],
              ),
              const Gap(16),
              PlanTextField(
                label: '人数',
                hintText: '4人',
                prefixIcon: const Icon(Symbols.supervisor_account),
                controller: planNotifier.numberOfPeopleController,
                keyboardType: TextInputType.none,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                onTap: () async {
                  final selectedNumberOfPeopleValue =
                      await showModalBottomSheet<String>(
                    context: context,
                    builder: (BuildContext context) {
                      return const SizedBox(
                        height: 300,
                        child: SelectionModal(
                          selectionList: [
                            '1人',
                            '2人',
                            '3人',
                            '4人',
                            '5人',
                            '6人以上',
                          ],
                          field: SelectionField.numberOfPeople,
                          title: '人数',
                          isSingleSelect: true,
                        ),
                      );
                    },
                  );
                  if (selectedNumberOfPeopleValue != null) {
                    planNotifier.numberOfPeopleController.text =
                        selectedNumberOfPeopleValue;
                  }
                },
              ),
              const Gap(16),
              PlanTextField(
                label: '交通手段',
                hintText: '選択してください',
                prefixIcon: const Icon(Icons.commute),
                controller: planNotifier.transportController,
                readOnly: true,
                onTap: () async {
                  await showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return const SizedBox(
                        height: 300,
                        child: SelectionModal(
                          selectionList: ['電車', '徒歩', '車', 'バス'],
                          field: SelectionField.transport,
                          title: '交通手段',
                        ),
                      );
                    },
                  );
                },
              ),
              const Gap(16),
              PlanTextField(
                label: 'カテゴリ',
                hintText: '子連れ向け',
                prefixIcon: const Icon(Symbols.category),
                controller: planNotifier.categoryController,
                readOnly: true,
                onTap: () async {
                  final selectedCategoryValue =
                      await showModalBottomSheet<String>(
                    context: context,
                    builder: (BuildContext context) {
                      return const SizedBox(
                        height: 300,
                        child: SelectionModal(
                          selectionList: [
                            '子連れ向け',
                            '大人向け',
                            'エンタメ',
                            'アクティビティ',
                            '歴史',
                          ],
                          field: SelectionField.category,
                          title: 'カテゴリ',
                        ),
                      );
                    },
                  );
                  if (selectedCategoryValue != null) {
                    planNotifier.categoryController.text =
                        selectedCategoryValue;
                  }
                },
              ),
              const Gap(16),
              PlanTextField(
                label: '旅のトピック',
                hintText: '旅のプラン',
                prefixIcon: const Icon(Symbols.emoji_objects),
                suffixIcon: const Icon(Symbols.close),
                controller: planNotifier.topicsController,
                readOnly: true,
                onClear: planNotifier.clearTopics,
              ),
              TopicChipField(
                topics: const [
                  'グルメ',
                  'ショッピング',
                  'アクティビティ',
                  '映画',
                ],
                selectedTopics: planState.selectedTopics,
                onChange: (updatedTopics) {
                  planNotifier
                    ..updateSelectedTopics(updatedTopics)
                    ..updateTopicsController();
                },
              ),
              const Gap(16),
              WideButton(
                label: 'プランをAIに伝える',
                color: AppColor.yellow600Primary,
                onPressed: () {
                  print(
                    '旅のトピック: ${planState.selectedTopics}, カテゴリ: ${planState.selectedCategory}, 交通手段: ${planState.selectedTransport}, 人数: ${planState.selectedNumberofPeople}, 初日: ${planNotifier.startDateController}',
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
