import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../i18n/strings.g.dart';
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
    final i18n = Translations.of(context);
    final i18nPhoneNumberInputPage = i18n.authentication.phoneNumberInputPage;
    final phoneNumberController = useTextEditingController();
    final notifier = ref.watch(phoneNumberInputPageNotifierProvider.notifier);
    final completePhoneNumber = useState<String>('');
    final selectedCountryCode = useState<String>('US');

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.white,
        forceMaterialTransparency: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Gap(context.deviceHeight * 0.05),
              Text(
                i18nPhoneNumberInputPage.title,
                style: AppTextStyle.textStyle.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Gap(16),
              RichText(
                text: TextSpan(
                  style: AppTextStyle.textStyle.copyWith(
                    fontSize: 16,
                  ),
                  children: [
                    TextSpan(
                      text: i18nPhoneNumberInputPage.discription.receive,
                    ),
                    TextSpan(
                      text: i18nPhoneNumberInputPage
                          .discription.internationalFormat,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    TextSpan(text: i18nPhoneNumberInputPage.discription.input),
                  ],
                ),
              ),
              const Gap(8),
              // 日本+81が選択されていた場合のみ注釈を出す
              if (selectedCountryCode.value == 'JP') ...[
                Text(
                  '例：日本の電話番号「090-1234-5678」の場合、'
                  '国番号「+81」を付けて「+81 90-1234-5678」と入力してください。',
                  style: AppTextStyle.textStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
                const Gap(8),
              ],
              const Gap(32),
              IntlPhoneField(
                controller: phoneNumberController,
                cursorColor: AppColor.blue800Secondary,
                decoration: InputDecoration(
                  labelText: i18nPhoneNumberInputPage.phoneNumber,
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
                initialCountryCode: 'US',
                onChanged: (phone) {
                  completePhoneNumber.value = phone.completeNumber;
                },
                onCountryChanged: (country) {
                  selectedCountryCode.value = country.code;
                },
              ),
              const Gap(32),
              WideButton(
                label: i18nPhoneNumberInputPage.sendSmsCode,
                color: AppColor.yellow600Primary,
                onPressed: () async {
                  await notifier.sendSmsCode(
                    completePhoneNumber.value,
                    (verificationId) async {
                      await SMSVerificationPageRouteData(
                        phoneNumber: completePhoneNumber.value,
                        verificationId: verificationId,
                      ).push<void>(context);
                    },
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
