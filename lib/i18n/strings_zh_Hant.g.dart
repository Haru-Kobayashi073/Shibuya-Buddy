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
	@override late final _TranslationsAccountPageZhHant accountPage = _TranslationsAccountPageZhHant._(_root);
	@override late final _TranslationsAuthenticationZhHant authentication = _TranslationsAuthenticationZhHant._(_root);
	@override late final _TranslationsValidationZhHant validation = _TranslationsValidationZhHant._(_root);
	@override late final _TranslationsMyPageZhHant myPage = _TranslationsMyPageZhHant._(_root);
	@override late final _TranslationsChangeLanguagePageZhHant changeLanguagePage = _TranslationsChangeLanguagePageZhHant._(_root);
	@override late final _TranslationsChangeThemePageZhHant changeThemePage = _TranslationsChangeThemePageZhHant._(_root);
	@override late final _TranslationsMyPlanPageZhHant myPlanPage = _TranslationsMyPlanPageZhHant._(_root);
	@override late final _TranslationsBuddyChatPageZhHant buddyChatPage = _TranslationsBuddyChatPageZhHant._(_root);
	@override late final _TranslationsPopularTopicsZhHant popularTopics = _TranslationsPopularTopicsZhHant._(_root);
	@override late final _TranslationsCreatePlanPageZhHant createPlanPage = _TranslationsCreatePlanPageZhHant._(_root);
	@override late final _TranslationsEditProfilePageZhHant editProfilePage = _TranslationsEditProfilePageZhHant._(_root);
	@override late final _TranslationsConfirmDialogZhHant confirmDialog = _TranslationsConfirmDialogZhHant._(_root);
	@override late final _TranslationsPromptZhHant prompt = _TranslationsPromptZhHant._(_root);
	@override late final _TranslationsBillDetailsPageZhHant billDetailsPage = _TranslationsBillDetailsPageZhHant._(_root);
	@override late final _TranslationsPlanDetailsPageZhHant planDetailsPage = _TranslationsPlanDetailsPageZhHant._(_root);
	@override Map<String, String> get locales => {
		'en': '英語',
		'ja': '日語',
		'zh': '中文',
	};
	@override late final _TranslationsErrorPageZhHant errorPage = _TranslationsErrorPageZhHant._(_root);
	@override late final _TranslationsMapPageZhHant mapPage = _TranslationsMapPageZhHant._(_root);
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

// Path: accountPage
class _TranslationsAccountPageZhHant implements TranslationsAccountPageEn {
	_TranslationsAccountPageZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get title => '帳戶';
	@override late final _TranslationsAccountPageItemsZhHant items = _TranslationsAccountPageItemsZhHant._(_root);
	@override late final _TranslationsAccountPageSnackBarZhHant snackBar = _TranslationsAccountPageSnackBarZhHant._(_root);
	@override late final _TranslationsAccountPageDiaLogZhHant diaLog = _TranslationsAccountPageDiaLogZhHant._(_root);
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
	@override String get usernameRequired => '請輸入您的使用者名稱';
	@override String get usernameMaxLength => '使用者名稱必須為8個字符或更少';
}

// Path: myPage
class _TranslationsMyPageZhHant implements TranslationsMyPageEn {
	_TranslationsMyPageZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get unregisteredUserName => '未註冊';
	@override String get editProfile => '編輯個人資料';
	@override String get premiumPlan => '進階方案';
	@override String get details => '詳細';
	@override String get settings => '設定';
	@override String get account => '帳戶';
	@override String get language => '語言';
	@override String get theme => '主題';
	@override String get termsOfUsePrivacyPolicy => '使用條款和隱私政策';
	@override String get aboutThisApp => '關於本應用';
	@override String get aboutTheDeveloper => '關於開發者';
	@override late final _TranslationsMyPageAccountStatusZhHant accountStatus = _TranslationsMyPageAccountStatusZhHant._(_root);
}

// Path: changeLanguagePage
class _TranslationsChangeLanguagePageZhHant implements TranslationsChangeLanguagePageEn {
	_TranslationsChangeLanguagePageZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get title => '語言';
	@override late final _TranslationsChangeLanguagePageItemsZhHant items = _TranslationsChangeLanguagePageItemsZhHant._(_root);
}

// Path: changeThemePage
class _TranslationsChangeThemePageZhHant implements TranslationsChangeThemePageEn {
	_TranslationsChangeThemePageZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get title => '主题';
	@override late final _TranslationsChangeThemePageItemsZhHant items = _TranslationsChangeThemePageItemsZhHant._(_root);
}

// Path: myPlanPage
class _TranslationsMyPlanPageZhHant implements TranslationsMyPlanPageEn {
	_TranslationsMyPlanPageZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get title => '我的方案';
	@override late final _TranslationsMyPlanPageTabsZhHant tabs = _TranslationsMyPlanPageTabsZhHant._(_root);
	@override late final _TranslationsMyPlanPageBookmarkItemsZhHant bookmarkItems = _TranslationsMyPlanPageBookmarkItemsZhHant._(_root);
	@override late final _TranslationsMyPlanPageCreatedPlansItemsZhHant createdPlansItems = _TranslationsMyPlanPageCreatedPlansItemsZhHant._(_root);
	@override late final _TranslationsMyPlanPageErrorZhHant error = _TranslationsMyPlanPageErrorZhHant._(_root);
}

// Path: buddyChatPage
class _TranslationsBuddyChatPageZhHant implements TranslationsBuddyChatPageEn {
	_TranslationsBuddyChatPageZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get title => 'Buddy的建議';
	@override String possibleChatCount({required Object possibleChatCount}) => '訊息還可以發送${possibleChatCount}次';
	@override late final _TranslationsBuddyChatPageTextFieldsZhHant textFields = _TranslationsBuddyChatPageTextFieldsZhHant._(_root);
	@override late final _TranslationsBuddyChatPageButtonsZhHant buttons = _TranslationsBuddyChatPageButtonsZhHant._(_root);
	@override late final _TranslationsBuddyChatPagePlaceCardZhHant placeCard = _TranslationsBuddyChatPagePlaceCardZhHant._(_root);
	@override late final _TranslationsBuddyChatPageSnackBarZhHant snackBar = _TranslationsBuddyChatPageSnackBarZhHant._(_root);
}

// Path: popularTopics
class _TranslationsPopularTopicsZhHant implements TranslationsPopularTopicsEn {
	_TranslationsPopularTopicsZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get sectionName => '熱門話題';
}

// Path: createPlanPage
class _TranslationsCreatePlanPageZhHant implements TranslationsCreatePlanPageEn {
	_TranslationsCreatePlanPageZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get title => '建立計劃';
	@override late final _TranslationsCreatePlanPageLabelZhHant label = _TranslationsCreatePlanPageLabelZhHant._(_root);
	@override late final _TranslationsCreatePlanPageHintTextZhHant hintText = _TranslationsCreatePlanPageHintTextZhHant._(_root);
	@override late final _TranslationsCreatePlanPageModalZhHant modal = _TranslationsCreatePlanPageModalZhHant._(_root);
	@override List<String> get numberOfPeopleOptions => [
		'1人',
		'2人',
		'3人',
		'4人',
		'5人',
		'6人以上',
	];
	@override List<String> get transportOptions => [
		'火車',
		'步行',
		'汽車',
		'巴士',
	];
	@override List<String> get categoryOptions => [
		'親子',
		'成人',
		'娛樂',
		'活動',
		'歷史',
	];
	@override List<String> get defaultTopics => [
		'美食',
		'購物',
		'活動',
		'電影',
	];
	@override String get submitButton => '提交計劃給AI';
	@override late final _TranslationsCreatePlanPageSnackBarZhHant snackBar = _TranslationsCreatePlanPageSnackBarZhHant._(_root);
}

// Path: editProfilePage
class _TranslationsEditProfilePageZhHant implements TranslationsEditProfilePageEn {
	_TranslationsEditProfilePageZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get title => '編輯個人資料';
	@override late final _TranslationsEditProfilePageTextFieldsZhHant textFields = _TranslationsEditProfilePageTextFieldsZhHant._(_root);
	@override late final _TranslationsEditProfilePageButtonsZhHant buttons = _TranslationsEditProfilePageButtonsZhHant._(_root);
	@override late final _TranslationsEditProfilePageSnackBarZhHant snackBar = _TranslationsEditProfilePageSnackBarZhHant._(_root);
}

// Path: confirmDialog
class _TranslationsConfirmDialogZhHant implements TranslationsConfirmDialogEn {
	_TranslationsConfirmDialogZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsConfirmDialogAnswersZhHant answers = _TranslationsConfirmDialogAnswersZhHant._(_root);
	@override late final _TranslationsConfirmDialogPopPageZhHant popPage = _TranslationsConfirmDialogPopPageZhHant._(_root);
	@override late final _TranslationsConfirmDialogCompleteCreatePlanZhHant completeCreatePlan = _TranslationsConfirmDialogCompleteCreatePlanZhHant._(_root);
}

// Path: prompt
class _TranslationsPromptZhHant implements TranslationsPromptEn {
	_TranslationsPromptZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get planProposalMessage => '我考慮了這個計劃！您覺得怎麼樣？';
}

// Path: billDetailsPage
class _TranslationsBillDetailsPageZhHant implements TranslationsBillDetailsPageEn {
	_TranslationsBillDetailsPageZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get title => '高級方案';
	@override String get description => '訂閱高級方案後，您可以更舒適地享受澀谷觀光。';
	@override late final _TranslationsBillDetailsPagePricingPlanZhHant pricingPlan = _TranslationsBillDetailsPagePricingPlanZhHant._(_root);
	@override late final _TranslationsBillDetailsPageFeaturesZhHant features = _TranslationsBillDetailsPageFeaturesZhHant._(_root);
	@override late final _TranslationsBillDetailsPagePricingOptionsZhHant pricingOptions = _TranslationsBillDetailsPagePricingOptionsZhHant._(_root);
	@override String get upgradeButton => '升級到高級方案';
}

// Path: planDetailsPage
class _TranslationsPlanDetailsPageZhHant implements TranslationsPlanDetailsPageEn {
	_TranslationsPlanDetailsPageZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPlanDetailsPageDateTimeZhHant dateTime = _TranslationsPlanDetailsPageDateTimeZhHant._(_root);
	@override late final _TranslationsPlanDetailsPageItemZhHant item = _TranslationsPlanDetailsPageItemZhHant._(_root);
	@override late final _TranslationsPlanDetailsPageSnackBarZhHant snackBar = _TranslationsPlanDetailsPageSnackBarZhHant._(_root);
}

// Path: errorPage
class _TranslationsErrorPageZhHant implements TranslationsErrorPageEn {
	_TranslationsErrorPageZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get title => '發生錯誤...';
	@override String get message => '請檢查您的網絡連接並重試。';
	@override String get retryButton => '重試';
}

// Path: mapPage
class _TranslationsMapPageZhHant implements TranslationsMapPageEn {
	_TranslationsMapPageZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get title => '地圖';
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

// Path: accountPage.items
class _TranslationsAccountPageItemsZhHant implements TranslationsAccountPageItemsEn {
	_TranslationsAccountPageItemsZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get signOut => '登出';
	@override String get linkedWithGoogle => '與Google連結';
	@override String get linkedWithApple => '與Apple連結';
	@override String get alreadyLinkedGoogle => '已與Google連結';
	@override String get alreadyLinkedApple => '已與Apple連結';
}

// Path: accountPage.snackBar
class _TranslationsAccountPageSnackBarZhHant implements TranslationsAccountPageSnackBarEn {
	_TranslationsAccountPageSnackBarZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get signOut => '已成功登出。';
	@override String get signOutFailure => '登出時發生錯誤。';
	@override String get successfulLinkage => '帳戶連結成功。';
	@override String get linkageFailure => '帳戶連結失敗。';
	@override String get providerAlreadyLinked => '此帳戶已經連結。';
	@override String get accountDeactivation => '已解除帳戶連結。';
	@override String get invalidCredential => '請重新登入。';
	@override String get linkageCancelled => '帳戶連結已取消。';
	@override String get unlinkageFailure => '解除帳戶連結失敗。';
	@override String get operationNotAllowed => '提供者無效。請聯絡開發者。';
	@override String get unknownError => '發生未知錯誤。';
}

// Path: accountPage.diaLog
class _TranslationsAccountPageDiaLogZhHant implements TranslationsAccountPageDiaLogEn {
	_TranslationsAccountPageDiaLogZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get yes => '是';
	@override String get no => '否';
	@override String get title => '確認解除帳戶連結';
	@override String get googleText => '是否要解除目前帳戶與Google帳戶的連結？';
	@override String get appleText => '是否要解除目前帳戶與Apple帳戶的連結？';
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
	@override late final _TranslationsAuthenticationRegisterProfilePageSnackBarZhHant snackBar = _TranslationsAuthenticationRegisterProfilePageSnackBarZhHant._(_root);
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

// Path: myPage.accountStatus
class _TranslationsMyPageAccountStatusZhHant implements TranslationsMyPageAccountStatusEn {
	_TranslationsMyPageAccountStatusZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMyPageAccountStatusDateTimeZhHant dateTime = _TranslationsMyPageAccountStatusDateTimeZhHant._(_root);
	@override String get premium => '進階會員';
	@override String get standard => '標準會員';
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

// Path: changeThemePage.items
class _TranslationsChangeThemePageItemsZhHant implements TranslationsChangeThemePageItemsEn {
	_TranslationsChangeThemePageItemsZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get system => '系统';
	@override String get light => '光';
	@override String get dark => '黑暗';
}

// Path: myPlanPage.tabs
class _TranslationsMyPlanPageTabsZhHant implements TranslationsMyPlanPageTabsEn {
	_TranslationsMyPlanPageTabsZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get createdPlans => '已建立方案';
	@override String get bookmark => '書籤';
}

// Path: myPlanPage.bookmarkItems
class _TranslationsMyPlanPageBookmarkItemsZhHant implements TranslationsMyPlanPageBookmarkItemsEn {
	_TranslationsMyPlanPageBookmarkItemsZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get nondata => '暫無收藏方案。';
	@override String get reloading => '重新載入';
}

// Path: myPlanPage.createdPlansItems
class _TranslationsMyPlanPageCreatedPlansItemsZhHant implements TranslationsMyPlanPageCreatedPlansItemsEn {
	_TranslationsMyPlanPageCreatedPlansItemsZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get nondata => '開始建立方案吧！';
	@override String get createaplan => '建立方案';
}

// Path: myPlanPage.error
class _TranslationsMyPlanPageErrorZhHant implements TranslationsMyPlanPageErrorEn {
	_TranslationsMyPlanPageErrorZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get displayError => '顯示方案時發生錯誤。';
	@override String get failedGetId => '取得方案ID失敗。';
	@override String get failedGetPlanData => '取得方案資料時發生錯誤。';
	@override String get failedUnBookmark => '取消收藏時發生錯誤。';
}

// Path: buddyChatPage.textFields
class _TranslationsBuddyChatPageTextFieldsZhHant implements TranslationsBuddyChatPageTextFieldsEn {
	_TranslationsBuddyChatPageTextFieldsZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get message => '輸入訊息';
}

// Path: buddyChatPage.buttons
class _TranslationsBuddyChatPageButtonsZhHant implements TranslationsBuddyChatPageButtonsEn {
	_TranslationsBuddyChatPageButtonsZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get send => '完成';
}

// Path: buddyChatPage.placeCard
class _TranslationsBuddyChatPagePlaceCardZhHant implements TranslationsBuddyChatPagePlaceCardEn {
	_TranslationsBuddyChatPagePlaceCardZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get openingHours => '營業時間';
	@override String get averageAmount => '平均預算';
	@override String get website => '網站';
}

// Path: buddyChatPage.snackBar
class _TranslationsBuddyChatPageSnackBarZhHant implements TranslationsBuddyChatPageSnackBarEn {
	_TranslationsBuddyChatPageSnackBarZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsBuddyChatPageSnackBarErrorZhHant error = _TranslationsBuddyChatPageSnackBarErrorZhHant._(_root);
}

// Path: createPlanPage.label
class _TranslationsCreatePlanPageLabelZhHant implements TranslationsCreatePlanPageLabelEn {
	_TranslationsCreatePlanPageLabelZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get location => '目的地';
	@override String get scheduleStart => '開始日期';
	@override String get scheduleEnd => '結束日期';
	@override String get numberOfPeople => '人數';
	@override String get transport => '交通方式';
	@override String get category => '類別';
	@override String get topics => '旅行主題';
}

// Path: createPlanPage.hintText
class _TranslationsCreatePlanPageHintTextZhHant implements TranslationsCreatePlanPageHintTextEn {
	_TranslationsCreatePlanPageHintTextZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get location => '澀谷';
}

// Path: createPlanPage.modal
class _TranslationsCreatePlanPageModalZhHant implements TranslationsCreatePlanPageModalEn {
	_TranslationsCreatePlanPageModalZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get title => '選擇日期';
}

// Path: createPlanPage.snackBar
class _TranslationsCreatePlanPageSnackBarZhHant implements TranslationsCreatePlanPageSnackBarEn {
	_TranslationsCreatePlanPageSnackBarZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsCreatePlanPageSnackBarErrorZhHant error = _TranslationsCreatePlanPageSnackBarErrorZhHant._(_root);
}

// Path: editProfilePage.textFields
class _TranslationsEditProfilePageTextFieldsZhHant implements TranslationsEditProfilePageTextFieldsEn {
	_TranslationsEditProfilePageTextFieldsZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get name => '姓名';
}

// Path: editProfilePage.buttons
class _TranslationsEditProfilePageButtonsZhHant implements TranslationsEditProfilePageButtonsEn {
	_TranslationsEditProfilePageButtonsZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get submit => '儲存';
}

// Path: editProfilePage.snackBar
class _TranslationsEditProfilePageSnackBarZhHant implements TranslationsEditProfilePageSnackBarEn {
	_TranslationsEditProfilePageSnackBarZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get success => '更新成功';
	@override late final _TranslationsEditProfilePageSnackBarErrorZhHant error = _TranslationsEditProfilePageSnackBarErrorZhHant._(_root);
}

// Path: confirmDialog.answers
class _TranslationsConfirmDialogAnswersZhHant implements TranslationsConfirmDialogAnswersEn {
	_TranslationsConfirmDialogAnswersZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get yes => '是';
	@override String get no => '否';
}

// Path: confirmDialog.popPage
class _TranslationsConfirmDialogPopPageZhHant implements TranslationsConfirmDialogPopPageEn {
	_TranslationsConfirmDialogPopPageZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get title => '要返回上一頁嗎？';
	@override String get description => '當前內容不會被保存';
}

// Path: confirmDialog.completeCreatePlan
class _TranslationsConfirmDialogCompleteCreatePlanZhHant implements TranslationsConfirmDialogCompleteCreatePlanEn {
	_TranslationsConfirmDialogCompleteCreatePlanZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get title => '確定要保存計劃嗎？';
	@override String get description => '最後一條訊息中的計劃將被保存';
}

// Path: billDetailsPage.pricingPlan
class _TranslationsBillDetailsPagePricingPlanZhHant implements TranslationsBillDetailsPagePricingPlanEn {
	_TranslationsBillDetailsPagePricingPlanZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get title => '價格方案';
	@override late final _TranslationsBillDetailsPagePricingPlanColumnsZhHant columns = _TranslationsBillDetailsPagePricingPlanColumnsZhHant._(_root);
	@override late final _TranslationsBillDetailsPagePricingPlanDetailsZhHant details = _TranslationsBillDetailsPagePricingPlanDetailsZhHant._(_root);
}

// Path: billDetailsPage.features
class _TranslationsBillDetailsPageFeaturesZhHant implements TranslationsBillDetailsPageFeaturesEn {
	_TranslationsBillDetailsPageFeaturesZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get title => '等級功能';
	@override late final _TranslationsBillDetailsPageFeaturesRowsZhHant rows = _TranslationsBillDetailsPageFeaturesRowsZhHant._(_root);
	@override late final _TranslationsBillDetailsPageFeaturesColumnsZhHant columns = _TranslationsBillDetailsPageFeaturesColumnsZhHant._(_root);
}

// Path: billDetailsPage.pricingOptions
class _TranslationsBillDetailsPagePricingOptionsZhHant implements TranslationsBillDetailsPagePricingOptionsEn {
	_TranslationsBillDetailsPagePricingOptionsZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsBillDetailsPagePricingOptionsOneDayZhHant oneDay = _TranslationsBillDetailsPagePricingOptionsOneDayZhHant._(_root);
	@override late final _TranslationsBillDetailsPagePricingOptionsThreeDaysZhHant threeDays = _TranslationsBillDetailsPagePricingOptionsThreeDaysZhHant._(_root);
	@override late final _TranslationsBillDetailsPagePricingOptionsFiveDaysZhHant fiveDays = _TranslationsBillDetailsPagePricingOptionsFiveDaysZhHant._(_root);
	@override late final _TranslationsBillDetailsPagePricingOptionsSevenDaysZhHant sevenDays = _TranslationsBillDetailsPagePricingOptionsSevenDaysZhHant._(_root);
	@override late final _TranslationsBillDetailsPagePricingOptionsLifetimeZhHant lifetime = _TranslationsBillDetailsPagePricingOptionsLifetimeZhHant._(_root);
}

// Path: planDetailsPage.dateTime
class _TranslationsPlanDetailsPageDateTimeZhHant implements TranslationsPlanDetailsPageDateTimeEn {
	_TranslationsPlanDetailsPageDateTimeZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String createOn({required Object date}) => '${date}建立的方案';
	@override String get dateFormat => 'yyyy年MM月dd日';
}

// Path: planDetailsPage.item
class _TranslationsPlanDetailsPageItemZhHant implements TranslationsPlanDetailsPageItemEn {
	_TranslationsPlanDetailsPageItemZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get viewOnMap => '在地圖上查看';
}

// Path: planDetailsPage.snackBar
class _TranslationsPlanDetailsPageSnackBarZhHant implements TranslationsPlanDetailsPageSnackBarEn {
	_TranslationsPlanDetailsPageSnackBarZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPlanDetailsPageSnackBarErrorZhHant error = _TranslationsPlanDetailsPageSnackBarErrorZhHant._(_root);
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

// Path: authentication.registerProfilePage.snackBar
class _TranslationsAuthenticationRegisterProfilePageSnackBarZhHant implements TranslationsAuthenticationRegisterProfilePageSnackBarEn {
	_TranslationsAuthenticationRegisterProfilePageSnackBarZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsAuthenticationRegisterProfilePageSnackBarErrorZhHant error = _TranslationsAuthenticationRegisterProfilePageSnackBarErrorZhHant._(_root);
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

// Path: myPage.accountStatus.dateTime
class _TranslationsMyPageAccountStatusDateTimeZhHant implements TranslationsMyPageAccountStatusDateTimeEn {
	_TranslationsMyPageAccountStatusDateTimeZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String registeredOn({required Object date}) => '${date}註冊於';
	@override String get registeredOnFormat => 'yyyy年MM月dd日';
	@override String validUntil({required Object date}) => '有效期至${date}';
	@override String get validUntilFormat => 'yyyy年MM月dd日 HH:mm';
}

// Path: buddyChatPage.snackBar.error
class _TranslationsBuddyChatPageSnackBarErrorZhHant implements TranslationsBuddyChatPageSnackBarErrorEn {
	_TranslationsBuddyChatPageSnackBarErrorZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get failedRecieveMessage => '無法接收回覆，請稍後再試';
	@override String get failedCompleteCreatePlan => '無法完成建立計劃，請稍後再試';
}

// Path: createPlanPage.snackBar.error
class _TranslationsCreatePlanPageSnackBarErrorZhHant implements TranslationsCreatePlanPageSnackBarErrorEn {
	_TranslationsCreatePlanPageSnackBarErrorZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get foundUnSelectedField => '存在未選擇的項目，請選擇所有項目';
}

// Path: editProfilePage.snackBar.error
class _TranslationsEditProfilePageSnackBarErrorZhHant implements TranslationsEditProfilePageSnackBarErrorEn {
	_TranslationsEditProfilePageSnackBarErrorZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get noChange => '沒有變更';
	@override String get failedToUpdate => '更新失敗，請稍後再試';
	@override String get failedToPickImage => '選擇圖片失敗，請稍後再試';
}

// Path: billDetailsPage.pricingPlan.columns
class _TranslationsBillDetailsPagePricingPlanColumnsZhHant implements TranslationsBillDetailsPagePricingPlanColumnsEn {
	_TranslationsBillDetailsPagePricingPlanColumnsZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get standard => '標準';
	@override String get premium => '高級';
}

// Path: billDetailsPage.pricingPlan.details
class _TranslationsBillDetailsPagePricingPlanDetailsZhHant implements TranslationsBillDetailsPagePricingPlanDetailsEn {
	_TranslationsBillDetailsPagePricingPlanDetailsZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get free => '免費 🎉';
	@override late final _TranslationsBillDetailsPagePricingPlanDetailsPremiumPriceZhHant premiumPrice = _TranslationsBillDetailsPagePricingPlanDetailsPremiumPriceZhHant._(_root);
}

// Path: billDetailsPage.features.rows
class _TranslationsBillDetailsPageFeaturesRowsZhHant implements TranslationsBillDetailsPageFeaturesRowsEn {
	_TranslationsBillDetailsPageFeaturesRowsZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get planCreationLimit => '可創建的方案次數';
	@override String get chatLimit => '方案創建期間可用聊天次數';
	@override String get timelineAccess => '訪問所有方案時間表';
	@override String get adFree => '無廣告';
	@override String get exclusiveFeatures => '方案認證功能';
}

// Path: billDetailsPage.features.columns
class _TranslationsBillDetailsPageFeaturesColumnsZhHant implements TranslationsBillDetailsPageFeaturesColumnsEn {
	_TranslationsBillDetailsPageFeaturesColumnsZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsBillDetailsPageFeaturesColumnsStandardZhHant standard = _TranslationsBillDetailsPageFeaturesColumnsStandardZhHant._(_root);
	@override late final _TranslationsBillDetailsPageFeaturesColumnsPremiumZhHant premium = _TranslationsBillDetailsPageFeaturesColumnsPremiumZhHant._(_root);
}

// Path: billDetailsPage.pricingOptions.oneDay
class _TranslationsBillDetailsPagePricingOptionsOneDayZhHant implements TranslationsBillDetailsPagePricingOptionsOneDayEn {
	_TranslationsBillDetailsPagePricingOptionsOneDayZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get duration => '1日';
	@override String get discount => '';
	@override String get price => '300日圓';
}

// Path: billDetailsPage.pricingOptions.threeDays
class _TranslationsBillDetailsPagePricingOptionsThreeDaysZhHant implements TranslationsBillDetailsPagePricingOptionsThreeDaysEn {
	_TranslationsBillDetailsPagePricingOptionsThreeDaysZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get duration => '3日';
	@override String get discount => '-5%';
	@override String get price => '890日圓';
}

// Path: billDetailsPage.pricingOptions.fiveDays
class _TranslationsBillDetailsPagePricingOptionsFiveDaysZhHant implements TranslationsBillDetailsPagePricingOptionsFiveDaysEn {
	_TranslationsBillDetailsPagePricingOptionsFiveDaysZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get duration => '5日';
	@override String get discount => '-7.5%';
	@override String get price => '1,387日圓';
}

// Path: billDetailsPage.pricingOptions.sevenDays
class _TranslationsBillDetailsPagePricingOptionsSevenDaysZhHant implements TranslationsBillDetailsPagePricingOptionsSevenDaysEn {
	_TranslationsBillDetailsPagePricingOptionsSevenDaysZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get duration => '7日';
	@override String get discount => '-10%';
	@override String get price => '2,070日圓';
}

// Path: billDetailsPage.pricingOptions.lifetime
class _TranslationsBillDetailsPagePricingOptionsLifetimeZhHant implements TranslationsBillDetailsPagePricingOptionsLifetimeEn {
	_TranslationsBillDetailsPagePricingOptionsLifetimeZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get duration => '終身';
	@override String get discount => '';
	@override String get price => '25,800日圓';
}

// Path: planDetailsPage.snackBar.error
class _TranslationsPlanDetailsPageSnackBarErrorZhHant implements TranslationsPlanDetailsPageSnackBarErrorEn {
	_TranslationsPlanDetailsPageSnackBarErrorZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get failedToUpdateBookmark => '更新書籤失敗，請稍後再試';
}

// Path: authentication.emailVerificationPage.snackBar.error
class _TranslationsAuthenticationEmailVerificationPageSnackBarErrorZhHant implements TranslationsAuthenticationEmailVerificationPageSnackBarErrorEn {
	_TranslationsAuthenticationEmailVerificationPageSnackBarErrorZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get unexpected => '發生錯誤，請稍後再試。';
}

// Path: authentication.registerProfilePage.snackBar.error
class _TranslationsAuthenticationRegisterProfilePageSnackBarErrorZhHant implements TranslationsAuthenticationRegisterProfilePageSnackBarErrorEn {
	_TranslationsAuthenticationRegisterProfilePageSnackBarErrorZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get submitIfAllEmpty => '請輸入信息';
	@override String get unexpected => '發生錯誤，請稍後再試。';
}

// Path: billDetailsPage.pricingPlan.details.premiumPrice
class _TranslationsBillDetailsPagePricingPlanDetailsPremiumPriceZhHant implements TranslationsBillDetailsPagePricingPlanDetailsPremiumPriceEn {
	_TranslationsBillDetailsPagePricingPlanDetailsPremiumPriceZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get days => '按天數購買';
	@override String get daily => '・1日 300日圓';
	@override String get threeDays => '・3日 855日圓';
	@override String get fiveDays => '・5日 1,480日圓';
	@override String get sevenDays => '・7日 2,070日圓';
	@override String get or => '或者';
	@override String get lifetime => '終身';
	@override String get lifetimePrice => '25,800日圓';
}

// Path: billDetailsPage.features.columns.standard
class _TranslationsBillDetailsPageFeaturesColumnsStandardZhHant implements TranslationsBillDetailsPageFeaturesColumnsStandardEn {
	_TranslationsBillDetailsPageFeaturesColumnsStandardZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get label => '標準';
	@override String get planCreationLimit => '2次';
	@override String get chatLimit => '3次';
}

// Path: billDetailsPage.features.columns.premium
class _TranslationsBillDetailsPageFeaturesColumnsPremiumZhHant implements TranslationsBillDetailsPageFeaturesColumnsPremiumEn {
	_TranslationsBillDetailsPageFeaturesColumnsPremiumZhHant._(this._root);

	final TranslationsZhHant _root; // ignore: unused_field

	// Translations
	@override String get label => '高級';
	@override String get planCreationLimit => '無限制';
	@override String get chatLimit => '無限制';
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
			case 'accountPage.title': return '帳戶';
			case 'accountPage.items.signOut': return '登出';
			case 'accountPage.items.linkedWithGoogle': return '與Google連結';
			case 'accountPage.items.linkedWithApple': return '與Apple連結';
			case 'accountPage.items.alreadyLinkedGoogle': return '已與Google連結';
			case 'accountPage.items.alreadyLinkedApple': return '已與Apple連結';
			case 'accountPage.snackBar.signOut': return '已成功登出。';
			case 'accountPage.snackBar.signOutFailure': return '登出時發生錯誤。';
			case 'accountPage.snackBar.successfulLinkage': return '帳戶連結成功。';
			case 'accountPage.snackBar.linkageFailure': return '帳戶連結失敗。';
			case 'accountPage.snackBar.providerAlreadyLinked': return '此帳戶已經連結。';
			case 'accountPage.snackBar.accountDeactivation': return '已解除帳戶連結。';
			case 'accountPage.snackBar.invalidCredential': return '請重新登入。';
			case 'accountPage.snackBar.linkageCancelled': return '帳戶連結已取消。';
			case 'accountPage.snackBar.unlinkageFailure': return '解除帳戶連結失敗。';
			case 'accountPage.snackBar.operationNotAllowed': return '提供者無效。請聯絡開發者。';
			case 'accountPage.snackBar.unknownError': return '發生未知錯誤。';
			case 'accountPage.diaLog.yes': return '是';
			case 'accountPage.diaLog.no': return '否';
			case 'accountPage.diaLog.title': return '確認解除帳戶連結';
			case 'accountPage.diaLog.googleText': return '是否要解除目前帳戶與Google帳戶的連結？';
			case 'accountPage.diaLog.appleText': return '是否要解除目前帳戶與Apple帳戶的連結？';
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
			case 'authentication.registerProfilePage.snackBar.error.submitIfAllEmpty': return '請輸入信息';
			case 'authentication.registerProfilePage.snackBar.error.unexpected': return '發生錯誤，請稍後再試。';
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
			case 'validation.usernameRequired': return '請輸入您的使用者名稱';
			case 'validation.usernameMaxLength': return '使用者名稱必須為8個字符或更少';
			case 'myPage.unregisteredUserName': return '未註冊';
			case 'myPage.editProfile': return '編輯個人資料';
			case 'myPage.premiumPlan': return '進階方案';
			case 'myPage.details': return '詳細';
			case 'myPage.settings': return '設定';
			case 'myPage.account': return '帳戶';
			case 'myPage.language': return '語言';
			case 'myPage.theme': return '主題';
			case 'myPage.termsOfUsePrivacyPolicy': return '使用條款和隱私政策';
			case 'myPage.aboutThisApp': return '關於本應用';
			case 'myPage.aboutTheDeveloper': return '關於開發者';
			case 'myPage.accountStatus.dateTime.registeredOn': return ({required Object date}) => '${date}註冊於';
			case 'myPage.accountStatus.dateTime.registeredOnFormat': return 'yyyy年MM月dd日';
			case 'myPage.accountStatus.dateTime.validUntil': return ({required Object date}) => '有效期至${date}';
			case 'myPage.accountStatus.dateTime.validUntilFormat': return 'yyyy年MM月dd日 HH:mm';
			case 'myPage.accountStatus.premium': return '進階會員';
			case 'myPage.accountStatus.standard': return '標準會員';
			case 'changeLanguagePage.title': return '語言';
			case 'changeLanguagePage.items.japanese': return '日语';
			case 'changeLanguagePage.items.english': return '英语';
			case 'changeLanguagePage.items.simplifiedChinese': return '中文(简体字)';
			case 'changeLanguagePage.items.traditionalChinese': return '中文(繁体字)';
			case 'changeThemePage.title': return '主题';
			case 'changeThemePage.items.system': return '系统';
			case 'changeThemePage.items.light': return '光';
			case 'changeThemePage.items.dark': return '黑暗';
			case 'myPlanPage.title': return '我的方案';
			case 'myPlanPage.tabs.createdPlans': return '已建立方案';
			case 'myPlanPage.tabs.bookmark': return '書籤';
			case 'myPlanPage.bookmarkItems.nondata': return '暫無收藏方案。';
			case 'myPlanPage.bookmarkItems.reloading': return '重新載入';
			case 'myPlanPage.createdPlansItems.nondata': return '開始建立方案吧！';
			case 'myPlanPage.createdPlansItems.createaplan': return '建立方案';
			case 'myPlanPage.error.displayError': return '顯示方案時發生錯誤。';
			case 'myPlanPage.error.failedGetId': return '取得方案ID失敗。';
			case 'myPlanPage.error.failedGetPlanData': return '取得方案資料時發生錯誤。';
			case 'myPlanPage.error.failedUnBookmark': return '取消收藏時發生錯誤。';
			case 'buddyChatPage.title': return 'Buddy的建議';
			case 'buddyChatPage.possibleChatCount': return ({required Object possibleChatCount}) => '訊息還可以發送${possibleChatCount}次';
			case 'buddyChatPage.textFields.message': return '輸入訊息';
			case 'buddyChatPage.buttons.send': return '完成';
			case 'buddyChatPage.placeCard.openingHours': return '營業時間';
			case 'buddyChatPage.placeCard.averageAmount': return '平均預算';
			case 'buddyChatPage.placeCard.website': return '網站';
			case 'buddyChatPage.snackBar.error.failedRecieveMessage': return '無法接收回覆，請稍後再試';
			case 'buddyChatPage.snackBar.error.failedCompleteCreatePlan': return '無法完成建立計劃，請稍後再試';
			case 'popularTopics.sectionName': return '熱門話題';
			case 'createPlanPage.title': return '建立計劃';
			case 'createPlanPage.label.location': return '目的地';
			case 'createPlanPage.label.scheduleStart': return '開始日期';
			case 'createPlanPage.label.scheduleEnd': return '結束日期';
			case 'createPlanPage.label.numberOfPeople': return '人數';
			case 'createPlanPage.label.transport': return '交通方式';
			case 'createPlanPage.label.category': return '類別';
			case 'createPlanPage.label.topics': return '旅行主題';
			case 'createPlanPage.hintText.location': return '澀谷';
			case 'createPlanPage.modal.title': return '選擇日期';
			case 'createPlanPage.numberOfPeopleOptions.0': return '1人';
			case 'createPlanPage.numberOfPeopleOptions.1': return '2人';
			case 'createPlanPage.numberOfPeopleOptions.2': return '3人';
			case 'createPlanPage.numberOfPeopleOptions.3': return '4人';
			case 'createPlanPage.numberOfPeopleOptions.4': return '5人';
			case 'createPlanPage.numberOfPeopleOptions.5': return '6人以上';
			case 'createPlanPage.transportOptions.0': return '火車';
			case 'createPlanPage.transportOptions.1': return '步行';
			case 'createPlanPage.transportOptions.2': return '汽車';
			case 'createPlanPage.transportOptions.3': return '巴士';
			case 'createPlanPage.categoryOptions.0': return '親子';
			case 'createPlanPage.categoryOptions.1': return '成人';
			case 'createPlanPage.categoryOptions.2': return '娛樂';
			case 'createPlanPage.categoryOptions.3': return '活動';
			case 'createPlanPage.categoryOptions.4': return '歷史';
			case 'createPlanPage.defaultTopics.0': return '美食';
			case 'createPlanPage.defaultTopics.1': return '購物';
			case 'createPlanPage.defaultTopics.2': return '活動';
			case 'createPlanPage.defaultTopics.3': return '電影';
			case 'createPlanPage.submitButton': return '提交計劃給AI';
			case 'createPlanPage.snackBar.error.foundUnSelectedField': return '存在未選擇的項目，請選擇所有項目';
			case 'editProfilePage.title': return '編輯個人資料';
			case 'editProfilePage.textFields.name': return '姓名';
			case 'editProfilePage.buttons.submit': return '儲存';
			case 'editProfilePage.snackBar.success': return '更新成功';
			case 'editProfilePage.snackBar.error.noChange': return '沒有變更';
			case 'editProfilePage.snackBar.error.failedToUpdate': return '更新失敗，請稍後再試';
			case 'editProfilePage.snackBar.error.failedToPickImage': return '選擇圖片失敗，請稍後再試';
			case 'confirmDialog.answers.yes': return '是';
			case 'confirmDialog.answers.no': return '否';
			case 'confirmDialog.popPage.title': return '要返回上一頁嗎？';
			case 'confirmDialog.popPage.description': return '當前內容不會被保存';
			case 'confirmDialog.completeCreatePlan.title': return '確定要保存計劃嗎？';
			case 'confirmDialog.completeCreatePlan.description': return '最後一條訊息中的計劃將被保存';
			case 'prompt.planProposalMessage': return '我考慮了這個計劃！您覺得怎麼樣？';
			case 'billDetailsPage.title': return '高級方案';
			case 'billDetailsPage.description': return '訂閱高級方案後，您可以更舒適地享受澀谷觀光。';
			case 'billDetailsPage.pricingPlan.title': return '價格方案';
			case 'billDetailsPage.pricingPlan.columns.standard': return '標準';
			case 'billDetailsPage.pricingPlan.columns.premium': return '高級';
			case 'billDetailsPage.pricingPlan.details.free': return '免費 🎉';
			case 'billDetailsPage.pricingPlan.details.premiumPrice.days': return '按天數購買';
			case 'billDetailsPage.pricingPlan.details.premiumPrice.daily': return '・1日 300日圓';
			case 'billDetailsPage.pricingPlan.details.premiumPrice.threeDays': return '・3日 855日圓';
			case 'billDetailsPage.pricingPlan.details.premiumPrice.fiveDays': return '・5日 1,480日圓';
			case 'billDetailsPage.pricingPlan.details.premiumPrice.sevenDays': return '・7日 2,070日圓';
			case 'billDetailsPage.pricingPlan.details.premiumPrice.or': return '或者';
			case 'billDetailsPage.pricingPlan.details.premiumPrice.lifetime': return '終身';
			case 'billDetailsPage.pricingPlan.details.premiumPrice.lifetimePrice': return '25,800日圓';
			case 'billDetailsPage.features.title': return '等級功能';
			case 'billDetailsPage.features.rows.planCreationLimit': return '可創建的方案次數';
			case 'billDetailsPage.features.rows.chatLimit': return '方案創建期間可用聊天次數';
			case 'billDetailsPage.features.rows.timelineAccess': return '訪問所有方案時間表';
			case 'billDetailsPage.features.rows.adFree': return '無廣告';
			case 'billDetailsPage.features.rows.exclusiveFeatures': return '方案認證功能';
			case 'billDetailsPage.features.columns.standard.label': return '標準';
			case 'billDetailsPage.features.columns.standard.planCreationLimit': return '2次';
			case 'billDetailsPage.features.columns.standard.chatLimit': return '3次';
			case 'billDetailsPage.features.columns.premium.label': return '高級';
			case 'billDetailsPage.features.columns.premium.planCreationLimit': return '無限制';
			case 'billDetailsPage.features.columns.premium.chatLimit': return '無限制';
			case 'billDetailsPage.pricingOptions.oneDay.duration': return '1日';
			case 'billDetailsPage.pricingOptions.oneDay.discount': return '';
			case 'billDetailsPage.pricingOptions.oneDay.price': return '300日圓';
			case 'billDetailsPage.pricingOptions.threeDays.duration': return '3日';
			case 'billDetailsPage.pricingOptions.threeDays.discount': return '-5%';
			case 'billDetailsPage.pricingOptions.threeDays.price': return '890日圓';
			case 'billDetailsPage.pricingOptions.fiveDays.duration': return '5日';
			case 'billDetailsPage.pricingOptions.fiveDays.discount': return '-7.5%';
			case 'billDetailsPage.pricingOptions.fiveDays.price': return '1,387日圓';
			case 'billDetailsPage.pricingOptions.sevenDays.duration': return '7日';
			case 'billDetailsPage.pricingOptions.sevenDays.discount': return '-10%';
			case 'billDetailsPage.pricingOptions.sevenDays.price': return '2,070日圓';
			case 'billDetailsPage.pricingOptions.lifetime.duration': return '終身';
			case 'billDetailsPage.pricingOptions.lifetime.discount': return '';
			case 'billDetailsPage.pricingOptions.lifetime.price': return '25,800日圓';
			case 'billDetailsPage.upgradeButton': return '升級到高級方案';
			case 'planDetailsPage.dateTime.createOn': return ({required Object date}) => '${date}建立的方案';
			case 'planDetailsPage.dateTime.dateFormat': return 'yyyy年MM月dd日';
			case 'planDetailsPage.item.viewOnMap': return '在地圖上查看';
			case 'planDetailsPage.snackBar.error.failedToUpdateBookmark': return '更新書籤失敗，請稍後再試';
			case 'locales.en': return '英語';
			case 'locales.ja': return '日語';
			case 'locales.zh': return '中文';
			case 'errorPage.title': return '發生錯誤...';
			case 'errorPage.message': return '請檢查您的網絡連接並重試。';
			case 'errorPage.retryButton': return '重試';
			case 'mapPage.title': return '地圖';
			default: return null;
		}
	}
}

