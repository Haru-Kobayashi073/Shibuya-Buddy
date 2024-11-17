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
	@override late final _TranslationsAuthenticationZhHant authentication = _TranslationsAuthenticationZhHant._(_root);
	@override late final _TranslationsValidationZhHant validation = _TranslationsValidationZhHant._(_root);
	@override late final _TranslationsChangeLanguagePageZhHant ChangeLanguagePage = _TranslationsChangeLanguagePageZhHant._(_root);
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

// Path: authentication
class _TranslationsAuthenticationZhHant implements TranslationsAuthenticationEn {
	_TranslationsAuthenticationZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsAuthenticationSignInPageZhHant signInPage = _TranslationsAuthenticationSignInPageZhHant._(_root);
	@override late final _TranslationsAuthenticationFirebaseAuthZhHant firebaseAuth = _TranslationsAuthenticationFirebaseAuthZhHant._(_root);
}

// Path: validation
class _TranslationsValidationZhHant implements TranslationsValidationEn {
	_TranslationsValidationZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get emailRequired => '請輸入電子郵件地址';
	@override String get emailInvalid => '電子郵件地址格式不正確';
	@override String get passwordRequired => '請輸入密碼';
	@override String get passwordShort => '密碼必須至少8個字符';
	@override String get passwordWeak => '密碼應包含字母和數字的組合';
	@override String get passwordMatch => '密碼不匹配';
	@override String get informationRequired => '請輸入信息';
	@override String get urlInvalid => 'URL格式不正確';
}

// Path: ChangeLanguagePage
class _TranslationsChangeLanguagePageZhHant implements TranslationsChangeLanguagePageEn {
	_TranslationsChangeLanguagePageZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get title => '語言';
	@override late final _TranslationsChangeLanguagePageItemsZhHant items = _TranslationsChangeLanguagePageItemsZhHant._(_root);
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

// Path: authentication.signInPage
class _TranslationsAuthenticationSignInPageZhHant implements TranslationsAuthenticationSignInPageEn {
	_TranslationsAuthenticationSignInPageZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get title => '登入';
	@override String get optionText => ' 或 ';
	@override late final _TranslationsAuthenticationSignInPageTextFieldsZhHant textFields = _TranslationsAuthenticationSignInPageTextFieldsZhHant._(_root);
	@override late final _TranslationsAuthenticationSignInPageButtonsZhHant buttons = _TranslationsAuthenticationSignInPageButtonsZhHant._(_root);
}

// Path: authentication.firebaseAuth
class _TranslationsAuthenticationFirebaseAuthZhHant implements TranslationsAuthenticationFirebaseAuthEn {
	_TranslationsAuthenticationFirebaseAuthZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsAuthenticationFirebaseAuthErrorZhHant error = _TranslationsAuthenticationFirebaseAuthErrorZhHant._(_root);
}

// Path: ChangeLanguagePage.items
class _TranslationsChangeLanguagePageItemsZhHant implements TranslationsChangeLanguagePageItemsEn {
	_TranslationsChangeLanguagePageItemsZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get japanese => '日语';
	@override String get english => '英语';
	@override String get chinese_simplified => '中文(简体字)';
	@override String get chinese_traditional => '中文(繁体字)';
}

// Path: authentication.signInPage.textFields
class _TranslationsAuthenticationSignInPageTextFieldsZhHant implements TranslationsAuthenticationSignInPageTextFieldsEn {
	_TranslationsAuthenticationSignInPageTextFieldsZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get email => '電子郵件地址';
	@override String get password => '密碼';
}

// Path: authentication.signInPage.buttons
class _TranslationsAuthenticationSignInPageButtonsZhHant implements TranslationsAuthenticationSignInPageButtonsEn {
	_TranslationsAuthenticationSignInPageButtonsZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get signIn => '登入';
	@override String get signUp => '註冊';
	@override String get resetPassword => '忘記密碼？';
	@override String get appleSignIn => '使用Apple登入';
	@override String get googleSignIn => '使用Google登入';
	@override String get signInAfter => '稍後註冊';
}

// Path: authentication.firebaseAuth.error
class _TranslationsAuthenticationFirebaseAuthErrorZhHant implements TranslationsAuthenticationFirebaseAuthErrorEn {
	_TranslationsAuthenticationFirebaseAuthErrorZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get networkRequestFailed => '請在良好的網絡環境中重試';
	@override String get weakPassword => '密碼太短。請輸入6個字符或更多';
	@override String get invalidEmail => '電子郵件地址格式不正確';
	@override String get userNotFound => '找不到帳戶';
	@override String get wrongPassword => '密碼錯誤';
	@override String get emailAlreadyInUse => '電子郵件地址已在使用中。請使用其他電子郵件地址登錄或創建';
	@override String get unexpected => '發生錯誤。請在良好的網絡環境中重試';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsZhHant {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'NavigationBar.items.home': return '首頁';
			case 'NavigationBar.items.myPlan': return '我的計劃';
			case 'NavigationBar.items.myPage': return '我的頁面';
			case 'authentication.signInPage.title': return '登入';
			case 'authentication.signInPage.optionText': return ' 或 ';
			case 'authentication.signInPage.textFields.email': return '電子郵件地址';
			case 'authentication.signInPage.textFields.password': return '密碼';
			case 'authentication.signInPage.buttons.signIn': return '登入';
			case 'authentication.signInPage.buttons.signUp': return '註冊';
			case 'authentication.signInPage.buttons.resetPassword': return '忘記密碼？';
			case 'authentication.signInPage.buttons.appleSignIn': return '使用Apple登入';
			case 'authentication.signInPage.buttons.googleSignIn': return '使用Google登入';
			case 'authentication.signInPage.buttons.signInAfter': return '稍後註冊';
			case 'authentication.firebaseAuth.error.networkRequestFailed': return '請在良好的網絡環境中重試';
			case 'authentication.firebaseAuth.error.weakPassword': return '密碼太短。請輸入6個字符或更多';
			case 'authentication.firebaseAuth.error.invalidEmail': return '電子郵件地址格式不正確';
			case 'authentication.firebaseAuth.error.userNotFound': return '找不到帳戶';
			case 'authentication.firebaseAuth.error.wrongPassword': return '密碼錯誤';
			case 'authentication.firebaseAuth.error.emailAlreadyInUse': return '電子郵件地址已在使用中。請使用其他電子郵件地址登錄或創建';
			case 'authentication.firebaseAuth.error.unexpected': return '發生錯誤。請在良好的網絡環境中重試';
			case 'validation.emailRequired': return '請輸入電子郵件地址';
			case 'validation.emailInvalid': return '電子郵件地址格式不正確';
			case 'validation.passwordRequired': return '請輸入密碼';
			case 'validation.passwordShort': return '密碼必須至少8個字符';
			case 'validation.passwordWeak': return '密碼應包含字母和數字的組合';
			case 'validation.passwordMatch': return '密碼不匹配';
			case 'validation.informationRequired': return '請輸入信息';
			case 'validation.urlInvalid': return 'URL格式不正確';
			case 'ChangeLanguagePage.title': return '語言';
			case 'ChangeLanguagePage.items.japanese': return '日语';
			case 'ChangeLanguagePage.items.english': return '英语';
			case 'ChangeLanguagePage.items.chinese_simplified': return '中文(简体字)';
			case 'ChangeLanguagePage.items.chinese_traditional': return '中文(繁体字)';
			case 'locales.en': return '英語';
			case 'locales.ja': return '日語';
			case 'locales.zh': return '中文';
			default: return null;
		}
	}
}

