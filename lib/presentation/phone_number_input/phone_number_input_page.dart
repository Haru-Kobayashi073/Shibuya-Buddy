import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../utils/routes/app_router.dart';
import '../../utils/styles/app_color.dart';
import '../../utils/validator.dart';
import '../components/simple_text_field.dart';
import '../components/wide_button.dart';
import 'phone_number_input_page_notifier.dart';

class PhoneNumberInputPage extends HookConsumerWidget {
  const PhoneNumberInputPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final phoneNumberController = useTextEditingController();
    final notifier = ref.watch(phoneNumberInputPageNotifierProvider.notifier);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.white,
        forceMaterialTransparency: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              '電話番号入力',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            SimpleTextField(
              controller: phoneNumberController,
              keyboardType: TextInputType.phone,
              textInputAction: TextInputAction.done,
              validator: (value) {
                Validator.common(value);
                return null;
              },
              label: '電話番号',
              onFieldSubmitted: (_) {},
            ),
            const SizedBox(height: 16),
            WideButton(
              label: 'SMSコードを送信',
              color: AppColor.yellow600Primary,
              onPressed: () async {
                final phoneNumber = phoneNumberController.text.trim();
                if (phoneNumber.isEmpty) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('電話番号を入力してください。')),
                  );
                  return;
                }

                try {
                  final verificationId =
                      await notifier.sendSmsCode(phoneNumber);

                  await SMSVerificationPageRouteData(
                    phoneNumber: phoneNumber,
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
