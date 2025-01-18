import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../i18n/strings.g.dart';
import '../../../utils/styles/app_color.dart';
import '../../components/wide_button.dart';
import '../bill_detail_page_notifier.dart';
import './purchase_item_card.dart';

class BottomModal extends HookConsumerWidget {
  const BottomModal({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selectedPlan = ref.watch(billDetailPageNotifierProvider);

    return Container(
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
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _buildPlanCardsRow(
            selectedPlan,
            (value) => ref
                .read(billDetailPageNotifierProvider.notifier)
                .selectPlan(value!),
          ),
          const Gap(16),
          _buildUpgradeButton(
            selectedPlan,
            () async => ref
                .read(billDetailPageNotifierProvider.notifier)
                .purchaseItem(),
          ),
        ],
      ),
    );
  }

  Widget _buildPlanCardsRow(
    String selectedPlan,
    void Function(String?) onItemTapped,
  ) {
    final pricingOptions = t.billDetailsPage.pricingOptions;

    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Wrap(
        spacing: 8,
        children: [
          PurchaseItemCard(
            pricingOption: PricingOption(
              duration: pricingOptions.oneDay.duration,
              price: pricingOptions.oneDay.price,
              discount: pricingOptions.oneDay.discount,
            ),
            groupValue: selectedPlan,
            onChanged: onItemTapped,
          ),
          PurchaseItemCard(
            pricingOption: PricingOption(
              duration: pricingOptions.threeDays.duration,
              price: pricingOptions.threeDays.price,
              discount: pricingOptions.threeDays.discount,
            ),
            groupValue: selectedPlan,
            onChanged: onItemTapped,
          ),
          PurchaseItemCard(
            pricingOption: PricingOption(
              duration: pricingOptions.fiveDays.duration,
              price: pricingOptions.fiveDays.price,
              discount: pricingOptions.fiveDays.discount,
            ),
            groupValue: selectedPlan,
            onChanged: onItemTapped,
          ),
          PurchaseItemCard(
            pricingOption: PricingOption(
              duration: pricingOptions.sevenDays.duration,
              price: pricingOptions.sevenDays.price,
              discount: pricingOptions.sevenDays.discount,
            ),
            groupValue: selectedPlan,
            onChanged: onItemTapped,
          ),
          PurchaseItemCard(
            pricingOption: PricingOption(
              duration: pricingOptions.lifetime.duration,
              price: pricingOptions.lifetime.price,
              discount: pricingOptions.lifetime.discount,
            ),
            groupValue: selectedPlan,
            onChanged: onItemTapped,
          ),
        ],
      ),
    );
  }

  Widget _buildUpgradeButton(
    String selectedPlan,
    void Function() onSubmit,
  ) {
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
        onPressed: onSubmit,
      ),
    );
  }
}

final class PricingOption {
  PricingOption({
    required this.duration,
    required this.price,
    this.discount,
  });
  final String duration;
  final String price;
  final String? discount;
}
