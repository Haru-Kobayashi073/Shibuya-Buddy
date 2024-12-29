import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../i18n/strings.g.dart';
import '../../../utils/styles/app_color.dart';
import '../../../utils/styles/app_text_style.dart';
import '../../components/wide_button.dart';

class BottomModal extends StatefulWidget {
  const BottomModal({super.key});

  @override
  State<BottomModal> createState() => _BottomModalState();
}

class _BottomModalState extends State<BottomModal> {
  String _selectedPlan = t.billDetailsPage.pricingOptions.oneDay.duration;

  @override
  Widget build(BuildContext context) {
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
            _buildPlanCardsRow(),
            const Gap(16),
            _buildUpgradeButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildPlanCardsRow() {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: const EdgeInsets.only(left: 16),
      child: Row(
        children: [
          ..._buildPlanCards().map(
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

  Widget _buildUpgradeButton() {
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
        onPressed: () => print(_selectedPlan),
      ),
    );
  }

  List<Widget> _buildPlanCards() {
    final pricingOptions = t.billDetailsPage.pricingOptions;

    return [
      _buildPlanCard(
        PricingOption(
          duration: pricingOptions.oneDay.duration,
          price: pricingOptions.oneDay.price,
          discount: pricingOptions.oneDay.discount,
        ),
      ),
      _buildPlanCard(
        PricingOption(
          duration: pricingOptions.threeDays.duration,
          price: pricingOptions.threeDays.price,
          discount: pricingOptions.threeDays.discount,
        ),
      ),
      _buildPlanCard(
        PricingOption(
          duration: pricingOptions.fiveDays.duration,
          price: pricingOptions.fiveDays.price,
          discount: pricingOptions.fiveDays.discount,
        ),
      ),
      _buildPlanCard(
        PricingOption(
          duration: pricingOptions.sevenDays.duration,
          price: pricingOptions.sevenDays.price,
          discount: pricingOptions.sevenDays.discount,
        ),
      ),
      _buildPlanCard(
        PricingOption(
          duration: pricingOptions.lifetime.duration,
          price: pricingOptions.lifetime.price,
          discount: pricingOptions.lifetime.discount,
        ),
      ),
    ];
  }

  Widget _buildPlanCard(PricingOption pricingOption) {
    return PlanCard(
      label: pricingOption.duration,
      price: pricingOption.price,
      discount: pricingOption.discount,
      groupValue: _selectedPlan,
      value: pricingOption.duration,
      onChanged: (value) {
        setState(() {
          _selectedPlan = value!;
        });
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
                (Set<WidgetState> states) {
                  if (states.contains(WidgetState.selected)) {
                    return AppColor.yellow600Primary;
                  }
                  return AppColor.yellow600Primary;
                },
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
