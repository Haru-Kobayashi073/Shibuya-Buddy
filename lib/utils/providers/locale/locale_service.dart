import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../i18n/strings.g.dart';
import '../../routes/app_router.dart';
import '../shared_preferences/shared_preferences_config.dart';
import '../shared_preferences/shared_preferences_service.dart';

part 'locale_service.g.dart';

@riverpod
class LocaleService extends _$LocaleService {
  SharedPreferencesService get sharedPreferencesService =>
      ref.read(sharedPreferencesServiceProvider.notifier);

  @override
  AppLocale build() {
    final userLocale = sharedPreferencesService.getStringValue(
      key: SharedPreferencesKey.languageCode,
    );
    return switch (userLocale) {
      'en' => AppLocale.en,
      'ja' => AppLocale.ja,
      'zhHans' => AppLocale.zhHans,
      'zhHant' => AppLocale.zhHant,
      _ => AppLocale.en,
    };
  }

  // NOTE set new locale
  Future<void> changeLocale(AppLocale newLocale) async {
    state = newLocale;
    await sharedPreferencesService.setStringValue(
      key: SharedPreferencesKey.languageCode,
      value: newLocale.name,
    );
    await LocaleSettings.setLocale(newLocale);
  }

  Future<void> changeLocaleToPreviousValue() async {
    await LocaleSettings.setLocale(state);
  }

  AppLocale getLocaleFromString(String text) {
    final context = rootNavigatorKey.currentContext!;
    final i18nLanguage = Translations.of(context).changeLanguagePage.items;

    // 対応言語を追加する場合はここに追加する
    return switch (null) {
      _ when i18nLanguage.english == text => AppLocale.en,
      _ when i18nLanguage.japanese == text => AppLocale.ja,
      _ when i18nLanguage.simplifiedChinese == text => AppLocale.zhHans,
      _ when i18nLanguage.traditionalChinese == text => AppLocale.zhHant,
      _ => AppLocale.en,
    };
  }

  String getTranslationLocale() {
    final context = rootNavigatorKey.currentContext!;
    final i18nLanguage = Translations.of(context).changeLanguagePage.items;

    return switch (state) {
      AppLocale.en => i18nLanguage.english,
      AppLocale.ja => i18nLanguage.japanese,
      AppLocale.zhHans => i18nLanguage.simplifiedChinese,
      AppLocale.zhHant => i18nLanguage.traditionalChinese,
    };
  }
}
