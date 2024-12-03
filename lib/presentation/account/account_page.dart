import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../gen/assets.gen.dart';
import '../../i18n/strings.g.dart';
import '../../utils/routes/app_router.dart';
import '../../utils/styles/app_color.dart';
import '../../utils/styles/app_text_style.dart';
import '../components/wide_button.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  final auth = FirebaseAuth.instance;

  final _googleSignIn = GoogleSignIn();

  User? _user;

  @override
  Widget build(BuildContext context) {
    final i18n = Translations.of(context);
    final i18nSignInPage = i18n.authentication.accountPage;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          i18n.myPage.account,
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
            WideButton.icon(
              label: false
                  ? i18nSignInPage.linkedWithApple
                  : i18nSignInPage.alreadyLinkedApple,
              color: AppColor.blue50Background,
              icon: SvgPicture.asset(Assets.icons.appleIcon),
              onPressed: () {},
            ),
            const SizedBox(height: 16),
            WideButton.icon(
              label: true
                  ? i18nSignInPage.linkedWithGoogle
                  : i18nSignInPage.alreadyLinkedApple,
              color: AppColor.blue50Background,
              icon: SvgPicture.asset(Assets.icons.googleIcon),
              onPressed: _linkWithGoogle,
            ),
            const SizedBox(height: 32),
            TextButton(
              onPressed: () async {
                await FirebaseAuth.instance
                    .signOut(); //ログアウトしたことがユーザーに伝わるようにする。
                debugPrint('ログアウト');
                debugPrint(_user.toString());
                if (_user != null) {
                  context.go(const SignInPageRouteData().location);
                }
              },
              child: Text(
                i18nSignInPage.signOut,
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

  Future<void> _linkWithGoogle() async {
    if (_user == null) {
      debugPrint('User is not signed in');
      return;
    }

    try {
      // Googleサインインの処理
      final googleUser = await _googleSignIn.signIn();
      if (googleUser == null) {
        debugPrint('Google sign-in failed');
        return;
      }

      final googleAuth = await googleUser.authentication;

      // Google認証情報をFirebaseにリンク
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // 現在ログインしているユーザーにGoogleアカウントをリンク
      final userCredential = await _user!.linkWithCredential(credential);

      debugPrint('Google account linked: ${_user?.displayName}');
    } catch (e) {
      debugPrint('Error linking Google account: $e');
    }
  }
}
