import 'package:flutter/material.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

import '../../gen/assets.gen.dart';
import '../../i18n/strings.g.dart';
import '../../utils/routes/app_router.dart';
import '../../utils/styles/app_text_style.dart';
import 'components/list_tile_with_icon.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    final i18n = Translations.of(context);
    final myPageItemi18n = i18n.myPage;

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: Row(
          children: [
            ClipOval(
              child: Image.asset(
                Assets.images.userIcon.path,
                fit: BoxFit.cover,
                width: 40,
                height: 40,
              ),
            ),
            const SizedBox(width: 8),
            Text(
              'Name',
              style: AppTextStyle.textStyle.copyWith(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            IconButton(
              onPressed: () {},
              icon: const Icon(Symbols.edit, size: 24),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    myPageItemi18n.aboutAIFunction,
                    style: AppTextStyle.textStyle.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    constraints: const BoxConstraints(),
                    padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                    onPressed: () async {
                      await const AiFunctionsDetailRoute().push<void>(context);
                    },
                    icon: Row(
                      children: [
                        Text(
                          myPageItemi18n.details,
                          style: AppTextStyle.textStyle.copyWith(
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(width: 4),
                        const Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                ],
              ),
              Text(
                myPageItemi18n.settings,
                style: AppTextStyle.textStyle.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Expanded(
                child: ListView(
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    ListTileWithIcon(
                      title: myPageItemi18n.account,
                      onTap: () async =>
                          const AccountRoute().push<void>(context),
                    ),
                    ListTileWithIcon(
                      title: myPageItemi18n.language,
                      onTap: () async =>
                          const ChangeLanguagePageRoute().push<void>(context),
                    ),
                    ListTileWithIcon(
                      title: myPageItemi18n.theme,
                      onTap: () async => const ThemeRoute().push<void>(context),
                    ),
                    ListTileWithIcon(
                      title: myPageItemi18n.termsOfUsePrivacyPolicy,
                      onTap: () async => const TermsofUsePrivacyPolicyRoute()
                          .push<void>(context),
                    ),
                    ListTileWithIcon(
                      title: myPageItemi18n.aboutThisApp,
                      onTap: () async =>
                          const AboutAppRoute().push<void>(context),
                    ),
                    ListTileWithIcon(
                      title: myPageItemi18n.aboutTheDeveloper,
                      onTap: () async =>
                          const AboutDevRoute().push<void>(context),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
