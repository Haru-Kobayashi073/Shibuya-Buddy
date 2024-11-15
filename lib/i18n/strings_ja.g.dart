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
	TranslationsJa({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.ja,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ja>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsJa _root = this; // ignore: unused_field

	// Translations
	@override late final _TranslationsNavigationBarJa NavigationBar = _TranslationsNavigationBarJa._(_root);
	@override late final _TranslationsMyPageJa MyPage = _TranslationsMyPageJa._(_root);
	@override late final _TranslationsChangeLanguagePageJa ChangeLanguagePage = _TranslationsChangeLanguagePageJa._(_root);
	@override Map<String, String> get locales => {
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
	@override late final _TranslationsNavigationBarItemsJa items = _TranslationsNavigationBarItemsJa._(_root);
}

// Path: MyPage
class _TranslationsMyPageJa implements TranslationsMyPageEn {
	_TranslationsMyPageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get aboutAIFunction => 'AIの機能について';
	@override String get details => '詳細';
	@override String get settings => '設定';
	@override String get account => 'アカウント';
	@override String get language => '言語';
	@override String get themes => 'テーマ';
	@override String get termsofUsePrivacyPolicy => '利用規約・プライバシーポリシー';
	@override String get aboutThisApp => 'このアプリについて';
	@override String get aboutTheDeveloper => '開発者について';
}

// Path: ChangeLanguagePage
class _TranslationsChangeLanguagePageJa implements TranslationsChangeLanguagePageEn {
	_TranslationsChangeLanguagePageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '言語';
	@override late final _TranslationsChangeLanguagePageItemsJa items = _TranslationsChangeLanguagePageItemsJa._(_root);
}

// Path: NavigationBar.items
class _TranslationsNavigationBarItemsJa implements TranslationsNavigationBarItemsEn {
	_TranslationsNavigationBarItemsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get home => 'ホーム';
	@override String get myPlan => 'マイプラン';
	@override String get myPage => 'マイページ';
}

// Path: ChangeLanguagePage.items
class _TranslationsChangeLanguagePageItemsJa implements TranslationsChangeLanguagePageItemsEn {
	_TranslationsChangeLanguagePageItemsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get japanese => '日本語';
	@override String get english => '英語';
	@override String get chinese_simplified => '中国語（簡体字）';
	@override String get chinese_traditional => '中国語（繁体字）';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsJa {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'NavigationBar.items.home': return 'ホーム';
			case 'NavigationBar.items.myPlan': return 'マイプラン';
			case 'NavigationBar.items.myPage': return 'マイページ';
			case 'MyPage.aboutAIFunction': return 'AIの機能について';
			case 'MyPage.details': return '詳細';
			case 'MyPage.settings': return '設定';
			case 'MyPage.account': return 'アカウント';
			case 'MyPage.language': return '言語';
			case 'MyPage.themes': return 'テーマ';
			case 'MyPage.termsofUsePrivacyPolicy': return '利用規約・プライバシーポリシー';
			case 'MyPage.aboutThisApp': return 'このアプリについて';
			case 'MyPage.aboutTheDeveloper': return '開発者について';
			case 'ChangeLanguagePage.title': return '言語';
			case 'ChangeLanguagePage.items.japanese': return '日本語';
			case 'ChangeLanguagePage.items.english': return '英語';
			case 'ChangeLanguagePage.items.chinese_simplified': return '中国語（簡体字）';
			case 'ChangeLanguagePage.items.chinese_traditional': return '中国語（繁体字）';
			case 'locales.en': return '英語';
			case 'locales.ja': return '日本語';
			case 'locales.zh': return '中国語';
			default: return null;
		}
	}
}

