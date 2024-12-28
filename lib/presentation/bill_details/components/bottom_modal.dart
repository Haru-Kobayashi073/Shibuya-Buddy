import 'package:flutter/material.dart';

import '../../../utils/styles/app_color.dart';
import '../../components/wide_button.dart';

class BottomModal extends StatefulWidget {
  const BottomModal({super.key});

  @override
  State<BottomModal> createState() => _BottomModalState();
}

class _BottomModalState extends State<BottomModal> {
  String _selectedPlan = '1日分'; // 初期値を設定

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
            offset: const Offset(0, 3), // 影の位置
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 24),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // プラン選択部分
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.only(left: 16), // 16pxのPaddingを追加
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween, // 追加
                children: [
                  ..._buildPlanCards().map((card) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 8),
                      child: card,
                    );
                  }),
                  const SizedBox(width: 16), // 余白を追加
                ],
              ),
            ),
            const SizedBox(height: 16),
            // アップグレードボタン
            WideButton(
              label: 'プレミアムにアップグレード',
              color: AppColor.yellow600Primary,
              onPressed: () {
                // 選択されたプランを処理
                print('選択されたプラン: $_selectedPlan');
              },
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _buildPlanCards() {
    return [
      PlanCard(
        label: '1日分',
        price: '300円',
        groupValue: _selectedPlan,
        value: '1日分',
        onChanged: (value) {
          setState(() {
            _selectedPlan = value!;
          });
        },
      ),
      PlanCard(
        label: '3日分',
        price: '890円',
        groupValue: _selectedPlan,
        value: '3日分',
        discount: '-5%',
        onChanged: (value) {
          setState(() {
            _selectedPlan = value!;
          });
        },
      ),
      PlanCard(
        label: '5日分',
        price: '1387円',
        groupValue: _selectedPlan,
        value: '5日分',
        discount: '-7.5%',
        onChanged: (value) {
          setState(() {
            _selectedPlan = value!;
          });
        },
      ),
      PlanCard(
        label: '7日分',
        price: '1800円',
        groupValue: _selectedPlan,
        value: '7日分',
        discount: '-10%',
        onChanged: (value) {
          setState(() {
            _selectedPlan = value!;
          });
        },
      ),
      PlanCard(
        label: '永久分',
        price: '9999円',
        groupValue: _selectedPlan,
        value: '永久分',
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
              color: AppColor.yellow50Background, // 常に薄い黄色の背景色
              borderRadius: BorderRadius.circular(12),
              border: Border.all(
                color: isSelected
                    ? AppColor.yellow600Primary // 選択時の枠線
                    : Colors.transparent, // 非選択時の枠線
                width: 2,
              ),
            ),
            child: Theme(
              data: Theme.of(context).copyWith(
                unselectedWidgetColor: Colors.grey, // 非選択時の色を設定
              ),
              child: RadioListTile<String>(
                value: value,
                groupValue: groupValue,
                onChanged: onChanged, // 選択時の処理
                activeColor: AppColor.yellow600Primary,
                hoverColor: AppColor.yellow600Primary,
                contentPadding: EdgeInsets.zero, // 余白削除
                title: Column(
                  children: [
                    Text(
                      label,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center, // テキストの中央揃え
                    ),
                    const SizedBox(height: 4),
                    Text(
                      price,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                      textAlign: TextAlign.center, // テキストの中央揃え
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        if (discount != null)
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
              decoration: BoxDecoration(
                color: AppColor.yellow800Secondary,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Text(
                discount!,
                style: const TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  color: AppColor.white,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
