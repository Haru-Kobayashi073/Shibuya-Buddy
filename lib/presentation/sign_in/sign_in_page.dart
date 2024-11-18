import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

import '../../gen/assets.gen.dart';
import '../../i18n/strings.g.dart';
import '../../utils/extensions/context.dart';
import '../../utils/hooks/use_form_state_key.dart';
import '../../utils/routes/app_router.dart';
import '../../utils/styles/app_color.dart';
import '../../utils/styles/app_text_style.dart';
import '../../utils/validator.dart';
import '../components/oblong_button.dart';
import '../components/simple_text_field.dart';
import 'sign_in_page_notifier.dart';

class SignInPage extends HookConsumerWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final emailController = useTextEditingController();
    final passwordController = useTextEditingController();
    final focusNode = useFocusNode();
    final hidePassword = useState(true);
    final formKey = useFormStateKey();
    final notifier = ref.read(signInPageNotifierProvider.notifier);
    final i18n = Translations.of(context);
    final i18nSignInPage = i18n.authentication.signInPage;
    final i18nLanguage = i18n.ChangeLanguagePage.items;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.white,
        forceMaterialTransparency: true,
        elevation: 0,
      ),
      body: Form(
        key: formKey,
        child: Scrollbar(
          thumbVisibility: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: CustomScrollView(
              slivers: [
                SliverGap(context.deviceHeight * 0.05),
                SliverToBoxAdapter(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        i18nSignInPage.title,
                        style: AppTextStyle.textStyle.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      DropdownMenu(
                        leadingIcon: const Icon(Symbols.globe),
                        inputDecorationTheme: const InputDecorationTheme(
                          border: InputBorder.none,
                        ),
                        width: 80,
                        menuStyle: MenuStyle(
                          backgroundColor:
                              WidgetStateProperty.all(AppColor.white),
                        ),
                        onSelected: notifier.onPressedChangeLocaleButton,
                        dropdownMenuEntries: [
                          i18nLanguage.english,
                          i18nLanguage.japanese,
                          i18nLanguage.chinese_simplified,
                          i18nLanguage.chinese_traditional,
                        ].map((String value) {
                          return DropdownMenuEntry<String>(
                            value: value,
                            label: value,
                            style: ButtonStyle(
                              minimumSize: WidgetStateProperty.all(
                                const Size(140, 40),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ],
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
                    label: i18nSignInPage.textFields.email,
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
                    onFieldSubmitted: (value) async {
                      if (formKey.currentState!.validate()) {
                        await notifier.signInWithEmailAndPassword(
                          emailAddress: emailController.text,
                          password: passwordController.text,
                          onSuccess: () async =>
                              const HomeScreenRouteData().go(context),
                        );
                      }
                    },
                    label: i18nSignInPage.textFields.password,
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
                const SliverGap(8),
                SliverToBoxAdapter(
                  child: InkWell(
                    onTap: () async =>
                        const ResetPasswordPageRouteData().push<void>(context),
                    child: Text(
                      i18nSignInPage.buttons.resetPassword,
                      style: AppTextStyle.textStyle.copyWith(
                        fontSize: 12,
                        decoration: TextDecoration.underline,
                        color: AppColor.black,
                      ),
                    ),
                  ),
                ),
                const SliverGap(24),
                SliverToBoxAdapter(
                  child: OblongButton(
                    label: i18nSignInPage.buttons.signIn,
                    color: AppColor.yellow600Primary,
                    onPressed: () async {
                      if (formKey.currentState!.validate()) {
                        await notifier.signInWithEmailAndPassword(
                          emailAddress: emailController.text,
                          password: passwordController.text,
                          onSuccess: () async =>
                              const HomeScreenRouteData().go(context),
                        );
                      }
                    },
                  ),
                ),
                const SliverGap(16),
                SliverToBoxAdapter(
                  child: Row(
                    children: [
                      const Expanded(
                        child: Divider(color: AppColor.grey600),
                      ),
                      Text(
                        i18nSignInPage.optionText,
                        style: AppTextStyle.textStyle.copyWith(
                          color: AppColor.grey600,
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Expanded(
                        child: Divider(color: AppColor.grey600),
                      ),
                    ],
                  ),
                ),
                const SliverGap(16),
                SliverToBoxAdapter(
                  child: OblongButton.border(
                    label: i18nSignInPage.buttons.signUp,
                    color: AppColor.white,
                    border: const BorderSide(color: AppColor.black),
                    onPressed: () {},
                  ),
                ),
                const SliverGap(16),
                SliverToBoxAdapter(
                  child: OblongButton.icon(
                    label: i18nSignInPage.buttons.appleSignIn,
                    color: AppColor.blue50Background,
                    icon: SvgPicture.asset(Assets.icons.appleIcon),
                    onPressed: () {},
                  ),
                ),
                const SliverGap(16),
                SliverToBoxAdapter(
                  child: OblongButton.icon(
                    label: i18nSignInPage.buttons.googleSignIn,
                    color: AppColor.blue50Background,
                    icon: SvgPicture.asset(Assets.icons.googleIcon),
                    onPressed: () async => notifier.signInWithGoogle(),
                  ),
                ),
                const SliverGap(16),
                SliverToBoxAdapter(
                  child: FilledButton(
                    style: FilledButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      backgroundColor: AppColor.white,
                    ),
                    onPressed: () async =>
                        const HomeScreenRouteData().push<void>(context),
                    child: Text(
                      i18nSignInPage.buttons.signInAfter,
                      style: AppTextStyle.textStyle.copyWith(
                        fontSize: 14,
                        color: AppColor.grey600,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
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
