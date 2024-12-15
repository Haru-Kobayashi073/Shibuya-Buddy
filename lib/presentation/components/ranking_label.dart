import 'package:flutter/material.dart';

import '../../utils/styles/app_color.dart';
import '../../utils/styles/app_text_style.dart';

Color rankingColor(int? ranking) {
  switch (ranking) {
    case 1:
      return AppColor.yellow900Tertiary;
    case 2:
      return AppColor.blue900Tertiary;
    case 3:
      return AppColor.yellow600Primary;
    case null:
      return AppColor.grey600;
    default:
      return AppColor.grey600;
  }
}

class RankingLabel extends StatelessWidget {
  const RankingLabel({
    super.key,
    required this.ranking,
  });
  final int? ranking;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomRight: Radius.circular(80),
          topRight: Radius.circular(20),
          topLeft: Radius.circular(20),
          bottomLeft: Radius.circular(20),
        ),
        color: rankingColor(ranking),
      ),
      width: 45,
      height: 45,
      child: Align(
        alignment: const Alignment(-0.1, -0.3),
        child: Text(
          '$ranking',
          style: AppTextStyle.textStyle.copyWith(
            fontWeight: FontWeight.bold,
            fontSize: 20,
            color: AppColor.white,
          ),
        ),
      ),
    );
  }
}
