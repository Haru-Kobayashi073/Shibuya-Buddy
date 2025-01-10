import 'package:flutter/material.dart';

import '../../utils/styles/app_color.dart';
import '../../utils/styles/app_text_style.dart';

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
            preferredSize: const Size.fromHeight(48),
            child: ColoredBox(
              color: AppColor.white,
              child: TabBar(
                tabs: const [
                  Tab(
                    text: '参考プラン',
                  ),
                  Tab(text: 'マップ'),
                ],
                labelStyle: AppTextStyle.textStyle
                    .copyWith(fontWeight: FontWeight.bold),
                unselectedLabelStyle: AppTextStyle.textStyle.copyWith(
                  fontWeight: FontWeight.bold,
                  color: AppColor.grey800,
                ),
                indicator: const UnderlineTabIndicator(
                  borderSide: BorderSide(color: AppColor.black, width: 2),
                ),
                indicatorColor: AppColor.black,
                indicatorSize: TabBarIndicatorSize.tab,
              ),
            ),
          ),
        ),
        body: const TabBarView(
          children: [
            Center(child: Text('タブ1')),
            Center(child: Text('タブ2')),
          ],
        ),
      ),
    );
  }
}
