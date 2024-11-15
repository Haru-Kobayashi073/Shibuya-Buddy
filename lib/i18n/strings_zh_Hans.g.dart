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
class TranslationsZhHans implements Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsZhHans(
      {Map<String, Node>? overrides,
      PluralResolver? cardinalResolver,
      PluralResolver? ordinalResolver})
      : assert(overrides == null,
            'Set "translation_overrides: true" in order to enable this feature.'),
        $meta = TranslationMetadata(
          locale: AppLocale.zhHans,
          overrides: overrides ?? {},
          cardinalResolver: cardinalResolver,
          ordinalResolver: ordinalResolver,
        ) {
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <zh-Hans>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  /// Access flat map
  @override
  dynamic operator [](String key) => $meta.getTranslation(key);

  late final TranslationsZhHans _root = this; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsNavigationBarZhHans NavigationBar =
      _TranslationsNavigationBarZhHans._(_root);
  @override
  late final _TranslationsChangeLanguagePageZhHans ChangeLanguagePage =
      _TranslationsChangeLanguagePageZhHans._(_root);
  @override
  late final _TranslationsMyplanZhHans Myplan =
      _TranslationsMyplanZhHans._(_root);
  @override
  Map<String, String> get locales => {
        'en': '英语',
        'ja': '日语',
        'zh': '中文',
      };
}

// Path: NavigationBar
class _TranslationsNavigationBarZhHans implements TranslationsNavigationBarEn {
  _TranslationsNavigationBarZhHans._(this._root);

  final TranslationsZhHans _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsNavigationBarItemsZhHans items =
      _TranslationsNavigationBarItemsZhHans._(_root);
}

// Path: ChangeLanguagePage
class _TranslationsChangeLanguagePageZhHans
    implements TranslationsChangeLanguagePageEn {
  _TranslationsChangeLanguagePageZhHans._(this._root);

  final TranslationsZhHans _root; // ignore: unused_field

  // Translations
  @override
  String get title => '语言';
  @override
  late final _TranslationsChangeLanguagePageItemsZhHans items =
      _TranslationsChangeLanguagePageItemsZhHans._(_root);
}

// Path: Myplan
class _TranslationsMyplanZhHans implements TranslationsMyplanEn {
  _TranslationsMyplanZhHans._(this._root);

  final TranslationsZhHans _root; // ignore: unused_field

  // Translations
  @override
  String get title => '我的计划';
  @override
  late final _TranslationsMyplanTabsZhHans tabs =
      _TranslationsMyplanTabsZhHans._(_root);
}

// Path: NavigationBar.items
class _TranslationsNavigationBarItemsZhHans
    implements TranslationsNavigationBarItemsEn {
  _TranslationsNavigationBarItemsZhHans._(this._root);

  final TranslationsZhHans _root; // ignore: unused_field

  // Translations
  @override
  String get home => '首页';
  @override
  String get myPlan => '我的计划';
  @override
  String get myPage => '我的页面';
}

// Path: ChangeLanguagePage.items
class _TranslationsChangeLanguagePageItemsZhHans
    implements TranslationsChangeLanguagePageItemsEn {
  _TranslationsChangeLanguagePageItemsZhHans._(this._root);

  final TranslationsZhHans _root; // ignore: unused_field

  // Translations
  @override
  String get japanese => '日本人';
  @override
  String get english => '英语';
  @override
  String get chinese_simplified => '中文（简体）';
  @override
  String get chinese_traditional => '中文（繁体）';
}

// Path: Myplan.tabs
class _TranslationsMyplanTabsZhHans implements TranslationsMyplanTabsEn {
  _TranslationsMyplanTabsZhHans._(this._root);

  final TranslationsZhHans _root; // ignore: unused_field

  // Translations
  @override
  String get created_plans => '已创建的计划';
  @override
  String get bookmark => '收藏夹';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsZhHans {
  dynamic _flatMapFunction(String path) {
    switch (path) {
      case 'NavigationBar.items.home':
        return '首页';
      case 'NavigationBar.items.myPlan':
        return '我的计划';
      case 'NavigationBar.items.myPage':
        return '我的页面';
      case 'ChangeLanguagePage.title':
        return '语言';
      case 'ChangeLanguagePage.items.japanese':
        return '日本人';
      case 'ChangeLanguagePage.items.english':
        return '英语';
      case 'ChangeLanguagePage.items.chinese_simplified':
        return '中文（简体）';
      case 'ChangeLanguagePage.items.chinese_traditional':
        return '中文（繁体）';
      case 'Myplan.title':
        return '我的计划';
      case 'Myplan.tabs.created_plans':
        return '已创建的计划';
      case 'Myplan.tabs.bookmark':
        return '收藏夹';
      case 'locales.en':
        return '英语';
      case 'locales.ja':
        return '日语';
      case 'locales.zh':
        return '中文';
      default:
        return null;
    }
  }
}
