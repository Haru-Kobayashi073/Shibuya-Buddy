import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

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
              'SMS認証',
              style: AppTextStyle.textStyle.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Gap(16),
            Text(
              '以下の電話番号にSMSコードを送信しました：$phoneNumber',
              style: AppTextStyle.textStyle.copyWith(fontSize: 16),
            ),
            Text(
              'コードを入力して、電話番号の認証を完了してください。',
              style: AppTextStyle.textStyle.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Gap(8),
            if (state.buttonState == SmsVerificationButtonState.coolDown)
              Text(
                '再送信可能まで ${state.resendCooldown}秒',
                style: AppTextStyle.textStyle.copyWith(
                  fontSize: 14,
                  color: AppColor.grey600,
                ),
              )
            else
              InkWell(
                onTap: () async {
                  if (state.buttonState !=
                      SmsVerificationButtonState.coolDown) {
                    await notifier.sendSmsCode(phoneNumber);
                    notifier.startCoolDownTimer();
                  }
                },
                child: Text(
                  '再送信する',
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
              label: 'SMSコードを入力',
              controller: smsCodeController,
              validator: Validator.common,
              textInputAction: TextInputAction.done,
              keyboardType: TextInputType.number,
              onFieldSubmitted: (_) {},
            ),
            const Gap(32),
            WideButton(
              label: '認証する',
              color: AppColor.yellow600Primary,
              onPressed: () async {
                if (state.verificationId.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('認証IDが存在しません。')),
                  );
                  return;
                }
                await notifier.verifySmsCode(
                  smsCodeController.text.trim(),
                  () =>
                      const RegisterProfilePageRouteData().push<void>(context),
                );
              },
            ),
            const Gap(16),
            WideButton(
              label: '電話番号を修正する',
              color: AppColor.blue50Background,
              onPressed: Navigator.of(context).pop,
            ),
          ],
        ),
      ),
    );
  }
}
