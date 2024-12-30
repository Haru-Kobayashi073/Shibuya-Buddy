import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';

import '../../../i18n/strings.g.dart';
import '../../../utils/styles/app_color.dart';
import '../../../utils/styles/app_text_style.dart';
import '../../components/wide_button.dart';

class BottomModal extends HookWidget {
  const BottomModal({super.key});

  @override
  Widget build(BuildContext context) {
    // useStateで状態を管理
    final selectedPlan =
        useState(t.billDetailsPage.pricingOptions.oneDay.duration);

    return DecoratedBox(
      decoration: BoxDecoration(
        color: AppColor.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 10,
            blurRadius: 20,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildPlanCardsRow(selectedPlan),
            const Gap(16),
            _buildUpgradeButton(selectedPlan),
          ],
        ),
      ),
    );
  }

  Widget _buildPlanCardsRow(ValueNotifier<String> selectedPlan) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.only(left: 16),
      child: Row(
        children: [
          ..._buildPlanCards(selectedPlan).map(
            (card) => Padding(
              padding: const EdgeInsets.only(right: 8),
              child: card,
            ),
          ),
          const Gap(16),
        ],
      ),
    );
  }

  Widget _buildUpgradeButton(ValueNotifier<String> selectedPlan) {
    // Add selectedPlan as parameter
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: WideButton.gradient(
        label: t.billDetailsPage.upgradeButton,
        gradient: const LinearGradient(
          colors: [
            AppColor.yellow600Primary,
            AppColor.yellow200,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        onPressed: () {
        },
      ),
    );
  }

  List<Widget> _buildPlanCards(ValueNotifier<String> selectedPlan) {
    final pricingOptions = t.billDetailsPage.pricingOptions;

    return [
      _buildPlanCard(
        PricingOption(
          duration: pricingOptions.oneDay.duration,
          price: pricingOptions.oneDay.price,
          discount: pricingOptions.oneDay.discount,
        ),
        selectedPlan,
      ),
      _buildPlanCard(
        PricingOption(
          duration: pricingOptions.threeDays.duration,
          price: pricingOptions.threeDays.price,
          discount: pricingOptions.threeDays.discount,
        ),
        selectedPlan,
      ),
      _buildPlanCard(
        PricingOption(
          duration: pricingOptions.fiveDays.duration,
          price: pricingOptions.fiveDays.price,
          discount: pricingOptions.fiveDays.discount,
        ),
        selectedPlan,
      ),
      _buildPlanCard(
        PricingOption(
          duration: pricingOptions.sevenDays.duration,
          price: pricingOptions.sevenDays.price,
          discount: pricingOptions.sevenDays.discount,
        ),
        selectedPlan,
      ),
      _buildPlanCard(
        PricingOption(
          duration: pricingOptions.lifetime.duration,
          price: pricingOptions.lifetime.price,
          discount: pricingOptions.lifetime.discount,
        ),
        selectedPlan,
      ),
    ];
  }

  Widget _buildPlanCard(
    PricingOption pricingOption,
    ValueNotifier<String> selectedPlan,
  ) {
    return PlanCard(
      label: pricingOption.duration,
      price: pricingOption.price,
      discount: pricingOption.discount,
      groupValue: selectedPlan.value,
      value: pricingOption.duration,
      onChanged: (value) {
        selectedPlan.value = value!;
      },
    );
  }
}

class PricingOption {
  PricingOption({
    required this.duration,
    required this.price,
    this.discount,
  });
  final String duration;
  final String price;
  final String? discount;
}

class PlanCard extends StatelessWidget {
  const PlanCard({
    super.key,
    required this.label,
    required this.price,
    required this.groupValue,
    required this.value,
    required this.onChanged,
    this.discount,
  });

  final String label;
  final String price;
  final String groupValue;
  final String value;
  final String? discount;
  final ValueChanged<String?> onChanged;

  @override
  Widget build(BuildContext context) {
    final isSelected = groupValue == value;

    return Stack(
      clipBehavior: Clip.none,
      children: [
        IntrinsicWidth(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            decoration: BoxDecoration(
              color: AppColor.yellow50Background,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color:
                    isSelected ? AppColor.yellow600Primary : Colors.transparent,
                width: 2,
              ),
            ),
            child: RadioListTile<String>(
              value: value,
              groupValue: groupValue,
              onChanged: onChanged,
              activeColor: AppColor.yellow600Primary,
              fillColor: WidgetStateProperty.resolveWith<Color>(
                (states) => AppColor.yellow600Primary,
              ),
              contentPadding: EdgeInsets.zero,
              title: Column(
                children: [
                  Text(
                    label,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const Gap(4),
                  Text(
                    price,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
        if (discount != null && discount!.isNotEmpty)
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(80),
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(40),
                  bottomLeft: Radius.circular(30),
                ),
                color: AppColor.yellow800Secondary,
              ),
              width: 40,
              height: 35,
              child: Center(
                child: Text(
                  discount!,
                  style: AppTextStyle.textStyle.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 10,
                    color: AppColor.white,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}
