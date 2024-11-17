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
	@override late final _TranslationsAuthenticationZhHans authentication = _TranslationsAuthenticationZhHans._(_root);
	@override late final _TranslationsValidationZhHans validation = _TranslationsValidationZhHans._(_root);
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

// Path: authentication
class _TranslationsAuthenticationZhHans implements TranslationsAuthenticationEn {
	_TranslationsAuthenticationZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsAuthenticationSignInPageZhHans signInPage = _TranslationsAuthenticationSignInPageZhHans._(_root);
	@override late final _TranslationsAuthenticationFirebaseAuthZhHans firebaseAuth = _TranslationsAuthenticationFirebaseAuthZhHans._(_root);
}

// Path: validation
class _TranslationsValidationZhHans implements TranslationsValidationEn {
	_TranslationsValidationZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get emailRequired => '请输入电子邮件地址';
	@override String get emailInvalid => '电子邮件地址格式不正确';
	@override String get passwordRequired => '请输入密码';
	@override String get passwordShort => '密码至少需要8个字符';
	@override String get passwordWeak => '密码应包含字母和数字的组合';
	@override String get passwordMatch => '密码不匹配';
	@override String get informationRequired => '请输入信息';
	@override String get urlInvalid => 'URL格式不正确';
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

// Path: authentication.signInPage
class _TranslationsAuthenticationSignInPageZhHans implements TranslationsAuthenticationSignInPageEn {
	_TranslationsAuthenticationSignInPageZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get title => '登录';
	@override String get optionText => ' 或 ';
	@override late final _TranslationsAuthenticationSignInPageTextFieldsZhHans textFields = _TranslationsAuthenticationSignInPageTextFieldsZhHans._(_root);
	@override late final _TranslationsAuthenticationSignInPageButtonsZhHans buttons = _TranslationsAuthenticationSignInPageButtonsZhHans._(_root);
}

// Path: authentication.firebaseAuth
class _TranslationsAuthenticationFirebaseAuthZhHans implements TranslationsAuthenticationFirebaseAuthEn {
	_TranslationsAuthenticationFirebaseAuthZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsAuthenticationFirebaseAuthErrorZhHans error = _TranslationsAuthenticationFirebaseAuthErrorZhHans._(_root);
}

// Path: authentication.signInPage.textFields
class _TranslationsAuthenticationSignInPageTextFieldsZhHans implements TranslationsAuthenticationSignInPageTextFieldsEn {
	_TranslationsAuthenticationSignInPageTextFieldsZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get email => '电子邮件地址';
	@override String get password => '密码';
}

// Path: authentication.signInPage.buttons
class _TranslationsAuthenticationSignInPageButtonsZhHans implements TranslationsAuthenticationSignInPageButtonsEn {
	_TranslationsAuthenticationSignInPageButtonsZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get signIn => '登录';
	@override String get signUp => '注册';
	@override String get resetPassword => '忘记密码？';
	@override String get appleSignIn => '使用Apple登录';
	@override String get googleSignIn => '使用Google登录';
	@override String get signInAfter => '稍后注册';
}

// Path: authentication.firebaseAuth.error
class _TranslationsAuthenticationFirebaseAuthErrorZhHans implements TranslationsAuthenticationFirebaseAuthErrorEn {
	_TranslationsAuthenticationFirebaseAuthErrorZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get networkRequestFailed => '请在良好的网络环境中重试';
	@override String get weakPassword => '密码太短。请输入6个字符或更多';
	@override String get invalidEmail => '电子邮件地址格式不正确';
	@override String get userNotFound => '找不到帐户';
	@override String get wrongPassword => '密码错误';
	@override String get emailAlreadyInUse => '电子邮件地址已在使用中。请使用其他电子邮件地址登录或创建';
	@override String get unexpected => '发生错误。请在良好的网络环境中重试';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsZhHans {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'NavigationBar.items.home': return '首页';
			case 'NavigationBar.items.myPlan': return '我的计划';
			case 'NavigationBar.items.myPage': return '我的页面';
			case 'authentication.signInPage.title': return '登录';
			case 'authentication.signInPage.optionText': return ' 或 ';
			case 'authentication.signInPage.textFields.email': return '电子邮件地址';
			case 'authentication.signInPage.textFields.password': return '密码';
			case 'authentication.signInPage.buttons.signIn': return '登录';
			case 'authentication.signInPage.buttons.signUp': return '注册';
			case 'authentication.signInPage.buttons.resetPassword': return '忘记密码？';
			case 'authentication.signInPage.buttons.appleSignIn': return '使用Apple登录';
			case 'authentication.signInPage.buttons.googleSignIn': return '使用Google登录';
			case 'authentication.signInPage.buttons.signInAfter': return '稍后注册';
			case 'authentication.firebaseAuth.error.networkRequestFailed': return '请在良好的网络环境中重试';
			case 'authentication.firebaseAuth.error.weakPassword': return '密码太短。请输入6个字符或更多';
			case 'authentication.firebaseAuth.error.invalidEmail': return '电子邮件地址格式不正确';
			case 'authentication.firebaseAuth.error.userNotFound': return '找不到帐户';
			case 'authentication.firebaseAuth.error.wrongPassword': return '密码错误';
			case 'authentication.firebaseAuth.error.emailAlreadyInUse': return '电子邮件地址已在使用中。请使用其他电子邮件地址登录或创建';
			case 'authentication.firebaseAuth.error.unexpected': return '发生错误。请在良好的网络环境中重试';
			case 'validation.emailRequired': return '请输入电子邮件地址';
			case 'validation.emailInvalid': return '电子邮件地址格式不正确';
			case 'validation.passwordRequired': return '请输入密码';
			case 'validation.passwordShort': return '密码至少需要8个字符';
			case 'validation.passwordWeak': return '密码应包含字母和数字的组合';
			case 'validation.passwordMatch': return '密码不匹配';
			case 'validation.informationRequired': return '请输入信息';
			case 'validation.urlInvalid': return 'URL格式不正确';
			case 'locales.en': return '英语';
			case 'locales.ja': return '日语';
			case 'locales.zh': return '中文';
			default: return null;
		}
	}
}

