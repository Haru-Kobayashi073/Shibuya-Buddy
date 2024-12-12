import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
  _AccountPageState createState() => _AccountPageState();
}

class _AccountPageState extends ConsumerState<AccountPage> {
  bool _isGoogleLinked = false;

  @override
  void initState() {
    super.initState();

    final accountLogic = ref.read(accountLogicProvider);
    final user = FirebaseAuth.instance.currentUser;

    setState(() {
      _isGoogleLinked = accountLogic.googleLinkageConfirmation(user);
    });
  }

  @override
  Widget build(BuildContext context) {
    final i18n = Translations.of(context);
    final titlei18n = i18n.accountPage.title;
    final itemi18n = i18n.accountPage.items;
    final snackBari18n = i18n.accountPage.snackBar;
    final diaLogi18n = i18n.accountPage.diaLog;
    final snack = ref.watch(scaffoldMessengerProvider.notifier);
    final auth = FirebaseAuth.instance;
    final user = auth.currentUser;
    final accountLogic = ref.read(accountLogicProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          titlei18n,
          style: AppTextStyle.textStyle.copyWith(
            fontSize: 16,
            fontWeight: FontWeight.w100,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Opacity(
              opacity: 1,
              child: WideButton.icon(
                label: accountLogic.appleLinkageConfirmationnfirmation(user)
                    ? itemi18n.alreadyLinkedApple
                    : itemi18n.linkedWithApple,
                color: AppColor.blue50Background,
                icon: SvgPicture.asset(Assets.icons.appleIcon),
                onPressed: () {},
              ),
            ),
            const SizedBox(height: 16),
            Opacity(
              opacity: _isGoogleLinked ? 0.5 : 1,
              child: WideButton.icon(
                label: _isGoogleLinked
                    ? itemi18n.alreadyLinkedGoogle
                    : itemi18n.linkedWithGoogle,
                color: AppColor.blue50Background,
                icon: SvgPicture.asset(Assets.icons.googleIcon),
                onPressed: () async {
                  if (_isGoogleLinked) {
                    await showDialog<void>(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text(diaLogi18n.title),
                          content: Text(diaLogi18n.text),
                          actions: [
                            TextButton(
                              child: Text(diaLogi18n.cancel),
                              onPressed: () => Navigator.pop(context),
                            ),
                            TextButton(
                              child: Text(diaLogi18n.ok),
                              onPressed: () async {
                                // Google連携を解除
                                final result =
                                    await accountLogic.unlinkGoogle(user);
                                if (result) {
                                  setState(() {
                                    _isGoogleLinked = false;
                                    Navigator.pop(context);
                                  });
                                }
                              },
                            ),
                          ],
                        );
                      },
                    );
                    debugPrint('連携解除');
                  } else {
                    // Googleでサインインして連携
                    final result = await accountLogic.linkedWithGoogle();
                    if (result != null) {
                      setState(() {
                        _isGoogleLinked = true;
                      });
                    }
                  }
                },
              ),
            ),
            const SizedBox(height: 32),
            // サインアウトボタン
            TextButton(
              onPressed: () async {
                if (user != null) {
                  context.go(const SignInPageRouteData().location);
                  await accountLogic.signOut();
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
