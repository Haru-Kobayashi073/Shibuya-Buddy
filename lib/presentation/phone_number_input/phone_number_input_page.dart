import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../utils/extensions/context.dart';
import '../../utils/routes/app_router.dart';
import '../../utils/styles/app_color.dart';
import '../../utils/styles/app_text_style.dart';
import '../components/wide_button.dart';
import 'phone_number_input_page_notifier.dart';


class PhoneNumberInputPage extends HookConsumerWidget {
  const PhoneNumberInputPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final phoneNumberController = useTextEditingController();
    final notifier = ref.watch(phoneNumberInputPageNotifierProvider.notifier);
    final completePhoneNumber = useState<String>('');

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
              '電話番号入力',
              style: AppTextStyle.textStyle.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Gap(16),
            Flexible(
              child: Text(
                'SMSコードを受け取るために電話番号を入力してください。',
                style: AppTextStyle.textStyle.copyWith(
                  fontSize: 16,
                ),
              ),
            ),
            Flexible(
              child: Text(
                '「SMSコードを送信」ボタンを押した後、認証ページに遷移しますのでそのままお待ち下さい。',
                style: AppTextStyle.textStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const Gap(32),
            IntlPhoneField(
              controller: phoneNumberController,
              cursorColor: AppColor.blue800Secondary,
              decoration: InputDecoration(
                labelText: '電話番号',
                labelStyle: AppTextStyle.textStyle.copyWith(
                  color: AppColor.blue900Tertiary,
                ),
                border: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColor.blue800Secondary,
                  ),
                ),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColor.blue800Secondary,
                  ),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(
                    color: AppColor.blue800Secondary,
                    width: 2,
                  ),
                ),
              ),
              initialCountryCode: 'JP',
              onChanged: (phone) {
                completePhoneNumber.value = phone.completeNumber;
              },
            ),
            const Gap(32),
            WideButton(
              label: 'SMSコードを送信',
              color: AppColor.yellow600Primary,
              onPressed: () async {
                if (completePhoneNumber.value.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('電話番号を入力してください。')),
                  );
                  return;
                }

                try {
                  final verificationId =
                      await notifier.sendSmsCode(completePhoneNumber.value);

                  await SMSVerificationPageRouteData(
                    phoneNumber: completePhoneNumber.value,
                    verificationId: verificationId,
                  ).push<void>(context);
                } catch (error) {
                  print('SMSコード送信中にエラーが発生しました: $error');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
