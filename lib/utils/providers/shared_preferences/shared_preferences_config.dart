class SharedPreferencesKey {
  static const languageCode = 'languageCode';
}

enum LanguageCode {
  english(code: 'en'),
  japanese(code: 'ja'),
  chinese(code: 'zh');

  const LanguageCode({required this.code});
  final String code;
}
