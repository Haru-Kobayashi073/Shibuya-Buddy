import 'package:flutter/material.dart';

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
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ..._buildPlanCards().map((card) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: card,
                    );
                  }),
                  const SizedBox(width: 16),
                ],
              ),
            ),
            const SizedBox(height: 16),
            Padding(
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
                  print(_selectedPlan);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildPlanCards() {
    return [
      PlanCard(
        label: t.billDetailsPage.pricingOptions.oneDay.duration,
        price: t.billDetailsPage.pricingOptions.oneDay.price,
        groupValue: _selectedPlan,
        value: t.billDetailsPage.pricingOptions.oneDay.duration,
        onChanged: (value) {
          setState(() {
            _selectedPlan = value!;
          });
        },
      ),
      PlanCard(
        label: t.billDetailsPage.pricingOptions.threeDays.duration,
        price: t.billDetailsPage.pricingOptions.threeDays.price,
        discount: t.billDetailsPage.pricingOptions.threeDays.discount,
        groupValue: _selectedPlan,
        value: t.billDetailsPage.pricingOptions.threeDays.duration,
        onChanged: (value) {
          setState(() {
            _selectedPlan = value!;
          });
        },
      ),
      PlanCard(
        label: t.billDetailsPage.pricingOptions.fiveDays.duration,
        price: t.billDetailsPage.pricingOptions.fiveDays.price,
        discount: t.billDetailsPage.pricingOptions.fiveDays.discount,
        groupValue: _selectedPlan,
        value: t.billDetailsPage.pricingOptions.fiveDays.duration,
        onChanged: (value) {
          setState(() {
            _selectedPlan = value!;
          });
        },
      ),
      PlanCard(
        label: t.billDetailsPage.pricingOptions.sevenDays.duration,
        price: t.billDetailsPage.pricingOptions.sevenDays.price,
        discount: t.billDetailsPage.pricingOptions.sevenDays.discount,
        groupValue: _selectedPlan,
        value: t.billDetailsPage.pricingOptions.sevenDays.duration,
        onChanged: (value) {
          setState(() {
            _selectedPlan = value!;
          });
        },
      ),
      PlanCard(
        label: t.billDetailsPage.pricingOptions.lifetime.duration,
        price: t.billDetailsPage.pricingOptions.lifetime.price,
        groupValue: _selectedPlan,
        value: t.billDetailsPage.pricingOptions.lifetime.duration,
        onChanged: (value) {
          setState(() {
            _selectedPlan = value!;
          });
        },
      ),
    ];
  }
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
                  const SizedBox(height: 4),
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
        if (discount != null)
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(80),
                  topRight: Radius.circular(20),
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20),
                ),
                color: AppColor.yellow800Secondary,
              ),
              width: 35,
              height: 35,
              child: Align(
                alignment: const Alignment(-0.1, -0.3),
                child: Text(
                  discount ?? '',
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
