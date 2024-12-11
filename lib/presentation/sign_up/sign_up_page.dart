import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:gap/gap.dart';
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
import 'sign_up_page_notifier.dart';

class SignUpPage extends HookConsumerWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final focusNode = useFocusNode();
    final hidePassword = useState(true);
    final formKey = useFormStateKey();
    final notifier = ref.read(signUpPageNotifierProvider.notifier);
    final i18n = Translations.of(context);
    final i18nSignUpPage = i18n.authentication.signUpPage;

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
          child: CustomScrollView(
            slivers: [
              SliverGap(context.deviceHeight * 0.05),
              SliverToBoxAdapter(
                child: Text(
                  i18nSignUpPage.title,
                  style: AppTextStyle.textStyle.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SliverGap(24),
              SliverToBoxAdapter(
                child: SimpleTextField(
                  controller: emailController,
                  onFieldSubmitted: (_) =>
                      FocusScope.of(context).requestFocus(focusNode),
                  validator: Validator.email,
                  keyboardType: TextInputType.emailAddress,
                  textInputAction: TextInputAction.next,
                  label: i18nSignUpPage.textFields.email,
                ),
              ),
              const SliverGap(16),
              SliverToBoxAdapter(
                child: SimpleTextField(
                  controller: passwordController,
                  keyboardType: TextInputType.visiblePassword,
                  focusNode: focusNode,
                  validator: Validator.password,
                  textInputAction: TextInputAction.done,
                  obscureText: hidePassword.value,
                  onFieldSubmitted: (_) {},
                  label: i18nSignUpPage.textFields.password,
                  icon: IconButton(
                    onPressed: () {
                      hidePassword.value = !hidePassword.value;
                    },
                    icon: Icon(
                      hidePassword.value
                          ? Icons.visibility_off
                          : Icons.visibility,
                      color: AppColor.blue900Tertiary,
                    ),
                  ),
                ),
              ),
              const SliverGap(24),
              SliverToBoxAdapter(
                child: WideButton(
                  label: i18nSignUpPage.button,
                  color: AppColor.yellow600Primary,
                  onPressed: () async {
                    if (formKey.currentState!.validate()) {
                      await notifier.signUpWithEmailAndPassword(
                        emailAddress: emailController.text,
                        password: passwordController.text,
                        onSuccess: () async {
                          await EmailVerificationPageRouteData(
                            email: emailController.text,
                          ).push<void>(context);
                        },
                      );
                    }
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
