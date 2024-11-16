import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../i18n/strings.g.dart';
import '../../utils/providers/locale/locale_service.dart';
import '../../utils/styles/app_text_style.dart';
import '../components/radio_button_with_text.dart';
// import 'local_state.dart';
// final languageProvider = StateProvider((ref) => AppLocale.ja);

class ChangeLanguagePage extends ConsumerWidget {
  const ChangeLanguagePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final localeState = ref.watch(localeServiceProvider);
    final local = ref.read(localeServiceProvider.notifier);
    final i18n = Translations.of(context);
    final itemi18n = i18n.ChangeLanguagePage.items;
    final titlei18n = i18n.ChangeLanguagePage.title;
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
        padding: const EdgeInsets.only(top: 8, left: 16),
        child: Column(
          children: [
            RadioButtonWithText<AppLocale>(
              title: itemi18n.japanese,
              value: AppLocale.ja,
              groupValue: localeState,
              onChanged: (value) async {
                if (value != null) {
                  await local.changeLocale(value);
                }
              },
            ),
            RadioButtonWithText<AppLocale>(
              title: itemi18n.english,
              value: AppLocale.en,
              groupValue: localeState,
              onChanged: (value) async {
                if (value != null) {
                  await local.changeLocale(value);
                }
              },
            ),
            RadioButtonWithText<AppLocale>(
              title: itemi18n.chinese_simplified,
              value: AppLocale.zhHans,
              groupValue: localeState,
              onChanged: (value) async {
                if (value != null) {
                  await local.changeLocale(value);
                }
              },
            ),
            RadioButtonWithText<AppLocale>(
              title: itemi18n.chinese_traditional,
              value: AppLocale.zhHant,
              groupValue: localeState,
              onChanged: (value) async {
                if (value != null) {
                  await local.changeLocale(value);
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
