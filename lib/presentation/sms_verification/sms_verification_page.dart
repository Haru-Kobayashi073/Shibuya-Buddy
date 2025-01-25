import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

import '../../utils/extensions/context.dart';
import '../../utils/routes/app_router.dart';
import '../../utils/styles/app_color.dart';
import '../../utils/styles/app_text_style.dart';
import '../components/wide_button.dart';
import 'sms_verification_page_notifier.dart';
import 'sms_verification_state.dart';

class SmsVerificationPage extends ConsumerWidget {
  const SmsVerificationPage({super.key, required this.phoneNumber});
  final String phoneNumber;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(smsVerificationNotifierProvider);
    final notifier = ref.read(smsVerificationNotifierProvider.notifier);

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
            Flexible(
              child: Text(
                '以下の電話番号にSMSコードを送信しました：$phoneNumber',
                style: AppTextStyle.textStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            Flexible(
              child: Text(
                'コードを入力して、電話番号の認証を完了してください。',
                style: AppTextStyle.textStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Gap(64),
            Align(
              child: state.isSmsVerified
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
            WideButton(
              label: switch (state.smsVerificationButtonState) {
                SmsVerificationButtonState.initialize => 'SMSコードを送信',
                SmsVerificationButtonState.resend => '再送信する',
                SmsVerificationButtonState.coolDown =>
                  '${state.resendEmailVerificationCountdown}秒後に再送信可能',
                SmsVerificationButtonState.verified => '認証済み',
              },
              color: state.smsVerificationButtonState ==
                      SmsVerificationButtonState.coolDown
                  ? AppColor.grey600
                  : AppColor.yellow600Primary,
              onPressed: () {
                if (state.smsVerificationButtonState ==
                    SmsVerificationButtonState.coolDown) {
                  return; // クールダウン中は何もしない
                }

                if (state.isSmsVerified) {
                  const RegisterProfilePageRouteData().push<void>(context);
                } else {
                  notifier.sendSmsCode().catchError((error) {
                    // エラー処理
                    print('エラーが発生しました: $error');
                  });
                }
              },
            ),

          ],
        ),
      ),
    );
  }
}
