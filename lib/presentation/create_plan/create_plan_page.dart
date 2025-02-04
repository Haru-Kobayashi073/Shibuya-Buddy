import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

import '../../error_page.dart';
import '../../i18n/strings.g.dart';
import '../../utils/providers/locale/locale_service.dart';
import '../../utils/routes/app_router.dart';
import '../../utils/styles/app_color.dart';
import '../../utils/styles/app_text_style.dart';
import '../components/confirm_dialog.dart';
import '../components/loading_overlay.dart';
import '../components/wide_button.dart';
import 'components/plan_text_field.dart';
import 'components/selection_modal.dart';
import 'components/topic_chip_field.dart';
import 'components/topic_text_field.dart';
import 'create_plan_notifier.dart';

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
    final localeNotifier = ref.read(localeServiceProvider.notifier);

    return planState.when(
      data: (value) {
        final planState = value;
        useEffect(
          () {
            topicsController.text = planState.selectedTopics
                .map(localeNotifier.getTranslatedTopicName)
                .join(', ');
            numberOfPeopleController.text = planState.numberOfPeople;
            transportController.text = planState.transports.join(', ');
            categoryController.text = planState.categories.join(', ');
            startDateController.text = planState.startDate ?? '';
            endDateController.text = planState.endDate ?? '';
            return null;
          },
          [planState],
        );

        return PopScope(
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
                  children: [
                    PlanTextField(
                      label: t.createPlanPage.label.location,
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
                      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                      onTap: () async {
                        final selectedValue =
                            await showModalBottomSheet<String>(
                          context: context,
                          builder: (_) {
                            return SizedBox(
                              height: 300,
                              child: SelectionModal(
                                selectionField: SelectionField.numberOfPeople,
                                title: t.createPlanPage.label.numberOfPeople,
                                onTapCheckBox:
                                    planNotifier.updateNumberOfPeople,
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
                      onTap: () async {
                        await showModalBottomSheet<void>(
                          context: context,
                          builder: (_) {
                            return SizedBox(
                              height: 300,
                              child: SelectionModal(
                                selectionField: SelectionField.transport,
                                title: t.createPlanPage.label.transport,
                                onTapCheckBox: planNotifier.updateTransport,
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
                      onTap: () async {
                        final selectedValue =
                            await showModalBottomSheet<String>(
                          context: context,
                          builder: (_) {
                            return SizedBox(
                              height: 300,
                              child: SelectionModal(
                                selectionField: SelectionField.category,
                                title: t.createPlanPage.label.category,
                                onTapCheckBox: planNotifier.updateCategory,
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
                      controller: topicsController,
                      onClear: planNotifier.clearSelectedTopics,
                    ),
                    TopicChipField(
                      topics: planState.topics,
                      selectedTopics: planState.selectedTopics,
                      onSelected: planNotifier.updateSelectedTopics,
                    ),
                    const Gap(16),
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
        );
      },
      error: (_, __) =>
          ErrorPage(onRetry: () => ref.invalidate(createPlanNotifierProvider)),
      loading: Loading.new,
    );
  }
}
