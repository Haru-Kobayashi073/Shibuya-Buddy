import 'dart:math';

import 'package:flutter/material.dart';

import '../../gen/assets.gen.dart';
import '../../i18n/strings.g.dart';
import '../../utils/routes/app_router.dart';
import '../../utils/styles/app_text_style.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = Translations.of(context);
    final myPageItemi18n = i18n.MyPage;
    final screenSize = MediaQuery.of(context).size;
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
                onPressed: () async {},
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
                  onTap: () async {
                    await const AiFunctionsDetailRoute().push<void>(context);
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
              physics: const NeverScrollableScrollPhysics(),
              children: <Widget>[
                ListTile(
                  leading: Text(
                    myPageItemi18n.account,
                    style: AppTextStyle.textStyle.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () async {
                    await const AccountRoute().push<void>(context);
                  },
                ),
                ListTile(
                  leading: Text(
                    myPageItemi18n.language,
                    style: AppTextStyle.textStyle.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () async {
                    await const ChangeLanguagePageRoute().push<void>(context);
                  },
                ),
                ListTile(
                  leading: Text(
                    myPageItemi18n.themes,
                    style: AppTextStyle.textStyle.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () async {
                    await const ThemeRoute().push<void>(context);
                  },
                ),
                ListTile(
                  leading: Text(
                    myPageItemi18n.termsofUsePrivacyPolicy,
                    style: AppTextStyle.textStyle.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () async {
                    await const TermsofUsePrivacyPolicyRoute()
                        .push<void>(context);
                  },
                ),
                ListTile(
                  leading: Text(
                    myPageItemi18n.aboutThisApp,
                    style: AppTextStyle.textStyle.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () async {
                    await const AboutAppRoute().push<void>(context);
                  },
                ),
                ListTile(
                  leading: Text(
                    myPageItemi18n.aboutTheDeveloper,
                    style: AppTextStyle.textStyle.copyWith(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  trailing: const Icon(Icons.arrow_forward_ios),
                  onTap: () async {
                    await const AboutDevRoute().push<void>(context);
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
