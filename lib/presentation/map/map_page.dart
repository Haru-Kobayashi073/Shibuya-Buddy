import 'package:flutter/material.dart';

import '../../utils/styles/app_color.dart';
import '../../utils/styles/app_text_style.dart';
import 'components/day_tab_bar.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.blue50Background,
          title: Text(
            '東京一泊二日',
            style: AppTextStyle.textStyle.copyWith(
              fontWeight: FontWeight.bold,
              fontSize: 14,
            ),
          ),
          bottom: PreferredSize(
            preferredSize:
                Size.fromHeight(MediaQuery.of(context).size.height * 0.13),
            child: const DayTabBar(),
          ),
        ),
      ),
    );
  }
}
