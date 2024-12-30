import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';

import '../../../i18n/strings.g.dart';
import '../../../utils/styles/app_color.dart';
import '../../components/wide_button.dart';
import './purchase_item_card.dart';

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
        onPressed: () {},
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
    return PurchaseItemCard(
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
