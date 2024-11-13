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
	TranslationsZhHans({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.zhHans,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <zh-Hans>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsZhHans _root = this; // ignore: unused_field

	// Translations
	@override late final _TranslationsNavigationBarZhHans NavigationBar = _TranslationsNavigationBarZhHans._(_root);
	@override Map<String, String> get locales => {
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
	@override late final _TranslationsNavigationBarItemsZhHans items = _TranslationsNavigationBarItemsZhHans._(_root);
}

// Path: NavigationBar.items
class _TranslationsNavigationBarItemsZhHans implements TranslationsNavigationBarItemsEn {
	_TranslationsNavigationBarItemsZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get home => '首页';
	@override String get myPlan => '我的计划';
	@override String get myPage => '我的页面';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsZhHans {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'NavigationBar.items.home': return '首页';
			case 'NavigationBar.items.myPlan': return '我的计划';
			case 'NavigationBar.items.myPage': return '我的页面';
			case 'locales.en': return '英语';
			case 'locales.ja': return '日语';
			case 'locales.zh': return '中文';
			default: return null;
		}
	}
}

