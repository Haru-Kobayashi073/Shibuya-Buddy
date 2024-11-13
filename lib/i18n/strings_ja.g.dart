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
class TranslationsJa implements Translations {
  /// You can call this constructor and build your own translation instance of this locale.
  /// Constructing via the enum [AppLocale.build] is preferred.
  TranslationsJa(
      {Map<String, Node>? overrides,
      PluralResolver? cardinalResolver,
      PluralResolver? ordinalResolver})
      : assert(overrides == null,
            'Set "translation_overrides: true" in order to enable this feature.'),
        $meta = TranslationMetadata(
          locale: AppLocale.ja,
          overrides: overrides ?? {},
          cardinalResolver: cardinalResolver,
          ordinalResolver: ordinalResolver,
        ) {
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <ja>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  /// Access flat map
  @override
  dynamic operator [](String key) => $meta.getTranslation(key);

  late final TranslationsJa _root = this; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsNavigationBarJa NavigationBar =
      _TranslationsNavigationBarJa._(_root);
  @override
  Map<String, String> get locales => {
        'en': '英語',
        'ja': '日本語',
        'zh': '中国語',
      };
}

// Path: NavigationBar
class _TranslationsNavigationBarJa implements TranslationsNavigationBarEn {
  _TranslationsNavigationBarJa._(this._root);

  final TranslationsJa _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsNavigationBarItemsJa items =
      _TranslationsNavigationBarItemsJa._(_root);
}

// Path: NavigationBar.items
class _TranslationsNavigationBarItemsJa
    implements TranslationsNavigationBarItemsEn {
  _TranslationsNavigationBarItemsJa._(this._root);

  final TranslationsJa _root; // ignore: unused_field

  // Translations
  @override
  String get home => 'ホーム';
  @override
  String get myPlan => 'マイプラン';
  @override
  String get myPage => 'マイページ';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsJa {
  dynamic _flatMapFunction(String path) {
    switch (path) {
      case 'NavigationBar.items.home':
        return 'ホーム';
      case 'NavigationBar.items.myPlan':
        return 'マイプラン';
      case 'NavigationBar.items.myPage':
        return 'マイページ';
      case 'locales.en':
        return '英語';
      case 'locales.ja':
        return '日本語';
      case 'locales.zh':
        return '中国語';
      default:
        return null;
    }
  }
}
