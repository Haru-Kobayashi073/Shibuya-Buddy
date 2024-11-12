import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';
import '../../utils/styles/app_color.dart';
import '../../utils/styles/app_text_style.dart';
import '../components/textArrowButton.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final circleSize = screenWidth * 0.1;
    return Scaffold(
      body: Column(
        children: [
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 50, left: 16, right: 5),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      width: circleSize,
                      height: circleSize,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            Assets.images.usericon.path,
                          ),
                        ),
                        // color: AppColor.blue400,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      'Name',
                      style: AppTextStyle.textStyle.copyWith(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {
                      debugPrint('TapEdit!');
                    },
                    icon: const Icon(Icons.edit, size: 24),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'AIの機能について',
                    style: AppTextStyle.textStyle.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    debugPrint('TapDetail');
                  },
                  child: Text(
                    '詳細',
                    style: AppTextStyle.textStyle.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const Icon(Icons.arrow_forward_ios, size: 24),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColor.grey200,
              ),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: const EdgeInsets.only(
                          top: 16, bottom: 80, left: 16), //bottomは仮
                      child: Text(
                        '現在のグレードは${false ? 'プレミアム' : 'ベーシック'}です。',
                        style: AppTextStyle.textStyle.copyWith(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16, top: 16),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '設定',
                style: AppTextStyle.textStyle.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Expanded(
            child: ListView(
              padding: const EdgeInsets.all(16),
              physics: const NeverScrollableScrollPhysics(),
              children: <Widget>[
                Textarrowbutton(
                  text: 'アカウント',
                  onTapCallback: () {
                    debugPrint('TapAccount');
                  },
                ),
                Textarrowbutton(
                  text: '言語',
                  onTapCallback: () {
                    debugPrint('TapLanguage');
                  },
                ),
                Textarrowbutton(
                  text: 'テーマ',
                  onTapCallback: () {
                    debugPrint('TapThema');
                  },
                ),
                Textarrowbutton(
                  text: '利用規約・プライバシーポリシー',
                  onTapCallback: () {
                    debugPrint('TapPrivacyPolicy');
                  },
                ),
                Textarrowbutton(
                  text: 'このアプリについて',
                  onTapCallback: () {
                    debugPrint('TapAboutthisApp');
                  },
                ),
                Textarrowbutton(
                  text: '開発者について',
                  onTapCallback: () {
                    debugPrint('TapAboutTheDeveloper');
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
