import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../gen/assets.gen.dart';
import '../../i18n/strings.g.dart';
import '../../utils/providers/scaffold_messenger/scaffold_messenger.dart';
import '../../utils/routes/app_router.dart';
import '../../utils/styles/app_color.dart';
import '../../utils/styles/app_text_style.dart';
import '../components/wide_button.dart';

class AccountPage extends ConsumerStatefulWidget {
  const AccountPage({super.key});

  @override
  ConsumerState<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends ConsumerState<AccountPage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();
  bool _isGoogleLinked = false;

  @override
  void initState() {
    super.initState();
    final user = _auth.currentUser;
    _isGoogleLinked = googleLinkageConfirmation(user);
  }

  bool googleLinkageConfirmation(User? user) {
    if (user != null) {
      for (final provider in user.providerData) {
        if (provider.providerId == 'google.com') {
          return true;
        }
      }
    }
    return false;
  }

  bool appleLinkageConfirmation(User? user) {
    if (user != null) {
      for (final provider in user.providerData) {
        if (provider.providerId == 'apple.com') {
          return true;
        }
      }
    }
    return false;
  }

  Future<void> unLnkGoogle(User? user) async {
    final snack = ref.watch(scaffoldMessengerProvider.notifier);
    final snackBar = t.accountPage.snackBar;
    if (user != null) {
      try {
        await user.unlink('google.com');
        setState(() {
          _isGoogleLinked = false;
        });
        snack.showSuccessSnackBar(snackBar.accountDeactivation);
      } on FirebaseAuthException {
        snack.showExceptionSnackBar(snackBar.unlinkageFailure);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final i18n = Translations.of(context);
    final titlei18n = i18n.accountPage.title;
    final itemi18n = i18n.accountPage.items;
    final snackBari18n = i18n.accountPage.snackBar;
    final snack = ref.watch(scaffoldMessengerProvider.notifier);
    final auth = FirebaseAuth.instance;
    final user = auth.currentUser;

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
                label: appleLinkageConfirmation(user)
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
                    // Google連携を解除
                    await unLnkGoogle(user);
                  } else {
                    // Googleでサインインして連携
                    final result = await linkedWithGoogle();
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
                  await signOut();
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

  // Googleサインインメソッド
  Future<User?> linkedWithGoogle() async {
    final snackBar = t.accountPage.snackBar;
    final snack = ref.watch(scaffoldMessengerProvider.notifier);
    try {
      final googleUser = await _googleSignIn.signIn();

      if (googleUser == null) {
        return null;
      }

      final googleAuth = await googleUser.authentication;

      // Firebase用の資格情報を作成
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      final currentUser = _auth.currentUser;

      if (currentUser != null) {
        try {
          await currentUser.linkWithCredential(credential);
          snack.showSuccessSnackBar(snackBar.successfulLinkage);
          return currentUser;
        } on FirebaseAuthException catch (e) {
          if (e.code == 'provider-already-linked') {
            snack.showExceptionSnackBar(snackBar.accountLinked);
          } else if (e.code == 'invalid-credential') {
            snack.showExceptionSnackBar(snackBar.nvalidCredential);
          }
          return null;
        }
      } else {
        try {
          final userCredential = await _auth.signInWithCredential(credential);
          final user = userCredential.user;
          return user;
        } on FirebaseAuthException {
          return null;
        }
      }
    } on PlatformException {
      snack.showExceptionSnackBar(snackBar.linkageCancelled);
    }
    return null;
  }

  Future<void> signOut() async {
    await _googleSignIn.signOut();
    await _auth.signOut();
  }
}
