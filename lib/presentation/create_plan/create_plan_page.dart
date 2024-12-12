import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';
import '../../i18n/strings.g.dart';

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
    final i18n = Translations.of(context);
    final i18nCreatePlanPage = i18n.createPlanPage;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          i18nCreatePlanPage.title,
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
                label: i18nCreatePlanPage.label.location,
                readOnly: true,
                prefixIcon: const Icon(Symbols.location_on),
                controller: planNotifier.locationController,
              ),
              const Gap(16),
              Row(
                children: [
                  Expanded(
                    child: PlanTextField(
                      label: i18nCreatePlanPage.label.scheduleStart,
                      hintText: i18nCreatePlanPage.hintText.startDate,
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
                      label: i18nCreatePlanPage.label.scheduleEnd,
                      hintText: i18nCreatePlanPage.hintText.endDate,
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
                label: i18nCreatePlanPage.label.numberOfPeople,
                hintText: i18nCreatePlanPage.hintText.numberOfPeople,
                prefixIcon: const Icon(Symbols.supervisor_account),
                controller: planNotifier.numberOfPeopleController,
                keyboardType: TextInputType.none,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                onTap: () async {
                  final selectedValue = await showModalBottomSheet<String>(
                    context: context,
                    builder: (BuildContext context) {
                      return SizedBox(
                        height: 300,
                        child: SelectionModal(
                          selectionList:
                              i18nCreatePlanPage.numberOfPeopleOptions,
                          field: SelectionField.numberOfPeople,
                          title: i18nCreatePlanPage.label.numberOfPeople,
                          isSingleSelect: true,
                        ),
                      );
                    },
                  );
                  if (selectedValue != null) {
                    planNotifier.numberOfPeopleController.text = selectedValue;
                  }
                },
              ),
              const Gap(16),
              PlanTextField(
                label: i18nCreatePlanPage.label.transport,
                hintText: i18nCreatePlanPage.hintText.transport,
                prefixIcon: const Icon(Icons.commute),
                controller: planNotifier.transportController,
                readOnly: true,
                onTap: () async {
                  await showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return SizedBox(
                        height: 300,
                        child: SelectionModal(
                          selectionList: i18nCreatePlanPage.transportOptions,
                          field: SelectionField.transport,
                          title: i18nCreatePlanPage.label.transport,
                        ),
                      );
                    },
                  );
                },
              ),
              const Gap(16),
              PlanTextField(
                label: i18nCreatePlanPage.label.category,
                hintText: i18nCreatePlanPage.hintText.category,
                prefixIcon: const Icon(Symbols.category),
                controller: planNotifier.categoryController,
                readOnly: true,
                onTap: () async {
                  final selectedValue = await showModalBottomSheet<String>(
                    context: context,
                    builder: (BuildContext context) {
                      return SizedBox(
                        height: 300,
                        child: SelectionModal(
                          selectionList: i18nCreatePlanPage.categoryOptions,
                          field: SelectionField.category,
                          title: i18nCreatePlanPage.label.category,
                        ),
                      );
                    },
                  );
                  if (selectedValue != null) {
                    planNotifier.categoryController.text = selectedValue;
                  }
                },
              ),
              const Gap(16),
              PlanTextField(
                label: i18nCreatePlanPage.label.topics,
                hintText: i18nCreatePlanPage.hintText.topics,
                prefixIcon: const Icon(Symbols.emoji_objects),
                suffixIcon: const Icon(Symbols.close),
                controller: planNotifier.topicsController,
                readOnly: true,
                onClear: planNotifier.clearTopics,
              ),
              TopicChipField(
                topics: i18nCreatePlanPage.defaultTopics,
                selectedTopics: planState.selectedTopics,
                onChange: (updatedTopics) {
                  planNotifier
                    ..updateSelectedTopics(updatedTopics)
                    ..updateTopicsController();
                },
              ),
              const Gap(16),
              WideButton(
                label: i18nCreatePlanPage.submitButton,
                color: AppColor.yellow600Primary,
                onPressed: () {
                  // ボタンの処理を追加
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
