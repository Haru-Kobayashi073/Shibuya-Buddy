import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../i18n/strings.g.dart';
import '../../utils/extensions/context.dart';
import '../../utils/hooks/use_form_state_key.dart';
import '../../utils/routes/app_router.dart';
import '../../utils/styles/app_color.dart';
import '../../utils/styles/app_text_style.dart';
import '../../utils/validator.dart';
import '../components/simple_text_field.dart';
import '../components/wide_button.dart';
import 'reset_password_page_notifier.dart';

class ResetPasswordPage extends HookConsumerWidget {
  const ResetPasswordPage({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = useTextEditingController();
    final formKey = useFormStateKey();
    final notifier = ref.read(resetPasswordPageNotifierProvider.notifier);
    final i18n = Translations.of(context);
    final i18nResetPasswordPage = i18n.authentication.resetPasswordPage;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.white,
        forceMaterialTransparency: true,
        elevation: 0,
      ),
      body: Form(
        key: formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: context.deviceHeight * 0.05),
              Text(
                i18nResetPasswordPage.title,
                style: AppTextStyle.textStyle.copyWith(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 16),
              Flexible(
                child: Text(
                  i18nResetPasswordPage.description,
                  style: AppTextStyle.textStyle.copyWith(
                    fontSize: 16,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              SimpleTextField(
                controller: controller,
                keyboardType: TextInputType.emailAddress,
                textInputAction: TextInputAction.done,
                validator: Validator.email,
                onFieldSubmitted: (value) async {
                  if (formKey.currentState!.validate()) {
                    await notifier.sendPasswordResetEmail(
                      email: controller.text,
                      onSuccess: () async {
                        await CompleteSendEmailPageRouteData(
                          email: controller.text,
                        ).push<void>(context);
                      },
                    );
                  }
                },
                label: i18nResetPasswordPage.textFields.email,
              ),
              const SizedBox(height: 24),
              WideButton(
                label: i18nResetPasswordPage.buttons.submit,
                color: AppColor.yellow600Primary,
                onPressed: () async {
                  if (formKey.currentState!.validate()) {
                    await notifier.sendPasswordResetEmail(
                      email: controller.text,
                      onSuccess: () async {
                        await CompleteSendEmailPageRouteData(
                          email: controller.text,
                        ).push<void>(context);
                      },
                    );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
