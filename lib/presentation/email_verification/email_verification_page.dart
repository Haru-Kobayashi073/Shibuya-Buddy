import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../i18n/strings.g.dart';
import '../../utils/extensions/context.dart';
import '../../utils/routes/app_router.dart';
import '../../utils/styles/app_color.dart';
import '../../utils/styles/app_text_style.dart';
import '../components/wide_button.dart';
import 'email_verification_page_notifier.dart';

class EmailVerificationPage extends HookConsumerWidget {
  const EmailVerificationPage({
    super.key,
    required this.email,
  });
  final String email;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i18n = Translations.of(context);
    final i18nEmailVerificationPage = i18n.authentication.emailVerificationPage;
    final isEmailVerified = ref.watch(emailVerificationPageNotifierProvider);
    final notifier = ref.read(emailVerificationPageNotifierProvider.notifier);

    useEffect(
      () {
        if (isEmailVerified) {
          Timer(const Duration(seconds: 2), () {
            context.go(const RegisterProfilePageRouteData().location);
          });
        }
        return null;
      },
      [isEmailVerified],
    );

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
                i18nEmailVerificationPage.descriptionForNextStep,
                style: AppTextStyle.textStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Gap(64),
            Align(
              child: isEmailVerified
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
            if (!isEmailVerified) ...[
              const Gap(64),
              WideButton(
                label: i18nEmailVerificationPage.buttons.resendEmail,
                color: AppColor.yellow600Primary,
                onPressed: () async => notifier.resendEmailVerification(),
              ),
              const Gap(16),
              WideButton(
                label: i18nEmailVerificationPage.buttons.retypeEmail,
                color: AppColor.blue50Background,
                onPressed: () => context.pop(),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
