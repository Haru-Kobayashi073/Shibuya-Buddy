import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../i18n/strings.g.dart';
import '../../utils/providers/locale/locale_service.dart';
import '../../utils/styles/app_color.dart';
import '../../utils/styles/app_text_style.dart';
import 'radio_button_with_text.dart';

class ChangeLanguageDialog extends ConsumerWidget {
  const ChangeLanguageDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.read(localeServiceProvider.notifier);
    final localeState = notifier.getTranslationLocale();
    final i18n = Translations.of(context);
    final languagesi18n = i18n.changeLanguagePage.items;
    final changeLanguageDialog =
        i18n.authentication.signInPage.changeLanguageDialog;

    return SimpleDialog(
      backgroundColor: AppColor.white,
      title: Text(
        changeLanguageDialog.title,
        textAlign: TextAlign.center,
      ),
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              languagesi18n.japanese,
              languagesi18n.english,
              languagesi18n.simplifiedChinese,
              languagesi18n.traditionalChinese,
              languagesi18n.korean,
            ]
                .map(
                  (locale) => RadioButtonWithText<String>(
                    title: locale,
                    value: locale,
                    groupValue: localeState,
                    onChanged: (value) async {
                      final appLocale = notifier.getLocaleFromString(value);
                      await notifier.changeLocale(appLocale);
                    },
                  ),
                )
                .toList(),
          ),
        ),
        TextButton(
          onPressed: () => context.pop(),
          child: Text(
            changeLanguageDialog.button,
            style: AppTextStyle.textStyle,
          ),
        ),
      ],
    );
  }
}
