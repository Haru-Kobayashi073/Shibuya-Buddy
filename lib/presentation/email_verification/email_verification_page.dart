import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../i18n/strings.g.dart';
import '../../utils/extensions/context.dart';
import '../../utils/routes/app_router.dart';
import '../../utils/styles/app_color.dart';
import '../../utils/styles/app_text_style.dart';
import '../components/wide_button.dart';
import 'email_verification_page_notifier.dart';
import 'email_verification_state.dart';

class EmailVerificationPage extends ConsumerWidget {
  const EmailVerificationPage({
    super.key,
    required this.email,
  });
  final String email;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i18n = Translations.of(context);
    final i18nEmailVerificationPage = i18n.authentication.emailVerificationPage;
    final state = ref.watch(emailVerificationPageNotifierProvider);
    final notifier = ref.read(emailVerificationPageNotifierProvider.notifier);

    Widget getSubmitLabel() {
      final style = AppTextStyle.textStyle.copyWith(
        fontSize: 14,
        color: AppColor.black,
        fontWeight: FontWeight.w700,
      );
      return switch (state.emailVerificationButtonState) {
        EmailVerificationButtonState.initialize =>
          LoadingAnimationWidget.waveDots(
            color: AppColor.black,
            size: 20,
          ),
        EmailVerificationButtonState.coolDown => Text(
            '${state.resendEmailVerificationCountdown}s',
            style: style,
          ),
        EmailVerificationButtonState.resend => Text(
            i18nEmailVerificationPage.buttons.resendEmail,
            style: style,
          ),
        EmailVerificationButtonState.verified => Text(
            i18nEmailVerificationPage.buttons.toNext,
            style: style,
          ),
      };
    }

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
            Gap(context.deviceHeight * 0.05),
            Text(
              i18nEmailVerificationPage.title,
              style: AppTextStyle.textStyle.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Gap(16),
            Flexible(
              child: Text(
                i18nEmailVerificationPage.descriptionForDestination(
                  email: email,
                ),
                style: AppTextStyle.textStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            Flexible(
              child: Text(
                i18nEmailVerificationPage.descriptionForCoolDown,
                style: AppTextStyle.textStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Gap(64),
            Align(
              child: state.isEmailVerified
                  ? Icon(
                      Icons.check_circle_outline_rounded,
                      color: AppColor.blue600Primary,
                      size: context.deviceWidth * 0.4,
                    )
                  : LoadingAnimationWidget.inkDrop(
                      color: AppColor.blue600Primary,
                      size: context.deviceWidth * 0.2,
                    ),
            ),
            const Gap(64),
            SizedBox(
              width: double.infinity,
              child: DecoratedBox(
                decoration: BoxDecoration(
                  color: state.emailVerificationButtonState ==
                          EmailVerificationButtonState.coolDown
                      ? AppColor.grey600
                      : AppColor.yellow600Primary,
                  borderRadius: BorderRadius.circular(32),
                ),
                child: FilledButton.icon(
                  style: FilledButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(32),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    backgroundColor: Colors.transparent,
                  ),
                  onPressed: () async {
                    if (state.isEmailVerified) {
                      const PhoneNumberInputPageRouteData().go(context);
                    } else {
                      await notifier.sendEmailVerification();
                    }
                  },
                  label: getSubmitLabel(),
                ),
              ),
            ),
            const Gap(16),
            if (!state.isEmailVerified)
              WideButton(
                label: i18nEmailVerificationPage.buttons.retypeEmail,
                color: AppColor.blue50Background,
                onPressed: () async =>
                    const SignUpPageRouteData(fromEmailVerify: true)
                        .push<void>(context),
              ),
          ],
        ),
      ),
    );
  }
}
