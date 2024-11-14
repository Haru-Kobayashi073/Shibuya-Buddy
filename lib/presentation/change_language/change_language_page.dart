import 'package:flutter/material.dart';

import '../../i18n/strings.g.dart';
import '../../utils/styles/app_text_style.dart';
import '../components/radio_button_with_text.dart';

class ChangeLanguagePage extends StatefulWidget {
  const ChangeLanguagePage({super.key});

  @override
  State<ChangeLanguagePage> createState() => _ChangeLanguagePageState();
}

class _ChangeLanguagePageState extends State<ChangeLanguagePage> {
  AppLocale selectLanguage = AppLocale.ja;

  @override
  Widget build(BuildContext context) {
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
              groupValue: selectLanguage,
              onChanged: (value) {
                setState(() {
                  if (value != null) {
                    debugPrint('TapJapanese');
                    selectLanguage = value;
                  }
                });
              },
            ),
            RadioButtonWithText<AppLocale>(
              title: itemi18n.english,
              value: AppLocale.en,
              groupValue: selectLanguage,
              onChanged: (value) {
                setState(() {
                  if (value != null) {
                    debugPrint('TapEnglish');
                    selectLanguage = value;
                  }
                });
              },
            ),
            RadioButtonWithText<AppLocale>(
              title: itemi18n.chinese_simplified,
              value: AppLocale.zhHans,
              groupValue: selectLanguage,
              onChanged: (value) {
                setState(() {
                  if (value != null) {
                    debugPrint('TapSimplified');
                    selectLanguage = value;
                  }
                });
              },
            ),
            RadioButtonWithText<AppLocale>(
              title: itemi18n.chinese_traditional,
              value: AppLocale.zhHant,
              groupValue: selectLanguage,
              onChanged: (value) {
                setState(() {
                  if (value != null) {
                    debugPrint('TapTraditional');
                    selectLanguage = value;
                  }
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
