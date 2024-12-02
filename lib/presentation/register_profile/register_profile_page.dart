import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';

import '../../i18n/strings.g.dart';
import '../../utils/extensions/context.dart';
import '../../utils/hooks/use_form_state_key.dart';
import '../../utils/routes/app_router.dart';
import '../../utils/styles/app_color.dart';
import '../../utils/styles/app_text_style.dart';
import '../../utils/validator.dart';
import '../components/simple_text_field.dart';
import '../components/wide_button.dart';
import 'register_profile_page_notifier.dart';

class RegisterProfilePage extends HookConsumerWidget {
  const RegisterProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i18n = Translations.of(context);
    final i18nRegisterProfilePage = i18n.authentication.registerProfilePage;
    final nameController = useTextEditingController();
    final formKey = useFormStateKey();
    final notifier = ref.read(registerProfilePageNotifierProvider.notifier);

    Future<void> registerProfile() async {
      if (formKey.currentState!.validate()) {
        await notifier.registerInformation(
          name: nameController.text,
          onSuccess: () => context.go(
            const HomeScreenRouteData().location,
          ),
        );
      }
    }

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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Gap(context.deviceHeight * 0.05),
                Text(
                  i18nRegisterProfilePage.title,
                  style: AppTextStyle.textStyle.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Gap(24),
                Align(
                  child: ClipOval(
                    child: InkWell(
                      child: Container(
                        color: AppColor.blue50Background,
                        width: context.deviceWidth * 0.3,
                        height: context.deviceWidth * 0.3,
                        child: Icon(
                          Symbols.add_photo_alternate,
                          size: context.deviceWidth * 0.12,
                          color: AppColor.blue900Tertiary,
                        ),
                      ),
                    ),
                  ),
                ),
                const Gap(24),
                SimpleTextField(
                  controller: nameController,
                  onFieldSubmitted: (_) async => registerProfile(),
                  validator: Validator.common,
                  keyboardType: TextInputType.name,
                  textInputAction: TextInputAction.next,
                  label: i18nRegisterProfilePage.textFields,
                ),
                const Gap(24),
                WideButton(
                  label: i18nRegisterProfilePage.buttons.submit,
                  color: AppColor.yellow600Primary,
                  onPressed: () async => registerProfile(),
                ),
                const Gap(16),
                WideButton(
                  label: i18nRegisterProfilePage.buttons.skip,
                  color: AppColor.blue50Background,
                  onPressed: () async => notifier.onPressedSkipButton(
                    onSuccess: () {
                      context.go(
                        const HomeScreenRouteData().location,
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
