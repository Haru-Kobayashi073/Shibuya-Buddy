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
	@override late final _TranslationsNavigationBarZhHant navigationBar = _TranslationsNavigationBarZhHant._(_root);
	@override late final _TranslationsHomePageZhHant homePage = _TranslationsHomePageZhHant._(_root);
	@override late final _TranslationsAuthenticationZhHant authentication = _TranslationsAuthenticationZhHant._(_root);
	@override late final _TranslationsValidationZhHant validation = _TranslationsValidationZhHant._(_root);
	@override late final _TranslationsMyPageZhHant myPage = _TranslationsMyPageZhHant._(_root);
	@override late final _TranslationsChangeLanguagePageZhHant changeLanguagePage = _TranslationsChangeLanguagePageZhHant._(_root);
	@override late final _TranslationsMyPlanPageZhHant myPlanPage = _TranslationsMyPlanPageZhHant._(_root);
	@override late final _TranslationsPopularTopicsZhHant popularTopics = _TranslationsPopularTopicsZhHant._(_root);
	@override Map<String, String> get locales => {
		'en': '英語',
		'ja': '日語',
		'zh': '中文',
	};
}

// Path: navigationBar
class _TranslationsNavigationBarZhHant implements TranslationsNavigationBarEn {
	_TranslationsNavigationBarZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNavigationBarItemsZhHant items = _TranslationsNavigationBarItemsZhHant._(_root);
}

// Path: homePage
class _TranslationsHomePageZhHant implements TranslationsHomePageEn {
	_TranslationsHomePageZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomePagePopularPlansZhHant popularPlans = _TranslationsHomePagePopularPlansZhHant._(_root);
	@override late final _TranslationsHomePagePopularTopicsZhHant popularTopics = _TranslationsHomePagePopularTopicsZhHant._(_root);
	@override late final _TranslationsHomePageRecentPlansZhHant recentPlans = _TranslationsHomePageRecentPlansZhHant._(_root);
}

// Path: authentication
class _TranslationsAuthenticationZhHant implements TranslationsAuthenticationEn {
	_TranslationsAuthenticationZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsAuthenticationSignInPageZhHant signInPage = _TranslationsAuthenticationSignInPageZhHant._(_root);
	@override late final _TranslationsAuthenticationFirebaseAuthZhHant firebaseAuth = _TranslationsAuthenticationFirebaseAuthZhHant._(_root);
	@override late final _TranslationsAuthenticationResetPasswordPageZhHant resetPasswordPage = _TranslationsAuthenticationResetPasswordPageZhHant._(_root);
	@override late final _TranslationsAuthenticationSignUpPageZhHant signUpPage = _TranslationsAuthenticationSignUpPageZhHant._(_root);
	@override late final _TranslationsAuthenticationEmailVerificationPageZhHant emailVerificationPage = _TranslationsAuthenticationEmailVerificationPageZhHant._(_root);
	@override late final _TranslationsAuthenticationRegisterProfilePageZhHant registerProfilePage = _TranslationsAuthenticationRegisterProfilePageZhHant._(_root);
	@override late final _TranslationsAuthenticationCompleteSendEmailPageZhHant completeSendEmailPage = _TranslationsAuthenticationCompleteSendEmailPageZhHant._(_root);
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

// Path: myPage
class _TranslationsMyPageZhHant implements TranslationsMyPageEn {
	_TranslationsMyPageZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get aboutAIFunction => '關於AI功能';
	@override String get details => '詳細';
	@override String get settings => '設定';
	@override String get account => '帳戶';
	@override String get language => '語言';
	@override String get theme => '主題';
	@override String get termsOfUsePrivacyPolicy => '使用條款和隱私政策';
	@override String get aboutThisApp => '關於本應用';
	@override String get aboutTheDeveloper => '關於開發者';
}

// Path: changeLanguagePage
class _TranslationsChangeLanguagePageZhHant implements TranslationsChangeLanguagePageEn {
	_TranslationsChangeLanguagePageZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get title => '語言';
	@override late final _TranslationsChangeLanguagePageItemsZhHant items = _TranslationsChangeLanguagePageItemsZhHant._(_root);
}

// Path: myPlanPage
class _TranslationsMyPlanPageZhHant implements TranslationsMyPlanPageEn {
	_TranslationsMyPlanPageZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get title => '我的計劃';
	@override late final _TranslationsMyPlanPageTabsZhHant tabs = _TranslationsMyPlanPageTabsZhHant._(_root);
}

// Path: popularTopics
class _TranslationsPopularTopicsZhHant implements TranslationsPopularTopicsEn {
	_TranslationsPopularTopicsZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get section_name => '熱門話題';
}

// Path: navigationBar.items
class _TranslationsNavigationBarItemsZhHant implements TranslationsNavigationBarItemsEn {
	_TranslationsNavigationBarItemsZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get home => '首頁';
	@override String get myPlan => '我的計劃';
	@override String get myPage => '我的頁面';
}

// Path: homePage.popularPlans
class _TranslationsHomePagePopularPlansZhHant implements TranslationsHomePagePopularPlansEn {
	_TranslationsHomePagePopularPlansZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get title => '熱門計畫';
}

// Path: homePage.popularTopics
class _TranslationsHomePagePopularTopicsZhHant implements TranslationsHomePagePopularTopicsEn {
	_TranslationsHomePagePopularTopicsZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get title => '熱門話題';
	@override String numberOfTopics({required Object number}) => '${number}件~';
}

// Path: homePage.recentPlans
class _TranslationsHomePageRecentPlansZhHant implements TranslationsHomePageRecentPlansEn {
	_TranslationsHomePageRecentPlansZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get title => '最近創建的計畫';
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

// Path: authentication.resetPasswordPage
class _TranslationsAuthenticationResetPasswordPageZhHant implements TranslationsAuthenticationResetPasswordPageEn {
	_TranslationsAuthenticationResetPasswordPageZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get title => '重設密碼';
	@override String get description => '將發送密碼重設郵件到輸入的電子郵件地址';
	@override late final _TranslationsAuthenticationResetPasswordPageTextFieldsZhHant textFields = _TranslationsAuthenticationResetPasswordPageTextFieldsZhHant._(_root);
	@override late final _TranslationsAuthenticationResetPasswordPageButtonsZhHant buttons = _TranslationsAuthenticationResetPasswordPageButtonsZhHant._(_root);
}

// Path: authentication.signUpPage
class _TranslationsAuthenticationSignUpPageZhHant implements TranslationsAuthenticationSignUpPageEn {
	_TranslationsAuthenticationSignUpPageZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get title => '註冊';
	@override late final _TranslationsAuthenticationSignUpPageTextFieldsZhHant textFields = _TranslationsAuthenticationSignUpPageTextFieldsZhHant._(_root);
	@override String get button => '註冊';
}

// Path: authentication.emailVerificationPage
class _TranslationsAuthenticationEmailVerificationPageZhHant implements TranslationsAuthenticationEmailVerificationPageEn {
	_TranslationsAuthenticationEmailVerificationPageZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get title => '電子郵件地址驗證';
	@override String descriptionForDestination({required Object email}) => '將向輸入的${email}發送確認郵件。';
	@override String get descriptionForCoolDown => '確認郵件每60秒只能重新發送一次。';
	@override late final _TranslationsAuthenticationEmailVerificationPageButtonsZhHant buttons = _TranslationsAuthenticationEmailVerificationPageButtonsZhHant._(_root);
	@override late final _TranslationsAuthenticationEmailVerificationPageSnackBarZhHant snackBar = _TranslationsAuthenticationEmailVerificationPageSnackBarZhHant._(_root);
}

// Path: authentication.registerProfilePage
class _TranslationsAuthenticationRegisterProfilePageZhHant implements TranslationsAuthenticationRegisterProfilePageEn {
	_TranslationsAuthenticationRegisterProfilePageZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get title => '註冊個人資訊';
	@override String get textFields => '姓名';
	@override late final _TranslationsAuthenticationRegisterProfilePageButtonsZhHant buttons = _TranslationsAuthenticationRegisterProfilePageButtonsZhHant._(_root);
}

// Path: authentication.completeSendEmailPage
class _TranslationsAuthenticationCompleteSendEmailPageZhHant implements TranslationsAuthenticationCompleteSendEmailPageEn {
	_TranslationsAuthenticationCompleteSendEmailPageZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get title => '發送完成';
	@override String description({required Object email}) => '密碼重設郵件已發送到${email} \n 重設後請從登入畫面登入';
	@override String get successResendEmail => '確認郵件已重新發送';
	@override late final _TranslationsAuthenticationCompleteSendEmailPageButtonsZhHant buttons = _TranslationsAuthenticationCompleteSendEmailPageButtonsZhHant._(_root);
}

// Path: changeLanguagePage.items
class _TranslationsChangeLanguagePageItemsZhHant implements TranslationsChangeLanguagePageItemsEn {
	_TranslationsChangeLanguagePageItemsZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get japanese => '日语';
	@override String get english => '英语';
	@override String get simplifiedChinese => '中文(简体字)';
	@override String get traditionalChinese => '中文(繁体字)';
}

// Path: myPlanPage.tabs
class _TranslationsMyPlanPageTabsZhHant implements TranslationsMyPlanPageTabsEn {
	_TranslationsMyPlanPageTabsZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get createdPlans => '已創建的計劃';
	@override String get bookmark => '書籤';
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

// Path: authentication.resetPasswordPage.textFields
class _TranslationsAuthenticationResetPasswordPageTextFieldsZhHant implements TranslationsAuthenticationResetPasswordPageTextFieldsEn {
	_TranslationsAuthenticationResetPasswordPageTextFieldsZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get email => '電子郵件地址';
}

// Path: authentication.resetPasswordPage.buttons
class _TranslationsAuthenticationResetPasswordPageButtonsZhHant implements TranslationsAuthenticationResetPasswordPageButtonsEn {
	_TranslationsAuthenticationResetPasswordPageButtonsZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get submit => '發送';
}

// Path: authentication.signUpPage.textFields
class _TranslationsAuthenticationSignUpPageTextFieldsZhHant implements TranslationsAuthenticationSignUpPageTextFieldsEn {
	_TranslationsAuthenticationSignUpPageTextFieldsZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get email => '電子郵件地址';
	@override String get password => '密碼';
}

// Path: authentication.emailVerificationPage.buttons
class _TranslationsAuthenticationEmailVerificationPageButtonsZhHant implements TranslationsAuthenticationEmailVerificationPageButtonsEn {
	_TranslationsAuthenticationEmailVerificationPageButtonsZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get sendEmail => '發送確認郵件';
	@override String get resendEmail => '重新發送確認郵件';
	@override String get toNext => '下一步';
	@override String get retypeEmail => '修改電子郵件地址';
}

// Path: authentication.emailVerificationPage.snackBar
class _TranslationsAuthenticationEmailVerificationPageSnackBarZhHant implements TranslationsAuthenticationEmailVerificationPageSnackBarEn {
	_TranslationsAuthenticationEmailVerificationPageSnackBarZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get success => '發送成功';
	@override late final _TranslationsAuthenticationEmailVerificationPageSnackBarErrorZhHant error = _TranslationsAuthenticationEmailVerificationPageSnackBarErrorZhHant._(_root);
}

// Path: authentication.registerProfilePage.buttons
class _TranslationsAuthenticationRegisterProfilePageButtonsZhHant implements TranslationsAuthenticationRegisterProfilePageButtonsEn {
	_TranslationsAuthenticationRegisterProfilePageButtonsZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get submit => '完成';
	@override String get skip => '跳過';
}

// Path: authentication.completeSendEmailPage.buttons
class _TranslationsAuthenticationCompleteSendEmailPageButtonsZhHant implements TranslationsAuthenticationCompleteSendEmailPageButtonsEn {
	_TranslationsAuthenticationCompleteSendEmailPageButtonsZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get toSignIn => '前往登入畫面';
	@override String get resendEmail => '重新發送確認郵件';
	@override String get changeEmail => '更改電子郵件地址';
}

// Path: authentication.emailVerificationPage.snackBar.error
class _TranslationsAuthenticationEmailVerificationPageSnackBarErrorZhHant implements TranslationsAuthenticationEmailVerificationPageSnackBarErrorEn {
	_TranslationsAuthenticationEmailVerificationPageSnackBarErrorZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get unexpected => '發生錯誤，請稍後再試。';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsZhHant {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'navigationBar.items.home': return '首頁';
			case 'navigationBar.items.myPlan': return '我的計劃';
			case 'navigationBar.items.myPage': return '我的頁面';
			case 'homePage.popularPlans.title': return '熱門計畫';
			case 'homePage.popularTopics.title': return '熱門話題';
			case 'homePage.popularTopics.numberOfTopics': return ({required Object number}) => '${number}件~';
			case 'homePage.recentPlans.title': return '最近創建的計畫';
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
			case 'authentication.resetPasswordPage.title': return '重設密碼';
			case 'authentication.resetPasswordPage.description': return '將發送密碼重設郵件到輸入的電子郵件地址';
			case 'authentication.resetPasswordPage.textFields.email': return '電子郵件地址';
			case 'authentication.resetPasswordPage.buttons.submit': return '發送';
			case 'authentication.signUpPage.title': return '註冊';
			case 'authentication.signUpPage.textFields.email': return '電子郵件地址';
			case 'authentication.signUpPage.textFields.password': return '密碼';
			case 'authentication.signUpPage.button': return '註冊';
			case 'authentication.emailVerificationPage.title': return '電子郵件地址驗證';
			case 'authentication.emailVerificationPage.descriptionForDestination': return ({required Object email}) => '將向輸入的${email}發送確認郵件。';
			case 'authentication.emailVerificationPage.descriptionForCoolDown': return '確認郵件每60秒只能重新發送一次。';
			case 'authentication.emailVerificationPage.buttons.sendEmail': return '發送確認郵件';
			case 'authentication.emailVerificationPage.buttons.resendEmail': return '重新發送確認郵件';
			case 'authentication.emailVerificationPage.buttons.toNext': return '下一步';
			case 'authentication.emailVerificationPage.buttons.retypeEmail': return '修改電子郵件地址';
			case 'authentication.emailVerificationPage.snackBar.success': return '發送成功';
			case 'authentication.emailVerificationPage.snackBar.error.unexpected': return '發生錯誤，請稍後再試。';
			case 'authentication.registerProfilePage.title': return '註冊個人資訊';
			case 'authentication.registerProfilePage.textFields': return '姓名';
			case 'authentication.registerProfilePage.buttons.submit': return '完成';
			case 'authentication.registerProfilePage.buttons.skip': return '跳過';
			case 'authentication.completeSendEmailPage.title': return '發送完成';
			case 'authentication.completeSendEmailPage.description': return ({required Object email}) => '密碼重設郵件已發送到${email} \n 重設後請從登入畫面登入';
			case 'authentication.completeSendEmailPage.successResendEmail': return '確認郵件已重新發送';
			case 'authentication.completeSendEmailPage.buttons.toSignIn': return '前往登入畫面';
			case 'authentication.completeSendEmailPage.buttons.resendEmail': return '重新發送確認郵件';
			case 'authentication.completeSendEmailPage.buttons.changeEmail': return '更改電子郵件地址';
			case 'validation.emailRequired': return '請輸入電子郵件地址';
			case 'validation.emailInvalid': return '電子郵件地址格式不正確';
			case 'validation.passwordRequired': return '請輸入密碼';
			case 'validation.passwordShort': return '密碼必須至少8個字符';
			case 'validation.passwordWeak': return '密碼應包含字母和數字的組合';
			case 'validation.passwordMatch': return '密碼不匹配';
			case 'validation.informationRequired': return '請輸入信息';
			case 'validation.urlInvalid': return 'URL格式不正確';
			case 'myPage.aboutAIFunction': return '關於AI功能';
			case 'myPage.details': return '詳細';
			case 'myPage.settings': return '設定';
			case 'myPage.account': return '帳戶';
			case 'myPage.language': return '語言';
			case 'myPage.theme': return '主題';
			case 'myPage.termsOfUsePrivacyPolicy': return '使用條款和隱私政策';
			case 'myPage.aboutThisApp': return '關於本應用';
			case 'myPage.aboutTheDeveloper': return '關於開發者';
			case 'changeLanguagePage.title': return '語言';
			case 'changeLanguagePage.items.japanese': return '日语';
			case 'changeLanguagePage.items.english': return '英语';
			case 'changeLanguagePage.items.simplifiedChinese': return '中文(简体字)';
			case 'changeLanguagePage.items.traditionalChinese': return '中文(繁体字)';
			case 'myPlanPage.title': return '我的計劃';
			case 'myPlanPage.tabs.createdPlans': return '已創建的計劃';
			case 'myPlanPage.tabs.bookmark': return '書籤';
			case 'popularTopics.section_name': return '熱門話題';
			case 'locales.en': return '英語';
			case 'locales.ja': return '日語';
			case 'locales.zh': return '中文';
			default: return null;
		}
	}
}

