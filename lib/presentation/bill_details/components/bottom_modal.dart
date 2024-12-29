import 'package:flutter/material.dart';

import '../../../utils/styles/app_color.dart';
import '../../../utils/styles/app_text_style.dart';
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: WideButton.gradient(
                label: 'プレミアムにアップグレード',
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
                unselectedWidgetColor: AppColor.yellow600Primary, // 非選択時の色を設定
              ),
              child: RadioListTile<String>(
                value: value,
                groupValue: groupValue,
                onChanged: onChanged, // 選択時の処理
                activeColor: AppColor.yellow600Primary,
                fillColor: WidgetStateProperty.resolveWith<Color>(
                  (Set<WidgetState> states) {
                    if (states.contains(WidgetState.selected)) {
                      return AppColor.yellow600Primary; // 選択時
                    }
                    return AppColor.yellow600Primary; // 非選択時も黄色
                  },
                ),
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
