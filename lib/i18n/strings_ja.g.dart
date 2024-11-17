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
	@override late final _TranslationsAuthenticationJa authentication = _TranslationsAuthenticationJa._(_root);
	@override late final _TranslationsValidationJa validation = _TranslationsValidationJa._(_root);
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

// Path: authentication
class _TranslationsAuthenticationJa implements TranslationsAuthenticationEn {
	_TranslationsAuthenticationJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsAuthenticationSignInPageJa signInPage = _TranslationsAuthenticationSignInPageJa._(_root);
	@override late final _TranslationsAuthenticationFirebaseAuthJa firebaseAuth = _TranslationsAuthenticationFirebaseAuthJa._(_root);
}

// Path: validation
class _TranslationsValidationJa implements TranslationsValidationEn {
	_TranslationsValidationJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get emailRequired => 'メールアドレスを入力してください';
	@override String get emailInvalid => 'メールアドレスの形式が正しくありません';
	@override String get passwordRequired => 'パスワードを入力してください';
	@override String get passwordShort => 'パスワードは少なくとも8文字以上である必要があります';
	@override String get passwordWeak => 'パスワードは半角英数字を組み合わせてください';
	@override String get passwordMatch => 'パスワードが一致しません';
	@override String get informationRequired => '情報を入力してください';
	@override String get urlInvalid => 'URLの形式が正しくありません';
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

// Path: authentication.signInPage
class _TranslationsAuthenticationSignInPageJa implements TranslationsAuthenticationSignInPageEn {
	_TranslationsAuthenticationSignInPageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'ログイン';
	@override String get optionText => ' または ';
	@override late final _TranslationsAuthenticationSignInPageTextFieldsJa textFields = _TranslationsAuthenticationSignInPageTextFieldsJa._(_root);
	@override late final _TranslationsAuthenticationSignInPageButtonsJa buttons = _TranslationsAuthenticationSignInPageButtonsJa._(_root);
}

// Path: authentication.firebaseAuth
class _TranslationsAuthenticationFirebaseAuthJa implements TranslationsAuthenticationFirebaseAuthEn {
	_TranslationsAuthenticationFirebaseAuthJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsAuthenticationFirebaseAuthErrorJa error = _TranslationsAuthenticationFirebaseAuthErrorJa._(_root);
}

// Path: authentication.signInPage.textFields
class _TranslationsAuthenticationSignInPageTextFieldsJa implements TranslationsAuthenticationSignInPageTextFieldsEn {
	_TranslationsAuthenticationSignInPageTextFieldsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get email => 'メールアドレス';
	@override String get password => 'パスワード';
}

// Path: authentication.signInPage.buttons
class _TranslationsAuthenticationSignInPageButtonsJa implements TranslationsAuthenticationSignInPageButtonsEn {
	_TranslationsAuthenticationSignInPageButtonsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get signIn => 'ログイン';
	@override String get signUp => '新規登録';
	@override String get resetPassword => 'パスワードを忘れた方はこちら';
	@override String get appleSignIn => 'Appleでログイン';
	@override String get googleSignIn => 'Googleでログイン';
	@override String get signInAfter => '後で登録';
}

// Path: authentication.firebaseAuth.error
class _TranslationsAuthenticationFirebaseAuthErrorJa implements TranslationsAuthenticationFirebaseAuthErrorEn {
	_TranslationsAuthenticationFirebaseAuthErrorJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get networkRequestFailed => '通信環境がいい所で再度やり直してください';
	@override String get weakPassword => 'パスワードが短すぎます。6文字以上を入力してください';
	@override String get invalidEmail => 'メールアドレスの形式が正しくありません';
	@override String get userNotFound => 'アカウントが見つかりません';
	@override String get wrongPassword => 'パスワードが正しくありません';
	@override String get emailAlreadyInUse => 'メールアドレスがすでに使用されています。ログインするか別のメールアドレスで作成してください';
	@override String get unexpected => 'エラーが発生しました。通信環境がいい所で再度やり直してください。';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsJa {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'NavigationBar.items.home': return 'ホーム';
			case 'NavigationBar.items.myPlan': return 'マイプラン';
			case 'NavigationBar.items.myPage': return 'マイページ';
			case 'authentication.signInPage.title': return 'ログイン';
			case 'authentication.signInPage.optionText': return ' または ';
			case 'authentication.signInPage.textFields.email': return 'メールアドレス';
			case 'authentication.signInPage.textFields.password': return 'パスワード';
			case 'authentication.signInPage.buttons.signIn': return 'ログイン';
			case 'authentication.signInPage.buttons.signUp': return '新規登録';
			case 'authentication.signInPage.buttons.resetPassword': return 'パスワードを忘れた方はこちら';
			case 'authentication.signInPage.buttons.appleSignIn': return 'Appleでログイン';
			case 'authentication.signInPage.buttons.googleSignIn': return 'Googleでログイン';
			case 'authentication.signInPage.buttons.signInAfter': return '後で登録';
			case 'authentication.firebaseAuth.error.networkRequestFailed': return '通信環境がいい所で再度やり直してください';
			case 'authentication.firebaseAuth.error.weakPassword': return 'パスワードが短すぎます。6文字以上を入力してください';
			case 'authentication.firebaseAuth.error.invalidEmail': return 'メールアドレスの形式が正しくありません';
			case 'authentication.firebaseAuth.error.userNotFound': return 'アカウントが見つかりません';
			case 'authentication.firebaseAuth.error.wrongPassword': return 'パスワードが正しくありません';
			case 'authentication.firebaseAuth.error.emailAlreadyInUse': return 'メールアドレスがすでに使用されています。ログインするか別のメールアドレスで作成してください';
			case 'authentication.firebaseAuth.error.unexpected': return 'エラーが発生しました。通信環境がいい所で再度やり直してください。';
			case 'validation.emailRequired': return 'メールアドレスを入力してください';
			case 'validation.emailInvalid': return 'メールアドレスの形式が正しくありません';
			case 'validation.passwordRequired': return 'パスワードを入力してください';
			case 'validation.passwordShort': return 'パスワードは少なくとも8文字以上である必要があります';
			case 'validation.passwordWeak': return 'パスワードは半角英数字を組み合わせてください';
			case 'validation.passwordMatch': return 'パスワードが一致しません';
			case 'validation.informationRequired': return '情報を入力してください';
			case 'validation.urlInvalid': return 'URLの形式が正しくありません';
			case 'locales.en': return '英語';
			case 'locales.ja': return '日本語';
			case 'locales.zh': return '中国語';
			default: return null;
		}
	}
}

