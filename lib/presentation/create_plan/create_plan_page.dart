import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

import '../../utils/styles/app_color.dart';
import '../../utils/styles/app_text_style.dart';
import '../components/wide_button.dart';
import 'components/plan_text_field.dart';
import 'components/topic_chip_field.dart';
import 'create_plan_notifier.dart';

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
                initialValue: planState.location,
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
                initialValue: planState.numberOfPeople,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              ),
              const Gap(16),
              PlanTextField(
                label: '交通手段',
                hintText: '電車・徒歩',
                prefixIcon: const Icon(Symbols.commute),
                initialValue: planState.transport,
              ),
              const Gap(16),
              PlanTextField(
                label: 'カテゴリ',
                hintText: '子連れ向け',
                prefixIcon: const Icon(Symbols.category),
                initialValue: planState.category,
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
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
