///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsZhHant implements Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsZhHant(
      {Map<String, Node>? overrides,
      PluralResolver? cardinalResolver,
      PluralResolver? ordinalResolver})
      : assert(overrides == null,
            'Set "translation_overrides: true" in order to enable this feature.'),
        $meta = TranslationMetadata(
          locale: AppLocale.zhHant,
          overrides: overrides ?? {},
          cardinalResolver: cardinalResolver,
          ordinalResolver: ordinalResolver,
        ) {
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <zh-Hant>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  /// Access flat map
  @override
  dynamic operator [](String key) => $meta.getTranslation(key);

  late final TranslationsZhHant _root = this; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsNavigationBarZhHant NavigationBar =
      _TranslationsNavigationBarZhHant._(_root);
  @override
  late final _TranslationsChangeLanguagePageZhHant ChangeLanguagePage =
      _TranslationsChangeLanguagePageZhHant._(_root);
  @override
  Map<String, String> get locales => {
        'en': '英語',
        'ja': '日語',
        'zh': '中文',
      };
}

// Path: NavigationBar
class _TranslationsNavigationBarZhHant implements TranslationsNavigationBarEn {
  _TranslationsNavigationBarZhHant._(this._root);

  final TranslationsZhHant _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsNavigationBarItemsZhHant items =
      _TranslationsNavigationBarItemsZhHant._(_root);
}

// Path: ChangeLanguagePage
class _TranslationsChangeLanguagePageZhHant
    implements TranslationsChangeLanguagePageEn {
  _TranslationsChangeLanguagePageZhHant._(this._root);

  final TranslationsZhHant _root; // ignore: unused_field

  // Translations
  @override
  String get title => '語言';
  @override
  late final _TranslationsChangeLanguagePageItemsZhHant items =
      _TranslationsChangeLanguagePageItemsZhHant._(_root);
}

// Path: NavigationBar.items
class _TranslationsNavigationBarItemsZhHant
    implements TranslationsNavigationBarItemsEn {
  _TranslationsNavigationBarItemsZhHant._(this._root);

  final TranslationsZhHant _root; // ignore: unused_field

  // Translations
  @override
  String get home => '首頁';
  @override
  String get myPlan => '我的計劃';
  @override
  String get myPage => '我的頁面';
}

// Path: ChangeLanguagePage.items
class _TranslationsChangeLanguagePageItemsZhHant
    implements TranslationsChangeLanguagePageItemsEn {
  _TranslationsChangeLanguagePageItemsZhHant._(this._root);

  final TranslationsZhHant _root; // ignore: unused_field

  // Translations
  @override
  String get japanese => '日语';
  @override
  String get english => '英语';
  @override
  String get chinese_simplified => '中文(简体字)';
  @override
  String get chinese_traditional => '中文(繁体字)';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsZhHant {
  dynamic _flatMapFunction(String path) {
    switch (path) {
      case 'NavigationBar.items.home':
        return '首頁';
      case 'NavigationBar.items.myPlan':
        return '我的計劃';
      case 'NavigationBar.items.myPage':
        return '我的頁面';
      case 'ChangeLanguagePage.title':
        return '語言';
      case 'ChangeLanguagePage.items.japanese':
        return '日语';
      case 'ChangeLanguagePage.items.english':
        return '英语';
      case 'ChangeLanguagePage.items.chinese_simplified':
        return '中文(简体字)';
      case 'ChangeLanguagePage.items.chinese_traditional':
        return '中文(繁体字)';
      case 'locales.en':
        return '英語';
      case 'locales.ja':
        return '日語';
      case 'locales.zh':
        return '中文';
      default:
        return null;
    }
  }
}
