import 'package:flutter/material.dart';

import '../../utils/extensions/context.dart';
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
    final devicesize = context.deviceWidth;
    final size = devicesize * 0.1;
    debugPrint(devicesize.toString());
    return Offstage(
      offstage: ranking == null,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
            bottomRight: Radius.circular(32),
            topRight: Radius.circular(8),
            topLeft: Radius.circular(12),
            bottomLeft: Radius.circular(8),
          ),
          color: rankingColor(ranking),
        ),
        padding: EdgeInsets.symmetric(
          horizontal: ranking! < 10 ? devicesize * 0.03 : devicesize * 0.01,
          vertical: devicesize * 0.01,
        ),
        width: size,
        height: size,
        child: Text(
          ranking.toString(),
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
