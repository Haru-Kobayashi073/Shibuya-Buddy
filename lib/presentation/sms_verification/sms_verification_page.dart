import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../i18n/strings.g.dart';
import '../../utils/extensions/context.dart';
import '../../utils/routes/app_router.dart';
import '../../utils/styles/app_color.dart';
import '../../utils/styles/app_text_style.dart';
import '../../utils/validator.dart';
import '../components/simple_text_field.dart';
import '../components/wide_button.dart';
import 'sms_verification_page_notifier.dart';
import 'sms_verification_state.dart';

class SmsVerificationPage extends HookConsumerWidget {
  const SmsVerificationPage({
    super.key,
    required this.phoneNumber,
    required this.verificationId,
  });

  final String phoneNumber;
  final String verificationId;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i18n = Translations.of(context);
    final i18nSmsVerificationPage = i18n.authentication.smsVerificationPage;
    final state = ref.watch(smsVerificationNotifierProvider);
    final notifier = ref.read(smsVerificationNotifierProvider.notifier);
    final smsCodeController = useTextEditingController();

    useEffect(
      () {
        Future.microtask(() {
          notifier.setVerificationId(verificationId);
        });
        return null;
      },
      [],
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
              i18nSmsVerificationPage.title,
              style: AppTextStyle.textStyle.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Gap(16),
            Text(
              '${i18nSmsVerificationPage.sendSms} $phoneNumber',
              style: AppTextStyle.textStyle.copyWith(fontSize: 16),
            ),
            Text(
              i18nSmsVerificationPage.pleaseInputCode,
              style: AppTextStyle.textStyle.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Gap(8),
            if (state.buttonState == SmsVerificationButtonState.coolDown)
              Text(
                '${i18nSmsVerificationPage.resend.untilRetransmissionPossible} '
                '${state.resendCooldown} '
                '${i18nSmsVerificationPage.resend.second}',
                style: AppTextStyle.textStyle.copyWith(
                  fontSize: 14,
                  color: AppColor.grey600,
                ),
              )
            else
              InkWell(
                onTap: () async => notifier.sendSmsCode(phoneNumber),
                child: Text(
                  i18nSmsVerificationPage.resend.title,
                  style: AppTextStyle.textStyle.copyWith(
                    fontSize: 14,
                    color: AppColor.blue600Primary,
                    decoration: TextDecoration.underline,
                    decorationColor: AppColor.blue600Primary,
                  ),
                ),
              ),
            const Gap(32),
            SimpleTextField(
              label: i18nSmsVerificationPage.smsCode,
              controller: smsCodeController,
              validator: Validator.common,
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.number,
              onFieldSubmitted: (_) {},
            ),
            const Gap(32),
            WideButton(
              label: i18nSmsVerificationPage.verify,
              color: AppColor.yellow600Primary,
              onPressed: () async {
                await notifier.verifySmsCode(
                  smsCodeController.text.trim(),
                  () {
                    const RegisterProfilePageRouteData().go(context);
                  },
                );
                const Gap(16);
                WideButton(
                  label: i18nSmsVerificationPage.fixPhoneNumber,
                  color: AppColor.blue50Background,
                  onPressed: () => Navigator.of(context).pop(),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
