import 'dart:math';

import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';
import '../../i18n/strings.g.dart';
import '../../utils/styles/app_text_style.dart';
import '../components/text_arrow_button.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = Translations.of(context);
    final myPageItemi18n = i18n.MyPage;
    final screenSize = MediaQuery.of(context).size;
    // final circleSize = screenWidth * 0.1;
    final circleSize = min(screenSize.width, screenSize.height) * 0.1;
    final spaceHeight = screenSize.height * 0.06;
    debugPrint(spaceHeight.toString());
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Padding(
          padding: EdgeInsets.only(top: spaceHeight, left: 16, right: 6),
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: SizedBox(
                  width: circleSize,
                  height: circleSize,
                  child: AspectRatio(
                    aspectRatio: 1,
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage(
                            Assets.images.usericon.path,
                          ),
                        ),
                      ),
                    ),
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    myPageItemi18n.aboutAIFunction,
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
                    myPageItemi18n.details,
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
          const Padding(
            padding: EdgeInsets.only(left: 16, right: 16),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                myPageItemi18n.settings,
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
                  text: myPageItemi18n.account,
                  onTapCallback: () {
                    debugPrint('TapAccount');
                  },
                ),
                Textarrowbutton(
                  text: myPageItemi18n.language,
                  onTapCallback: () {
                    debugPrint('TapLanguage');
                  },
                ),
                Textarrowbutton(
                  text: myPageItemi18n.themes,
                  onTapCallback: () {
                    debugPrint('TapThema');
                  },
                ),
                Textarrowbutton(
                  text: myPageItemi18n.termsofUsePrivacyPolicy,
                  onTapCallback: () {
                    debugPrint('TapPrivacyPolicy');
                  },
                ),
                Textarrowbutton(
                  text: myPageItemi18n.aboutThisApp,
                  onTapCallback: () {
                    debugPrint('TapAboutthisApp');
                  },
                ),
                Textarrowbutton(
                  text: myPageItemi18n.aboutTheDeveloper,
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
