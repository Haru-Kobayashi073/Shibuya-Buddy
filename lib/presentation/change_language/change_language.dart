import 'package:flutter/material.dart';

import '../../i18n/strings.g.dart';
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
    final i18n = Translations.of(context);
    final itemi18n = i18n.ChangeLanguage.items;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          itemi18n.language,
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
              title: itemi18n.japanese,
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
              title: itemi18n.english,
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
              title: itemi18n.chinese_simplified,
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
              title: itemi18n.chinese_traditional,
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
