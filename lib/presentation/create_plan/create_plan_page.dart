import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
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
import 'components/topic_text_field.dart';
import 'create_plan_notifier.dart';
import 'create_plan_state.dart';

class CreatePlanPage extends HookConsumerWidget {
  const CreatePlanPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final planState = ref.watch(createPlanNotifierProvider);
    final planNotifier = ref.watch(createPlanNotifierProvider.notifier);

    final locationController =
        useTextEditingController(text: t.createPlanPage.hintText.location);
    final startDateController = useTextEditingController();
    final endDateController = useTextEditingController();
    final numberOfPeopleController = useTextEditingController();
    final transportController = useTextEditingController();
    final categoryController = useTextEditingController();
    final topicsController = useTextEditingController();

    useEffect(
      () {
        topicsController.text = planState.selectedTopics.join(', ');
        numberOfPeopleController.text =
            planState.selectedNumberofPeople.join(', ');
        transportController.text = planState.selectedTransport.join(', ');
        categoryController.text = planState.selectedCategory.join(', ');
        startDateController.text = planState.startDate != null
            ? planNotifier.formatDate(planState.startDate!)
            : '';
        endDateController.text = planState.endDate != null
            ? planNotifier.formatDate(planState.endDate!)
            : '';
        return null;
      },
      [planState],
    );

    return Scaffold(
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
            children: [
              PlanTextField(
                label: t.createPlanPage.label.location,
                readOnly: true,
                prefixIcon: const Icon(Symbols.location_on),
                controller: locationController,
              ),
              const Gap(16),
              Row(
                children: [
                  Expanded(
                    child: PlanTextField(
                      prefixIcon: const Icon(Symbols.calendar_month),
                      label: t.createPlanPage.label.scheduleStart,
                      controller: startDateController,
                      readOnly: true,
                      onTap: () async {
                        await planNotifier.showCupertinoDatePicker(
                          context,
                          startDateController,
                          isStartDate: true,
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
                      label: t.createPlanPage.label.scheduleEnd,
                      controller: endDateController,
                      prefixIcon: const Icon(Symbols.calendar_month),
                      readOnly: true,
                      onTap: () async {
                        await planNotifier.showCupertinoDatePicker(
                          context,
                          endDateController,
                          isStartDate: false,
                        );
                      },
                    ),
                  ),
                ],
              ),
              const Gap(16),
              PlanTextField(
                label: t.createPlanPage.label.numberOfPeople,
                prefixIcon: const Icon(Symbols.supervisor_account),
                controller: numberOfPeopleController,
                keyboardType: TextInputType.none,
                readOnly: true,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                onTap: () async {
                  final selectedValue = await showModalBottomSheet<String>(
                    context: context,
                    builder: (BuildContext context) {
                      return SizedBox(
                        height: 300,
                        child: SelectionModal(
                          selectionList: t.createPlanPage.numberOfPeopleOptions,
                          field: SelectionField.numberOfPeople,
                          title: t.createPlanPage.label.numberOfPeople,
                          isSingleSelect: true,
                        ),
                      );
                    },
                  );
                  if (selectedValue != null) {
                    numberOfPeopleController.text = selectedValue;
                  }
                },
              ),
              const Gap(16),
              PlanTextField(
                label: t.createPlanPage.label.transport,
                prefixIcon: const Icon(Icons.commute),
                controller: transportController,
                readOnly: true,
                onTap: () async {
                  await showModalBottomSheet<void>(
                    context: context,
                    builder: (BuildContext context) {
                      return SizedBox(
                        height: 300,
                        child: SelectionModal(
                          selectionList: t.createPlanPage.transportOptions,
                          field: SelectionField.transport,
                          title: t.createPlanPage.label.transport,
                        ),
                      );
                    },
                  );
                },
              ),
              const Gap(16),
              PlanTextField(
                label: t.createPlanPage.label.category,
                prefixIcon: const Icon(Symbols.category),
                controller: categoryController,
                readOnly: true,
                onTap: () async {
                  final selectedValue = await showModalBottomSheet<String>(
                    context: context,
                    builder: (BuildContext context) {
                      return SizedBox(
                        height: 300,
                        child: SelectionModal(
                          selectionList: t.createPlanPage.categoryOptions,
                          field: SelectionField.category,
                          title: t.createPlanPage.label.category,
                        ),
                      );
                    },
                  );
                  if (selectedValue != null) {
                    categoryController.text = selectedValue;
                  }
                },
              ),
              const Gap(16),
              TopicTextField(
                label: t.createPlanPage.label.topics,
                prefixIcon: const Icon(Symbols.emoji_objects),
                suffixIcon: const Icon(Symbols.close),
                controller: topicsController,
                readOnly: true,
                onClear: planNotifier.clearTopics,
              ),
              TopicChipField(
                topics: t.createPlanPage.defaultTopics,
                selectedTopics: planState.selectedTopics,
                onChange: planNotifier.updateSelectedTopics,
              ),
              const Gap(16),
              WideButton(
                label: t.createPlanPage.submitButton,
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
