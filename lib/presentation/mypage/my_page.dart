import 'package:flutter/material.dart';

import '../../utils/styles/app_text_style.dart';
import '../components/textArrowButton.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    // final screenHeight = MediaQuery.of(context).size.height;
    final circleSize = screenWidth * 0.1;
    return Scaffold(
      body: Column(
        children: [
          // const Spacer(),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(top: 50, left: 16, right: 16),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: Container(
                      width: circleSize,
                      height: circleSize,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.black,
                        // image: DecorationImage(
                        //   fit: BoxFit.fill,
                        //   image: AssetImage('/images/sample.jpg'),
                        // ),
                      ),
                    ),
                  ),
                  // const SizedBox(width: 15),
                  Text(
                    'Name',
                    style: AppTextStyle.textStyle.copyWith(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
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
            child: Container(),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
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
