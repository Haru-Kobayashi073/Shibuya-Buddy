import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../i18n/strings.g.dart';
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
}
