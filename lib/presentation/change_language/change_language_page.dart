import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../i18n/strings.g.dart';
import '../../utils/providers/locale/locale_service.dart';
import '../../utils/styles/app_text_style.dart';
import '../components/radio_button_with_text.dart';

class ChangeLanguagePage extends ConsumerWidget {
  const ChangeLanguagePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localeState =
        ref.read(localeServiceProvider.notifier).getTranslationLocale();
    final notifier = ref.read(localeServiceProvider.notifier);
    final i18n = Translations.of(context);
    final itemi18n = i18n.changeLanguagePage.items;
    final titlei18n = i18n.changeLanguagePage.title;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          titlei18n,
          style: AppTextStyle.textStyle.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            itemi18n.japanese,
            itemi18n.english,
            itemi18n.simplifiedChinese,
            itemi18n.traditionalChinese,
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
    );
  }
}
