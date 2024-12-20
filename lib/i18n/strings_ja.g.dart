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
	@override late final _TranslationsNavigationBarJa navigationBar = _TranslationsNavigationBarJa._(_root);
	@override late final _TranslationsHomePageJa homePage = _TranslationsHomePageJa._(_root);
	@override late final _TranslationsAccountPageJa accountPage = _TranslationsAccountPageJa._(_root);
	@override late final _TranslationsAuthenticationJa authentication = _TranslationsAuthenticationJa._(_root);
	@override late final _TranslationsValidationJa validation = _TranslationsValidationJa._(_root);
	@override late final _TranslationsMyPageJa myPage = _TranslationsMyPageJa._(_root);
	@override late final _TranslationsChangeLanguagePageJa changeLanguagePage = _TranslationsChangeLanguagePageJa._(_root);
	@override late final _TranslationsChangeThemePageJa changeThemePage = _TranslationsChangeThemePageJa._(_root);
	@override late final _TranslationsMyPlanPageJa myPlanPage = _TranslationsMyPlanPageJa._(_root);
	@override late final _TranslationsPopularTopicsJa popularTopics = _TranslationsPopularTopicsJa._(_root);
	@override Map<String, String> get locales => {
		'en': '英語',
		'ja': '日本語',
		'zh': '中国語',
	};
}

// Path: navigationBar
class _TranslationsNavigationBarJa implements TranslationsNavigationBarEn {
	_TranslationsNavigationBarJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNavigationBarItemsJa items = _TranslationsNavigationBarItemsJa._(_root);
}

// Path: homePage
class _TranslationsHomePageJa implements TranslationsHomePageEn {
	_TranslationsHomePageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomePagePopularPlansJa popularPlans = _TranslationsHomePagePopularPlansJa._(_root);
	@override late final _TranslationsHomePagePopularTopicsJa popularTopics = _TranslationsHomePagePopularTopicsJa._(_root);
	@override late final _TranslationsHomePageRecentPlansJa recentPlans = _TranslationsHomePageRecentPlansJa._(_root);
}

// Path: accountPage
class _TranslationsAccountPageJa implements TranslationsAccountPageEn {
	_TranslationsAccountPageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'アカウント';
	@override late final _TranslationsAccountPageItemsJa items = _TranslationsAccountPageItemsJa._(_root);
	@override late final _TranslationsAccountPageSnackBarJa snackBar = _TranslationsAccountPageSnackBarJa._(_root);
	@override late final _TranslationsAccountPageDiaLogJa diaLog = _TranslationsAccountPageDiaLogJa._(_root);
}

// Path: authentication
class _TranslationsAuthenticationJa implements TranslationsAuthenticationEn {
	_TranslationsAuthenticationJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsAuthenticationSignInPageJa signInPage = _TranslationsAuthenticationSignInPageJa._(_root);
	@override late final _TranslationsAuthenticationResetPasswordPageJa resetPasswordPage = _TranslationsAuthenticationResetPasswordPageJa._(_root);
	@override late final _TranslationsAuthenticationSignUpPageJa signUpPage = _TranslationsAuthenticationSignUpPageJa._(_root);
	@override late final _TranslationsAuthenticationEmailVerificationPageJa emailVerificationPage = _TranslationsAuthenticationEmailVerificationPageJa._(_root);
	@override late final _TranslationsAuthenticationRegisterProfilePageJa registerProfilePage = _TranslationsAuthenticationRegisterProfilePageJa._(_root);
	@override late final _TranslationsAuthenticationCompleteSendEmailPageJa completeSendEmailPage = _TranslationsAuthenticationCompleteSendEmailPageJa._(_root);
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

// Path: myPage
class _TranslationsMyPageJa implements TranslationsMyPageEn {
	_TranslationsMyPageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get unregisteredUserName => '未登録';
	@override String get aboutAIFunction => 'AIの機能について';
	@override String get details => '詳細';
	@override String get settings => '設定';
	@override String get account => 'アカウント';
	@override String get language => '言語';
	@override String get theme => 'テーマ';
	@override String get termsOfUsePrivacyPolicy => '利用規約・プライバシーポリシー';
	@override String get aboutThisApp => 'このアプリについて';
	@override String get aboutTheDeveloper => '開発者について';
}

// Path: changeLanguagePage
class _TranslationsChangeLanguagePageJa implements TranslationsChangeLanguagePageEn {
	_TranslationsChangeLanguagePageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '言語';
	@override late final _TranslationsChangeLanguagePageItemsJa items = _TranslationsChangeLanguagePageItemsJa._(_root);
}

// Path: changeThemePage
class _TranslationsChangeThemePageJa implements TranslationsChangeThemePageEn {
	_TranslationsChangeThemePageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'テーマ';
	@override late final _TranslationsChangeThemePageItemsJa items = _TranslationsChangeThemePageItemsJa._(_root);
}

// Path: myPlanPage
class _TranslationsMyPlanPageJa implements TranslationsMyPlanPageEn {
	_TranslationsMyPlanPageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'マイプラン';
	@override late final _TranslationsMyPlanPageTabsJa tabs = _TranslationsMyPlanPageTabsJa._(_root);
}

// Path: popularTopics
class _TranslationsPopularTopicsJa implements TranslationsPopularTopicsEn {
	_TranslationsPopularTopicsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get sectionName => '人気のトピック';
}

// Path: navigationBar.items
class _TranslationsNavigationBarItemsJa implements TranslationsNavigationBarItemsEn {
	_TranslationsNavigationBarItemsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get home => 'ホーム';
	@override String get myPlan => 'マイプラン';
	@override String get myPage => 'マイページ';
}

// Path: homePage.popularPlans
class _TranslationsHomePagePopularPlansJa implements TranslationsHomePagePopularPlansEn {
	_TranslationsHomePagePopularPlansJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '人気のプラン';
}

// Path: homePage.popularTopics
class _TranslationsHomePagePopularTopicsJa implements TranslationsHomePagePopularTopicsEn {
	_TranslationsHomePagePopularTopicsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '人気のトピック';
	@override String numberOfTopics({required Object number}) => '${number}件~';
}

// Path: homePage.recentPlans
class _TranslationsHomePageRecentPlansJa implements TranslationsHomePageRecentPlansEn {
	_TranslationsHomePageRecentPlansJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '最近作成したプラン';
}

// Path: accountPage.items
class _TranslationsAccountPageItemsJa implements TranslationsAccountPageItemsEn {
	_TranslationsAccountPageItemsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get signOut => 'ログアウト';
	@override String get linkedWithGoogle => 'Googleで連携';
	@override String get linkedWithApple => 'Appleで連携';
	@override String get alreadyLinkedGoogle => 'Google連携済み';
	@override String get alreadyLinkedApple => 'Appleで連携済み';
}

// Path: accountPage.snackBar
class _TranslationsAccountPageSnackBarJa implements TranslationsAccountPageSnackBarEn {
	_TranslationsAccountPageSnackBarJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get signOut => 'ログアウトしました。';
	@override String get signOutFailure => 'ログアウト時にエラーが発生しました。';
	@override String get successfulLinkage => 'アカウント連携に成功しました。';
	@override String get linkageFailure => 'アカウント連携に失敗しました。';
	@override String get providerAlreadyLinked => 'このアカウントはすでに連携済みです。';
	@override String get accountDeactivation => 'アカウントの連携を解除しました。';
	@override String get invalidCredential => '再度ログインをやり直してください。';
	@override String get linkageCancelled => 'アカウントの連携をキャンセルしました。';
	@override String get unlinkageFailure => 'アカウントの連携解除に失敗しました。';
	@override String get operationNotAllowed => 'プロパイダーが無効です。開発者にお問い合わせください。';
	@override String get unknownError => '不明なエラーが発生しました。';
}

// Path: accountPage.diaLog
class _TranslationsAccountPageDiaLogJa implements TranslationsAccountPageDiaLogEn {
	_TranslationsAccountPageDiaLogJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get yes => 'はい';
	@override String get no => 'いいえ';
	@override String get title => 'アカウント連携解除の確認';
	@override String get googleText => '現在のアカウントとGoogleアカウントの連携を解除しますか？';
	@override String get appleText => '現在のアカウントとAppleアカウントの連携を解除しますか？';
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

// Path: authentication.resetPasswordPage
class _TranslationsAuthenticationResetPasswordPageJa implements TranslationsAuthenticationResetPasswordPageEn {
	_TranslationsAuthenticationResetPasswordPageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'パスワードのリセット';
	@override String get description => '入力されたメールアドレスにパスワードリセットのメールを送信します';
	@override late final _TranslationsAuthenticationResetPasswordPageTextFieldsJa textFields = _TranslationsAuthenticationResetPasswordPageTextFieldsJa._(_root);
	@override late final _TranslationsAuthenticationResetPasswordPageButtonsJa buttons = _TranslationsAuthenticationResetPasswordPageButtonsJa._(_root);
}

// Path: authentication.signUpPage
class _TranslationsAuthenticationSignUpPageJa implements TranslationsAuthenticationSignUpPageEn {
	_TranslationsAuthenticationSignUpPageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '新規登録';
	@override late final _TranslationsAuthenticationSignUpPageTextFieldsJa textFields = _TranslationsAuthenticationSignUpPageTextFieldsJa._(_root);
	@override String get button => '新規登録';
}

// Path: authentication.emailVerificationPage
class _TranslationsAuthenticationEmailVerificationPageJa implements TranslationsAuthenticationEmailVerificationPageEn {
	_TranslationsAuthenticationEmailVerificationPageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'メールアドレスの確認';
	@override String descriptionForDestination({required Object email}) => '入力された${email}に確認メールを送信します';
	@override String get descriptionForCoolDown => '確認メールの再送信は、60秒ごとに1回可能です。';
	@override late final _TranslationsAuthenticationEmailVerificationPageButtonsJa buttons = _TranslationsAuthenticationEmailVerificationPageButtonsJa._(_root);
	@override late final _TranslationsAuthenticationEmailVerificationPageSnackBarJa snackBar = _TranslationsAuthenticationEmailVerificationPageSnackBarJa._(_root);
}

// Path: authentication.registerProfilePage
class _TranslationsAuthenticationRegisterProfilePageJa implements TranslationsAuthenticationRegisterProfilePageEn {
	_TranslationsAuthenticationRegisterProfilePageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'プロフィールの登録';
	@override String get textFields => '名前';
	@override late final _TranslationsAuthenticationRegisterProfilePageButtonsJa buttons = _TranslationsAuthenticationRegisterProfilePageButtonsJa._(_root);
	@override late final _TranslationsAuthenticationRegisterProfilePageSnackBarJa snackBar = _TranslationsAuthenticationRegisterProfilePageSnackBarJa._(_root);
}

// Path: authentication.completeSendEmailPage
class _TranslationsAuthenticationCompleteSendEmailPageJa implements TranslationsAuthenticationCompleteSendEmailPageEn {
	_TranslationsAuthenticationCompleteSendEmailPageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '送信完了';
	@override String description({required Object email}) => 'パスワードリセット用のメールが${email}に送信されました \n リセット後にログイン画面からログインしてください';
	@override String get successResendEmail => '確認メールを再送信しました';
	@override late final _TranslationsAuthenticationCompleteSendEmailPageButtonsJa buttons = _TranslationsAuthenticationCompleteSendEmailPageButtonsJa._(_root);
}

// Path: authentication.firebaseAuth
class _TranslationsAuthenticationFirebaseAuthJa implements TranslationsAuthenticationFirebaseAuthEn {
	_TranslationsAuthenticationFirebaseAuthJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsAuthenticationFirebaseAuthErrorJa error = _TranslationsAuthenticationFirebaseAuthErrorJa._(_root);
}

// Path: changeLanguagePage.items
class _TranslationsChangeLanguagePageItemsJa implements TranslationsChangeLanguagePageItemsEn {
	_TranslationsChangeLanguagePageItemsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get japanese => '日本語';
	@override String get english => '英語';
	@override String get simplifiedChinese => '中国語（簡体字）';
	@override String get traditionalChinese => '中国語（繁体字）';
}

// Path: changeThemePage.items
class _TranslationsChangeThemePageItemsJa implements TranslationsChangeThemePageItemsEn {
	_TranslationsChangeThemePageItemsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get system => 'システム';
	@override String get light => 'ライト';
	@override String get dark => 'ダーク';
}

// Path: myPlanPage.tabs
class _TranslationsMyPlanPageTabsJa implements TranslationsMyPlanPageTabsEn {
	_TranslationsMyPlanPageTabsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get createdPlans => '作成したプラン';
	@override String get bookmark => 'ブックマーク';
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

// Path: authentication.resetPasswordPage.textFields
class _TranslationsAuthenticationResetPasswordPageTextFieldsJa implements TranslationsAuthenticationResetPasswordPageTextFieldsEn {
	_TranslationsAuthenticationResetPasswordPageTextFieldsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get email => 'メールアドレス';
}

// Path: authentication.resetPasswordPage.buttons
class _TranslationsAuthenticationResetPasswordPageButtonsJa implements TranslationsAuthenticationResetPasswordPageButtonsEn {
	_TranslationsAuthenticationResetPasswordPageButtonsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get submit => '送信';
}

// Path: authentication.signUpPage.textFields
class _TranslationsAuthenticationSignUpPageTextFieldsJa implements TranslationsAuthenticationSignUpPageTextFieldsEn {
	_TranslationsAuthenticationSignUpPageTextFieldsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get email => 'メールアドレス';
	@override String get password => 'パスワード';
}

// Path: authentication.emailVerificationPage.buttons
class _TranslationsAuthenticationEmailVerificationPageButtonsJa implements TranslationsAuthenticationEmailVerificationPageButtonsEn {
	_TranslationsAuthenticationEmailVerificationPageButtonsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get sendEmail => '確認メールを送信';
	@override String get resendEmail => '確認メールを再送信';
	@override String get toNext => '次へ';
	@override String get retypeEmail => 'メールアドレスの修正';
}

// Path: authentication.emailVerificationPage.snackBar
class _TranslationsAuthenticationEmailVerificationPageSnackBarJa implements TranslationsAuthenticationEmailVerificationPageSnackBarEn {
	_TranslationsAuthenticationEmailVerificationPageSnackBarJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get success => '送信が完了しました';
	@override late final _TranslationsAuthenticationEmailVerificationPageSnackBarErrorJa error = _TranslationsAuthenticationEmailVerificationPageSnackBarErrorJa._(_root);
}

// Path: authentication.registerProfilePage.buttons
class _TranslationsAuthenticationRegisterProfilePageButtonsJa implements TranslationsAuthenticationRegisterProfilePageButtonsEn {
	_TranslationsAuthenticationRegisterProfilePageButtonsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get submit => '完了';
	@override String get skip => 'スキップ';
}

// Path: authentication.registerProfilePage.snackBar
class _TranslationsAuthenticationRegisterProfilePageSnackBarJa implements TranslationsAuthenticationRegisterProfilePageSnackBarEn {
	_TranslationsAuthenticationRegisterProfilePageSnackBarJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsAuthenticationRegisterProfilePageSnackBarErrorJa error = _TranslationsAuthenticationRegisterProfilePageSnackBarErrorJa._(_root);
}

// Path: authentication.completeSendEmailPage.buttons
class _TranslationsAuthenticationCompleteSendEmailPageButtonsJa implements TranslationsAuthenticationCompleteSendEmailPageButtonsEn {
	_TranslationsAuthenticationCompleteSendEmailPageButtonsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get toSignIn => 'ログイン画面へ';
	@override String get resendEmail => '確認メールを再送信';
	@override String get changeEmail => 'メールアドレスの変更';
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

// Path: authentication.emailVerificationPage.snackBar.error
class _TranslationsAuthenticationEmailVerificationPageSnackBarErrorJa implements TranslationsAuthenticationEmailVerificationPageSnackBarErrorEn {
	_TranslationsAuthenticationEmailVerificationPageSnackBarErrorJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get unexpected => 'エラーが発生しました。時間をおいて再度お試しください';
}

// Path: authentication.registerProfilePage.snackBar.error
class _TranslationsAuthenticationRegisterProfilePageSnackBarErrorJa implements TranslationsAuthenticationRegisterProfilePageSnackBarErrorEn {
	_TranslationsAuthenticationRegisterProfilePageSnackBarErrorJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get submitIfAllEmpty => '入力してください';
	@override String get unexpected => 'エラーが発生しました。時間をおいて再度お試しください';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsJa {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'navigationBar.items.home': return 'ホーム';
			case 'navigationBar.items.myPlan': return 'マイプラン';
			case 'navigationBar.items.myPage': return 'マイページ';
			case 'homePage.popularPlans.title': return '人気のプラン';
			case 'homePage.popularTopics.title': return '人気のトピック';
			case 'homePage.popularTopics.numberOfTopics': return ({required Object number}) => '${number}件~';
			case 'homePage.recentPlans.title': return '最近作成したプラン';
			case 'accountPage.title': return 'アカウント';
			case 'accountPage.items.signOut': return 'ログアウト';
			case 'accountPage.items.linkedWithGoogle': return 'Googleで連携';
			case 'accountPage.items.linkedWithApple': return 'Appleで連携';
			case 'accountPage.items.alreadyLinkedGoogle': return 'Google連携済み';
			case 'accountPage.items.alreadyLinkedApple': return 'Appleで連携済み';
			case 'accountPage.snackBar.signOut': return 'ログアウトしました。';
			case 'accountPage.snackBar.signOutFailure': return 'ログアウト時にエラーが発生しました。';
			case 'accountPage.snackBar.successfulLinkage': return 'アカウント連携に成功しました。';
			case 'accountPage.snackBar.linkageFailure': return 'アカウント連携に失敗しました。';
			case 'accountPage.snackBar.providerAlreadyLinked': return 'このアカウントはすでに連携済みです。';
			case 'accountPage.snackBar.accountDeactivation': return 'アカウントの連携を解除しました。';
			case 'accountPage.snackBar.invalidCredential': return '再度ログインをやり直してください。';
			case 'accountPage.snackBar.linkageCancelled': return 'アカウントの連携をキャンセルしました。';
			case 'accountPage.snackBar.unlinkageFailure': return 'アカウントの連携解除に失敗しました。';
			case 'accountPage.snackBar.operationNotAllowed': return 'プロパイダーが無効です。開発者にお問い合わせください。';
			case 'accountPage.snackBar.unknownError': return '不明なエラーが発生しました。';
			case 'accountPage.diaLog.yes': return 'はい';
			case 'accountPage.diaLog.no': return 'いいえ';
			case 'accountPage.diaLog.title': return 'アカウント連携解除の確認';
			case 'accountPage.diaLog.googleText': return '現在のアカウントとGoogleアカウントの連携を解除しますか？';
			case 'accountPage.diaLog.appleText': return '現在のアカウントとAppleアカウントの連携を解除しますか？';
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
			case 'authentication.resetPasswordPage.title': return 'パスワードのリセット';
			case 'authentication.resetPasswordPage.description': return '入力されたメールアドレスにパスワードリセットのメールを送信します';
			case 'authentication.resetPasswordPage.textFields.email': return 'メールアドレス';
			case 'authentication.resetPasswordPage.buttons.submit': return '送信';
			case 'authentication.signUpPage.title': return '新規登録';
			case 'authentication.signUpPage.textFields.email': return 'メールアドレス';
			case 'authentication.signUpPage.textFields.password': return 'パスワード';
			case 'authentication.signUpPage.button': return '新規登録';
			case 'authentication.emailVerificationPage.title': return 'メールアドレスの確認';
			case 'authentication.emailVerificationPage.descriptionForDestination': return ({required Object email}) => '入力された${email}に確認メールを送信します';
			case 'authentication.emailVerificationPage.descriptionForCoolDown': return '確認メールの再送信は、60秒ごとに1回可能です。';
			case 'authentication.emailVerificationPage.buttons.sendEmail': return '確認メールを送信';
			case 'authentication.emailVerificationPage.buttons.resendEmail': return '確認メールを再送信';
			case 'authentication.emailVerificationPage.buttons.toNext': return '次へ';
			case 'authentication.emailVerificationPage.buttons.retypeEmail': return 'メールアドレスの修正';
			case 'authentication.emailVerificationPage.snackBar.success': return '送信が完了しました';
			case 'authentication.emailVerificationPage.snackBar.error.unexpected': return 'エラーが発生しました。時間をおいて再度お試しください';
			case 'authentication.registerProfilePage.title': return 'プロフィールの登録';
			case 'authentication.registerProfilePage.textFields': return '名前';
			case 'authentication.registerProfilePage.buttons.submit': return '完了';
			case 'authentication.registerProfilePage.buttons.skip': return 'スキップ';
			case 'authentication.registerProfilePage.snackBar.error.submitIfAllEmpty': return '入力してください';
			case 'authentication.registerProfilePage.snackBar.error.unexpected': return 'エラーが発生しました。時間をおいて再度お試しください';
			case 'authentication.completeSendEmailPage.title': return '送信完了';
			case 'authentication.completeSendEmailPage.description': return ({required Object email}) => 'パスワードリセット用のメールが${email}に送信されました \n リセット後にログイン画面からログインしてください';
			case 'authentication.completeSendEmailPage.successResendEmail': return '確認メールを再送信しました';
			case 'authentication.completeSendEmailPage.buttons.toSignIn': return 'ログイン画面へ';
			case 'authentication.completeSendEmailPage.buttons.resendEmail': return '確認メールを再送信';
			case 'authentication.completeSendEmailPage.buttons.changeEmail': return 'メールアドレスの変更';
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
			case 'myPage.unregisteredUserName': return '未登録';
			case 'myPage.aboutAIFunction': return 'AIの機能について';
			case 'myPage.details': return '詳細';
			case 'myPage.settings': return '設定';
			case 'myPage.account': return 'アカウント';
			case 'myPage.language': return '言語';
			case 'myPage.theme': return 'テーマ';
			case 'myPage.termsOfUsePrivacyPolicy': return '利用規約・プライバシーポリシー';
			case 'myPage.aboutThisApp': return 'このアプリについて';
			case 'myPage.aboutTheDeveloper': return '開発者について';
			case 'changeLanguagePage.title': return '言語';
			case 'changeLanguagePage.items.japanese': return '日本語';
			case 'changeLanguagePage.items.english': return '英語';
			case 'changeLanguagePage.items.simplifiedChinese': return '中国語（簡体字）';
			case 'changeLanguagePage.items.traditionalChinese': return '中国語（繁体字）';
			case 'changeThemePage.title': return 'テーマ';
			case 'changeThemePage.items.system': return 'システム';
			case 'changeThemePage.items.light': return 'ライト';
			case 'changeThemePage.items.dark': return 'ダーク';
			case 'myPlanPage.title': return 'マイプラン';
			case 'myPlanPage.tabs.createdPlans': return '作成したプラン';
			case 'myPlanPage.tabs.bookmark': return 'ブックマーク';
			case 'popularTopics.sectionName': return '人気のトピック';
			case 'locales.en': return '英語';
			case 'locales.ja': return '日本語';
			case 'locales.zh': return '中国語';
			default: return null;
		}
	}
}

