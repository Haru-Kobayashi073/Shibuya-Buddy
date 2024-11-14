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
	TranslationsZhHant({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.zhHant,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <zh-Hant>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsZhHant _root = this; // ignore: unused_field

	// Translations
	@override late final _TranslationsNavigationBarZhHant NavigationBar = _TranslationsNavigationBarZhHant._(_root);
	@override late final _TranslationsMyPageZhHant MyPage = _TranslationsMyPageZhHant._(_root);
	@override Map<String, String> get locales => {
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
	@override late final _TranslationsNavigationBarItemsZhHant items = _TranslationsNavigationBarItemsZhHant._(_root);
}

// Path: MyPage
class _TranslationsMyPageZhHant implements TranslationsMyPageEn {
	_TranslationsMyPageZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get aboutAIFunction => '關於AI功能';
	@override String get details => '詳細';
	@override String get settings => '設定';
	@override String get account => '帳戶';
	@override String get language => '語言';
	@override String get themes => '主題';
	@override String get termsofUsePrivacyPolicy => '使用條款和隱私政策';
	@override String get aboutThisApp => '關於本應用';
	@override String get aboutTheDeveloper => '關於開發者';
}

// Path: NavigationBar.items
class _TranslationsNavigationBarItemsZhHant implements TranslationsNavigationBarItemsEn {
	_TranslationsNavigationBarItemsZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get home => '首頁';
	@override String get myPlan => '我的計劃';
	@override String get myPage => '我的頁面';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsZhHant {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'NavigationBar.items.home': return '首頁';
			case 'NavigationBar.items.myPlan': return '我的計劃';
			case 'NavigationBar.items.myPage': return '我的頁面';
			case 'MyPage.aboutAIFunction': return '關於AI功能';
			case 'MyPage.details': return '詳細';
			case 'MyPage.settings': return '設定';
			case 'MyPage.account': return '帳戶';
			case 'MyPage.language': return '語言';
			case 'MyPage.themes': return '主題';
			case 'MyPage.termsofUsePrivacyPolicy': return '使用條款和隱私政策';
			case 'MyPage.aboutThisApp': return '關於本應用';
			case 'MyPage.aboutTheDeveloper': return '關於開發者';
			case 'locales.en': return '英語';
			case 'locales.ja': return '日語';
			case 'locales.zh': return '中文';
			default: return null;
		}
	}
}

