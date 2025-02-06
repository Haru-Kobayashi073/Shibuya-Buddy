import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:logger/web.dart';

import 'i18n/strings.g.dart';
import 'infrastructure/firebase/firebase_auth_state_listener.dart';
import 'presentation/components/loading_overlay.dart';
import 'utils/providers/scaffold_messenger/scaffold_messenger.dart';
import 'utils/routes/app_router.dart';

class StartUpPage extends HookConsumerWidget {
  const StartUpPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(firebaseAuthStateListenerProvider);
    final message = ref.watch(scaffoldMessengerProvider.notifier);
    final i18nEmail = t.authentication.emailVerificationPage.snackBar;
    final i18nPhone = t.authentication.phoneNumberInputPage.scaffoldMessenger;
    final logger = Logger();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      user.when(
        data: (user) {
          if (user != null) {
            logger
              ..i('電話番号:${user.phoneNumber == null}')
              ..i('メール認証:${user.emailVerified}')
              ..i('名前:${user.uid}');
            if (!user.emailVerified) {
              context.go(
                EmailVerificationPageRouteData(email: user.email.toString())
                    .location,
              );
              WidgetsBinding.instance.addPostFrameCallback((_) {
                message.showExceptionSnackBar(i18nEmail.emailVerification);
              });
            } else if (user.phoneNumber == null || user.phoneNumber == '') {
              context.go(const PhoneNumberInputPageRouteData().location);
              WidgetsBinding.instance.addPostFrameCallback((_) {
                message
                    .showExceptionSnackBar(i18nPhone.phoneNumberVerificaiton);
              });
            } else {
              context.go(const HomeScreenRouteData().location);
            }
          } else {
            context.go(const SignInPageRouteData().location);
          }
        },
        error: (e, s) => const SizedBox(),
        loading: () => const Loading(),
      );
    });

    return const Scaffold(
      body: Loading(),
    );
  }
}
