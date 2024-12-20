import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../gen/assets.gen.dart';
import '../../i18n/strings.g.dart';
import '../../infrastructure/authentication/authentication_data_source.dart';
import '../../utils/routes/app_router.dart';
import '../../utils/styles/app_color.dart';
import '../../utils/styles/app_text_style.dart';
import '../components/wide_button.dart';
import 'account_page_notifier.dart';

class AccountPage extends ConsumerWidget {
  const AccountPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(accountPageNotifierProvider.notifier);
    final i18n = Translations.of(context);
    final titlei18n = i18n.accountPage.title;
    final itemi18n = i18n.accountPage.items;
    final diaLogi18n = i18n.accountPage.diaLog;
    final accountLinkage = ref.watch(
      accountPageNotifierProvider.select((state) => state..googleLinkage),
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(
          titlei18n,
          style: AppTextStyle.textStyle.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Opacity(
              opacity: accountLinkage.appleLinkage ? 0.4 : 1,
              child: WideButton.icon(
                label: accountLinkage.appleLinkage
                    ? itemi18n.alreadyLinkedApple
                    : itemi18n.linkedWithApple,
                color: AppColor.blue50Background,
                icon: SvgPicture.asset(Assets.icons.appleIcon),
                onPressed: () async {
                  if (accountLinkage.appleLinkage) {
                    //仮ダイアログ
                    await showDialog<void>(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text(diaLogi18n.title),
                          content: Text(diaLogi18n.appleText),
                          actions: [
                            TextButton(
                              child: Text(diaLogi18n.no),
                              onPressed: () => Navigator.pop(context),
                            ),
                            TextButton(
                              child: Text(diaLogi18n.yes),
                              onPressed: () async {
                                Navigator.pop(context);
                                await notifier.unlinkSocialAccount(
                                  SocialAuthDomain.apple,
                                );
                              },
                            ),
                          ],
                        );
                      },
                    );
                  } else {
                    await notifier.linkedWithApple();
                  }
                },
              ),
            ),
            const SizedBox(height: 16),
            Opacity(
              opacity: accountLinkage.googleLinkage ? 0.4 : 1,
              child: WideButton.icon(
                label: accountLinkage.googleLinkage
                    ? itemi18n.alreadyLinkedGoogle
                    : itemi18n.linkedWithGoogle,
                color: AppColor.blue50Background,
                icon: SvgPicture.asset(Assets.icons.googleIcon),
                onPressed: () async {
                  if (accountLinkage.googleLinkage) {
                    //仮ダイアログ
                    await showDialog<void>(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text(diaLogi18n.title),
                          content: Text(diaLogi18n.googleText),
                          actions: [
                            TextButton(
                              child: Text(diaLogi18n.no),
                              onPressed: () => Navigator.pop(context),
                            ),
                            TextButton(
                              child: Text(diaLogi18n.yes),
                              onPressed: () async {
                                Navigator.pop(context);
                                await notifier.unlinkSocialAccount(
                                  SocialAuthDomain.google,
                                );
                              },
                            ),
                          ],
                        );
                      },
                    );
                  } else {
                    await notifier.linkedWithGoogle();
                  }
                },
              ),
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () async {
                await notifier.signOut(
                  onSuccess: () async =>
                      const SignInPageRouteData().go(context),
                );
              },
              child: Text(
                itemi18n.signOut,
                style: AppTextStyle.textStyle.copyWith(
                  color: Colors.red,
                  fontSize: 14,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
