import 'package:flutter/material.dart';
import '../../i18n/strings.g.dart';
import '../../utils/styles/app_text_style.dart';
import '../components/radio_button_with_text.dart';

class ChangeThemePage extends StatefulWidget {
  const ChangeThemePage({super.key});

  @override
  _ChangeThemePageState createState() => _ChangeThemePageState();
}

class _ChangeThemePageState extends State<ChangeThemePage> {
  String _selectedTheme = 'システム';

  @override
  Widget build(BuildContext context) {
    final i18n = Translations.of(context);
    final titlei18n = i18n.changeThemePage.title;
    final itemsi18n = i18n.changeThemePage.items;
    final themes = <String>[itemsi18n.system, itemsi18n.light, itemsi18n.dark];

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
          children: themes
              .map(
                (theme) => RadioButtonWithText<String>(
                  title: theme,
                  value: theme,
                  groupValue: _selectedTheme,
                  onChanged: (value) {
                    setState(() {
                      _selectedTheme = value;
                    });
                  },
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
