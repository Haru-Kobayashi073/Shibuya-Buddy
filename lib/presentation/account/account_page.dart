import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../gen/assets.gen.dart';
import '../../i18n/strings.g.dart';
import '../../utils/providers/scaffold_messenger/scaffold_messenger.dart';
import '../../utils/routes/app_router.dart';
import '../../utils/styles/app_color.dart';
import '../../utils/styles/app_text_style.dart';
import '../components/wide_button.dart';
import 'account_page_notifier.dart';

class AccountPage extends ConsumerStatefulWidget {
  const AccountPage({super.key});

  @override
  ConsumerState<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends ConsumerState<AccountPage> {
  @override
  Widget build(BuildContext context) {
    final notifier = ref.watch(accountPageNotifierProvider.notifier);
    final i18n = Translations.of(context);
    final titlei18n = i18n.accountPage.title;
    final itemi18n = i18n.accountPage.items;
    final snackBari18n = i18n.accountPage.snackBar;
    final diaLogi18n = i18n.accountPage.diaLog;
    final snack = ref.watch(scaffoldMessengerProvider.notifier);
    final auth = FirebaseAuth.instance;
    final user = auth.currentUser;
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
                          content: Text(diaLogi18n.apple_text),
                          actions: [
                            TextButton(
                              child: Text(diaLogi18n.no),
                              onPressed: () => Navigator.pop(context),
                            ),
                            TextButton(
                              child: Text(diaLogi18n.yes),
                              onPressed: () async {
                                Navigator.pop(context);
                                await notifier.unlinkApple(user);
                                await notifier.updateAppleLinkStatus(
                                  link: false,
                                );
                                snack.showSuccessSnackBar(
                                  snackBari18n.accountDeactivation,
                                );
                              },
                            ),
                          ],
                        );
                      },
                    );
                  } else {
                    final result = await notifier.linkedWithApple();
                    if (result == null) {
                      //Appleのアカウント連携機能が完成したら'!='に修正
                      snack.showSuccessSnackBar(snackBari18n.successfulLinkage);
                      await notifier.updateAppleLinkStatus(link: true);
                    }
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
                          content: Text(diaLogi18n.google_text),
                          actions: [
                            TextButton(
                              child: Text(diaLogi18n.no),
                              onPressed: () => Navigator.pop(context),
                            ),
                            TextButton(
                              child: Text(diaLogi18n.yes),
                              onPressed: () async {
                                Navigator.pop(context);
                                await notifier.unlinkGoogle(user);
                                await notifier.updateGoogleLinkStatus(
                                  link: false,
                                );
                                snack.showSuccessSnackBar(
                                  snackBari18n.accountDeactivation,
                                );
                              },
                            ),
                          ],
                        );
                      },
                    );
                  } else {
                    // Googleでサインインして連携
                    final result = await notifier.linkedWithGoogle();
                    if (result != null) {
                      snack.showSuccessSnackBar(snackBari18n.successfulLinkage);
                      await notifier.updateGoogleLinkStatus(link: true);
                    }
                  }
                },
              ),
            ),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () async {
                if (user != null) {
                  context.go(const SignInPageRouteData().location);
                  await notifier.signOut();
                  snack.showSuccessSnackBar(snackBari18n.loggedOut);
                }
              },
              child: Text(
                itemi18n.signOut,
                style: AppTextStyle.textStyle.copyWith(
                  color: Colors.red,
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
