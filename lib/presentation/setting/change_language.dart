import 'package:flutter/material.dart';

import '../../utils/styles/app_color.dart';
import '../../utils/styles/app_text_style.dart';

enum Languages {
  japanese('日本語'),
  english('英語'),
  simplified('中国語（簡体字）'),
  traditional('中国語（繁体字）');

  final String displayName;
  const Languages(this.displayName);
}

class ChangeLanguage extends StatefulWidget {
  const ChangeLanguage({super.key});

  @override
  State<ChangeLanguage> createState() => _ChangeLanguageState();
}

class _ChangeLanguageState extends State<ChangeLanguage> {
  Languages? selectLanguage = Languages.japanese;

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
            RadioListTile(
              activeColor: AppColor.yellow600Primary,
              title: Text(
                '日本語',
                style: AppTextStyle.textStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              value: Languages.japanese,
              groupValue: selectLanguage,
              onChanged: (Languages? value) {
                setState(() {
                  selectLanguage = value;
                });
                debugPrint('TapJapanese');
              },
            ),
            RadioListTile(
              activeColor: AppColor.yellow600Primary,
              title: Text(
                '英語',
                style: AppTextStyle.textStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              value: Languages.english,
              groupValue: selectLanguage,
              onChanged: (Languages? value) {
                setState(() {
                  selectLanguage = value;
                });
                debugPrint('TapEnglish');
              },
            ),
            RadioListTile(
              activeColor: AppColor.yellow600Primary,
              title: Text(
                '中国語（簡体字）',
                style: AppTextStyle.textStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              value: Languages.simplified,
              groupValue: selectLanguage,
              onChanged: (Languages? value) {
                setState(() {
                  selectLanguage = value;
                });
                debugPrint('TapSimplified');
              },
            ),
            RadioListTile(
              activeColor: AppColor.yellow600Primary,
              title: Text(
                '中国語（繁体字）',
                style: AppTextStyle.textStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              value: Languages.traditional,
              groupValue: selectLanguage,
              onChanged: (Languages? value) {
                setState(() {
                  selectLanguage = value;
                });
                debugPrint('TapTraditional');
              },
            ),
          ],
        ),
      ),
    );
  }
}
