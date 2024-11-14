import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';
import '../../utils/styles/app_color.dart';
import '../../utils/styles/app_text_style.dart';
import '../components/textArrowButton.dart';
import '../../i18n/strings.g.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = Translations.of(context);
    final myPageItemi18n = i18n.MyPage;
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
