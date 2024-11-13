import 'package:flutter/material.dart';

import '../../utils/styles/app_text_style.dart';
import '../components/radio_button.dart';

enum Languages {
  japanese('日本語'),
  english('英語'),
  simplified('中国語（簡体字）'),
  traditional('中国語（繁体字）');

  const Languages(this.displayName);
  final String displayName;
}

class ChangeLanguage extends StatefulWidget {
  const ChangeLanguage({super.key});

  @override
  State<ChangeLanguage> createState() => _ChangeLanguageState();
}

class _ChangeLanguageState extends State<ChangeLanguage> {
  Languages selectLanguage = Languages.japanese;

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
            RadiobuttonText<Languages>(
              title: '日本語',
              value: Languages.japanese,
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
            RadiobuttonText<Languages>(
              title: '英語',
              value: Languages.english,
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
            RadiobuttonText<Languages>(
              title: '中国語（簡体字）',
              value: Languages.simplified,
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
            RadiobuttonText<Languages>(
              title: '中国語（繁体字）',
              value: Languages.traditional,
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
