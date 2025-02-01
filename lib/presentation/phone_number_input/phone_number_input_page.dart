import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

import '../../i18n/strings.g.dart';
import '../../utils/extensions/context.dart';
import '../../utils/hooks/use_form_state_key.dart';
import '../../utils/routes/app_router.dart';
import '../../utils/styles/app_color.dart';
import '../../utils/styles/app_text_style.dart';
import '../../utils/validator.dart';
import '../components/wide_button.dart';
import 'phone_number_input_page_notifier.dart';

class PhoneNumberInputPage extends HookConsumerWidget {
  const PhoneNumberInputPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i18n = Translations.of(context);
    final i18nPhoneNumberInputPage = i18n.authentication.phoneNumberInputPage;
    final phoneNumberController = useTextEditingController();
    final state = ref.watch(phoneNumberInputPageNotifierProvider);
    final notifier = ref.watch(phoneNumberInputPageNotifierProvider.notifier);
    final formKey = useFormStateKey();

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
                    const TextSpan(
                      text: ' ',
                    ),
                    TextSpan(
                      text: i18nPhoneNumberInputPage
                          .discription.internationalFormat,
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const TextSpan(
                      text: ' ',
                    ),
                    TextSpan(text: i18nPhoneNumberInputPage.discription.input),
                  ],
                ),
              ),
              const Gap(4),
              Text(
                i18nPhoneNumberInputPage.discription.purposeForPhoneNumber,
                style: AppTextStyle.textStyle.copyWith(
                  fontSize: 16,
                  color: AppColor.red.withOpacity(0.7),
                ),
              ),
              const Gap(32),
              Form(
                key: formKey,
                child: IntlPhoneField(
                  controller: phoneNumberController,
                  cursorColor: AppColor.blue800Secondary,
                  disableLengthCheck: true,
                  validator: (phoneNumber) {
                    return Validator.phoneNumber(
                      phoneNumber!.number,
                      state.country,
                    );
                  },
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
                  initialCountryCode: state.countryCode,
                  onChanged: (phone) {
                    notifier.setCompletePhoneNumber(phone.completeNumber);
                  },
                  onCountryChanged: (country) {
                    notifier
                      ..changeCountry(country)
                      ..changeCountryCode(country.code);
                  },
                ),
              ),
              const Gap(32),
              WideButton(
                label: i18nPhoneNumberInputPage.sendSmsCode,
                color: AppColor.yellow600Primary,
                onPressed: () async {
                  if (!formKey.currentState!.validate()) {
                    return;
                  }
                  await notifier.sendSmsCode(
                    (verificationId) async {
                      await SMSVerificationPageRouteData(
                        phoneNumber: state.completePhoneNumber,
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
