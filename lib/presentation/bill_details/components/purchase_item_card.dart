import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../../utils/styles/app_color.dart';
import '../../../utils/styles/app_text_style.dart';

class PurchaseItemCard extends StatelessWidget {
  const PurchaseItemCard({
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
