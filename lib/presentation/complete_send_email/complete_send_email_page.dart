import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../i18n/strings.g.dart';
import '../../utils/extensions/context.dart';
import '../../utils/providers/scaffold_messenger/scaffold_messenger.dart';
import '../../utils/routes/app_router.dart';
import '../../utils/styles/app_color.dart';
import '../../utils/styles/app_text_style.dart';
import '../components/oblong_button.dart';
import '../reset_password/reset_password_page_notifier.dart';

class CompleteSendEmailPage extends ConsumerWidget {
  const CompleteSendEmailPage({super.key, required this.email});
  final String email;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(resetPasswordPageNotifierProvider.notifier);
    final i18n = Translations.of(context);
    final i18nCompleteSendEmailPage = i18n.authentication.completeSendEmailPage;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.white,
        forceMaterialTransparency: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: context.deviceHeight * 0.05),
            Text(
              i18nCompleteSendEmailPage.title,
              style: AppTextStyle.textStyle.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),
            Flexible(
              child: Text(
                i18nCompleteSendEmailPage.description(email: email),
                style: AppTextStyle.textStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            const SizedBox(height: 24),
            OblongButton(
              label: i18nCompleteSendEmailPage.buttons.toSignIn,
              color: AppColor.yellow600Primary,
              onPressed: () {
                const SignInPageRouteData().go(context);
              },
            ),
            const SizedBox(height: 16),
            OblongButton(
              label: i18nCompleteSendEmailPage.buttons.resendEmail,
              color: AppColor.yellow600Primary,
              onPressed: () async {
                await notifier.sendPasswordResetEmail(
                  email: email,
                  onSuccess: () async {
                    ref
                        .read(scaffoldMessengerProvider.notifier)
                        .showSuccessSnackBar(
                          i18nCompleteSendEmailPage.successResendEmail,
                        );
                  },
                );
              },
            ),
            const SizedBox(height: 16),
            OblongButton(
              label: i18nCompleteSendEmailPage.buttons.changeEmail,
              color: AppColor.blue50Background,
              onPressed: () => context.pop(),
            ),
          ],
        ),
      ),
    );
  }
}
