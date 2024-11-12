import 'package:flutter/material.dart';

import '../../utils/styles/app_color.dart';
import '../../utils/styles/app_text_style.dart';

enum Language {
  japanese('日本語'),
  english('英語'),
  simplified('中国語（簡体字）'),
  traditional('中国語（繁体字）');

  final String displayName;
  const Language(this.displayName);
}

class ChangeLanguage extends StatelessWidget {
  const ChangeLanguage({super.key});
  final Language _language = Language.japanese;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '言語',
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
            ListTile(
              title: Text(Language.japanese.displayName),
              leading: Radio<Language>(
                fillColor: WidgetStateProperty.all(
                  AppColor.yellow600Primary,
                ),
                focusColor: AppColor.blue200,
                value: Language.japanese,
                groupValue: _language,
                onChanged: (Language? value) {
                  debugPrint('TapJapanese');
                },
              ),
            ),
            ListTile(
              title: Text(Language.english.displayName),
              leading: Radio<Language>(
                fillColor: WidgetStateProperty.all(
                  AppColor.yellow600Primary,
                ),
                focusColor: AppColor.grey600,
                value: Language.english,
                groupValue: _language,
                onChanged: (Language? value) {
                  debugPrint('TapEnglish');
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
