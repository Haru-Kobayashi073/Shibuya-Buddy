import 'package:flutter/material.dart';
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
        child: Column(
          children: [
            PlanTextField(
              label: '目的地',
              hintText: '渋谷',
              prefixIcon: const Icon(Symbols.location_on),
              initialValue: planState.location,
            ),
            const Gap(16),
            PlanTextField(
              label: '日程',
              hintText: '12:00 ~ 13:30',
              prefixIcon: const Icon(Symbols.calendar_month),
              initialValue: planState.date,
            ),
            const Gap(16),
            PlanTextField(
              label: '人数',
              hintText: '4人',
              prefixIcon: const Icon(Symbols.supervisor_account),
              initialValue: planState.numberOfPeople,
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
              readOnly: true,
              initialValue: planState.selectedTopics.join(', '),
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
    );
  }
}
