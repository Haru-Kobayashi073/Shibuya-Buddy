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
	@override late final _TranslationsNavigationBarZhHans navigationBar = _TranslationsNavigationBarZhHans._(_root);
	@override late final _TranslationsHomePageZhHans homePage = _TranslationsHomePageZhHans._(_root);
	@override late final _TranslationsAccountPageZhHans accountPage = _TranslationsAccountPageZhHans._(_root);
	@override late final _TranslationsAuthenticationZhHans authentication = _TranslationsAuthenticationZhHans._(_root);
	@override late final _TranslationsValidationZhHans validation = _TranslationsValidationZhHans._(_root);
	@override late final _TranslationsMyPageZhHans myPage = _TranslationsMyPageZhHans._(_root);
	@override late final _TranslationsChangeLanguagePageZhHans changeLanguagePage = _TranslationsChangeLanguagePageZhHans._(_root);
	@override late final _TranslationsChangeThemePageZhHans changeThemePage = _TranslationsChangeThemePageZhHans._(_root);
	@override late final _TranslationsMyPlanPageZhHans myPlanPage = _TranslationsMyPlanPageZhHans._(_root);
	@override late final _TranslationsBuddyChatPageZhHans buddyChatPage = _TranslationsBuddyChatPageZhHans._(_root);
	@override late final _TranslationsPopularTopicsZhHans popularTopics = _TranslationsPopularTopicsZhHans._(_root);
	@override late final _TranslationsCreatePlanPageZhHans createPlanPage = _TranslationsCreatePlanPageZhHans._(_root);
	@override late final _TranslationsEditProfilePageZhHans editProfilePage = _TranslationsEditProfilePageZhHans._(_root);
	@override late final _TranslationsConfirmDialogZhHans confirmDialog = _TranslationsConfirmDialogZhHans._(_root);
	@override late final _TranslationsPromptZhHans prompt = _TranslationsPromptZhHans._(_root);
	@override late final _TranslationsBillDetailsPageZhHans billDetailsPage = _TranslationsBillDetailsPageZhHans._(_root);
	@override late final _TranslationsPlanDetailsPageZhHans planDetailsPage = _TranslationsPlanDetailsPageZhHans._(_root);
	@override late final _TranslationsCreateLoadingPageZhHans createLoadingPage = _TranslationsCreateLoadingPageZhHans._(_root);
	@override Map<String, String> get locales => {
		'en': '英语',
		'ja': '日语',
		'zh': '中文',
		'ko': '韩语',
	};
	@override late final _TranslationsErrorPageZhHans errorPage = _TranslationsErrorPageZhHans._(_root);
	@override late final _TranslationsMapPageZhHans mapPage = _TranslationsMapPageZhHans._(_root);
}

// Path: navigationBar
class _TranslationsNavigationBarZhHans implements TranslationsNavigationBarEn {
	_TranslationsNavigationBarZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNavigationBarItemsZhHans items = _TranslationsNavigationBarItemsZhHans._(_root);
}

// Path: homePage
class _TranslationsHomePageZhHans implements TranslationsHomePageEn {
	_TranslationsHomePageZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomePagePopularPlansZhHans popularPlans = _TranslationsHomePagePopularPlansZhHans._(_root);
	@override late final _TranslationsHomePagePopularTopicsZhHans popularTopics = _TranslationsHomePagePopularTopicsZhHans._(_root);
	@override late final _TranslationsHomePageRecentPlansZhHans recentPlans = _TranslationsHomePageRecentPlansZhHans._(_root);
}

// Path: accountPage
class _TranslationsAccountPageZhHans implements TranslationsAccountPageEn {
	_TranslationsAccountPageZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get title => '账户';
	@override late final _TranslationsAccountPageItemsZhHans items = _TranslationsAccountPageItemsZhHans._(_root);
	@override late final _TranslationsAccountPageSnackBarZhHans snackBar = _TranslationsAccountPageSnackBarZhHans._(_root);
	@override late final _TranslationsAccountPageDiaLogZhHans diaLog = _TranslationsAccountPageDiaLogZhHans._(_root);
}

// Path: authentication
class _TranslationsAuthenticationZhHans implements TranslationsAuthenticationEn {
	_TranslationsAuthenticationZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsAuthenticationAuthenticationPageZhHans authenticationPage = _TranslationsAuthenticationAuthenticationPageZhHans._(_root);
	@override late final _TranslationsAuthenticationFirebaseAuthZhHans firebaseAuth = _TranslationsAuthenticationFirebaseAuthZhHans._(_root);
	@override late final _TranslationsAuthenticationResetPasswordPageZhHans resetPasswordPage = _TranslationsAuthenticationResetPasswordPageZhHans._(_root);
	@override late final _TranslationsAuthenticationEmailVerificationPageZhHans emailVerificationPage = _TranslationsAuthenticationEmailVerificationPageZhHans._(_root);
	@override late final _TranslationsAuthenticationRegisterProfilePageZhHans registerProfilePage = _TranslationsAuthenticationRegisterProfilePageZhHans._(_root);
	@override late final _TranslationsAuthenticationCompleteSendEmailPageZhHans completeSendEmailPage = _TranslationsAuthenticationCompleteSendEmailPageZhHans._(_root);
	@override late final _TranslationsAuthenticationPhoneNumberInputPageZhHans phoneNumberInputPage = _TranslationsAuthenticationPhoneNumberInputPageZhHans._(_root);
	@override late final _TranslationsAuthenticationSmsVerificationPageZhHans smsVerificationPage = _TranslationsAuthenticationSmsVerificationPageZhHans._(_root);
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
	@override String get usernameRequired => '请输入您的用户名';
	@override String get usernameMaxLength => '用户名必须为8个字符或更少';
}

// Path: myPage
class _TranslationsMyPageZhHans implements TranslationsMyPageEn {
	_TranslationsMyPageZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get unregisteredUserName => '未注册';
	@override String get editProfile => '编辑个人资料';
	@override String get premiumPlan => '高级计划';
	@override String get details => '详细';
	@override String get settings => '设置';
	@override String get account => '账户';
	@override String get language => '语言';
	@override String get theme => '主题';
	@override String get termsOfUsePrivacyPolicy => '使用条款和隐私政策';
	@override String get aboutThisApp => '关于本应用';
	@override String get aboutTheDeveloper => '关于开发者';
	@override late final _TranslationsMyPageAccountStatusZhHans accountStatus = _TranslationsMyPageAccountStatusZhHans._(_root);
}

// Path: changeLanguagePage
class _TranslationsChangeLanguagePageZhHans implements TranslationsChangeLanguagePageEn {
	_TranslationsChangeLanguagePageZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get title => '语言';
	@override late final _TranslationsChangeLanguagePageItemsZhHans items = _TranslationsChangeLanguagePageItemsZhHans._(_root);
}

// Path: changeThemePage
class _TranslationsChangeThemePageZhHans implements TranslationsChangeThemePageEn {
	_TranslationsChangeThemePageZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get title => '主题';
	@override late final _TranslationsChangeThemePageItemsZhHans items = _TranslationsChangeThemePageItemsZhHans._(_root);
}

// Path: myPlanPage
class _TranslationsMyPlanPageZhHans implements TranslationsMyPlanPageEn {
	_TranslationsMyPlanPageZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get title => '我的计划';
	@override late final _TranslationsMyPlanPageTabsZhHans tabs = _TranslationsMyPlanPageTabsZhHans._(_root);
	@override late final _TranslationsMyPlanPageBookmarkItemsZhHans bookmarkItems = _TranslationsMyPlanPageBookmarkItemsZhHans._(_root);
	@override late final _TranslationsMyPlanPageCreatedPlansItemsZhHans createdPlansItems = _TranslationsMyPlanPageCreatedPlansItemsZhHans._(_root);
	@override late final _TranslationsMyPlanPageErrorZhHans error = _TranslationsMyPlanPageErrorZhHans._(_root);
}

// Path: buddyChatPage
class _TranslationsBuddyChatPageZhHans implements TranslationsBuddyChatPageEn {
	_TranslationsBuddyChatPageZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get title => 'Buddy的建议';
	@override String possibleChatCount({required Object possibleChatCount}) => '消息还可以发送${possibleChatCount}次';
	@override late final _TranslationsBuddyChatPageTextFieldsZhHans textFields = _TranslationsBuddyChatPageTextFieldsZhHans._(_root);
	@override late final _TranslationsBuddyChatPageButtonsZhHans buttons = _TranslationsBuddyChatPageButtonsZhHans._(_root);
	@override late final _TranslationsBuddyChatPagePlaceCardZhHans placeCard = _TranslationsBuddyChatPagePlaceCardZhHans._(_root);
	@override late final _TranslationsBuddyChatPageSnackBarZhHans snackBar = _TranslationsBuddyChatPageSnackBarZhHans._(_root);
}

// Path: popularTopics
class _TranslationsPopularTopicsZhHans implements TranslationsPopularTopicsEn {
	_TranslationsPopularTopicsZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get sectionName => '热门话题';
}

// Path: createPlanPage
class _TranslationsCreatePlanPageZhHans implements TranslationsCreatePlanPageEn {
	_TranslationsCreatePlanPageZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get title => '创建计划';
	@override late final _TranslationsCreatePlanPageLabelZhHans label = _TranslationsCreatePlanPageLabelZhHans._(_root);
	@override late final _TranslationsCreatePlanPageHintTextZhHans hintText = _TranslationsCreatePlanPageHintTextZhHans._(_root);
	@override late final _TranslationsCreatePlanPageModalZhHans modal = _TranslationsCreatePlanPageModalZhHans._(_root);
	@override late final _TranslationsCreatePlanPageNumberOfPeopleOptionsZhHans numberOfPeopleOptions = _TranslationsCreatePlanPageNumberOfPeopleOptionsZhHans._(_root);
	@override List<String> get transportOptions => [
		'火车',
		'步行',
		'汽车',
		'巴士',
	];
	@override List<String> get defaultTopics => [
		'美食',
		'购物',
		'活动',
		'电影',
	];
	@override String get submitButton => '提交计划给AI';
	@override late final _TranslationsCreatePlanPageSnackBarZhHans snackBar = _TranslationsCreatePlanPageSnackBarZhHans._(_root);
}

// Path: editProfilePage
class _TranslationsEditProfilePageZhHans implements TranslationsEditProfilePageEn {
	_TranslationsEditProfilePageZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get title => '编辑个人资料';
	@override late final _TranslationsEditProfilePageTextFieldsZhHans textFields = _TranslationsEditProfilePageTextFieldsZhHans._(_root);
	@override late final _TranslationsEditProfilePageButtonsZhHans buttons = _TranslationsEditProfilePageButtonsZhHans._(_root);
	@override late final _TranslationsEditProfilePageSnackBarZhHans snackBar = _TranslationsEditProfilePageSnackBarZhHans._(_root);
}

// Path: confirmDialog
class _TranslationsConfirmDialogZhHans implements TranslationsConfirmDialogEn {
	_TranslationsConfirmDialogZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsConfirmDialogAnswersZhHans answers = _TranslationsConfirmDialogAnswersZhHans._(_root);
	@override late final _TranslationsConfirmDialogPopPageZhHans popPage = _TranslationsConfirmDialogPopPageZhHans._(_root);
	@override late final _TranslationsConfirmDialogCompleteCreatePlanZhHans completeCreatePlan = _TranslationsConfirmDialogCompleteCreatePlanZhHans._(_root);
}

// Path: prompt
class _TranslationsPromptZhHans implements TranslationsPromptEn {
	_TranslationsPromptZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get planProposalMessage => '我考虑了这个计划！您觉得怎么样？';
}

// Path: billDetailsPage
class _TranslationsBillDetailsPageZhHans implements TranslationsBillDetailsPageEn {
	_TranslationsBillDetailsPageZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsBillDetailsPageTitleZhHans title = _TranslationsBillDetailsPageTitleZhHans._(_root);
	@override String get description => '订阅高级计划后，您可以更舒适地享受涩谷观光。';
	@override late final _TranslationsBillDetailsPagePricingPlanZhHans pricingPlan = _TranslationsBillDetailsPagePricingPlanZhHans._(_root);
	@override late final _TranslationsBillDetailsPageFeaturesZhHans features = _TranslationsBillDetailsPageFeaturesZhHans._(_root);
	@override late final _TranslationsBillDetailsPagePricingOptionsZhHans pricingOptions = _TranslationsBillDetailsPagePricingOptionsZhHans._(_root);
	@override late final _TranslationsBillDetailsPageRestorePurchaseSectionZhHans restorePurchaseSection = _TranslationsBillDetailsPageRestorePurchaseSectionZhHans._(_root);
	@override String get upgradeButton => '升级到高级计划';
	@override late final _TranslationsBillDetailsPageSnackBarZhHans snackBar = _TranslationsBillDetailsPageSnackBarZhHans._(_root);
}

// Path: planDetailsPage
class _TranslationsPlanDetailsPageZhHans implements TranslationsPlanDetailsPageEn {
	_TranslationsPlanDetailsPageZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPlanDetailsPageDateTimeZhHans dateTime = _TranslationsPlanDetailsPageDateTimeZhHans._(_root);
	@override late final _TranslationsPlanDetailsPageItemZhHans item = _TranslationsPlanDetailsPageItemZhHans._(_root);
	@override String get haveUsedPlan => '您已使用此计划';
	@override late final _TranslationsPlanDetailsPageDialogZhHans dialog = _TranslationsPlanDetailsPageDialogZhHans._(_root);
	@override late final _TranslationsPlanDetailsPageSnackBarZhHans snackBar = _TranslationsPlanDetailsPageSnackBarZhHans._(_root);
}

// Path: createLoadingPage
class _TranslationsCreateLoadingPageZhHans implements TranslationsCreateLoadingPageEn {
	_TranslationsCreateLoadingPageZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsCreateLoadingPageItemsZhHans items = _TranslationsCreateLoadingPageItemsZhHans._(_root);
}

// Path: errorPage
class _TranslationsErrorPageZhHans implements TranslationsErrorPageEn {
	_TranslationsErrorPageZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get title => '发生错误...';
	@override String get message => '请检查您的网络连接并重试。';
	@override String get retryButton => '重试';
}

// Path: mapPage
class _TranslationsMapPageZhHans implements TranslationsMapPageEn {
	_TranslationsMapPageZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get title => '地图';
}

// Path: navigationBar.items
class _TranslationsNavigationBarItemsZhHans implements TranslationsNavigationBarItemsEn {
	_TranslationsNavigationBarItemsZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get home => '首页';
	@override String get myPlan => '我的计划';
	@override String get myPage => '个人中心';
}

// Path: homePage.popularPlans
class _TranslationsHomePagePopularPlansZhHans implements TranslationsHomePagePopularPlansEn {
	_TranslationsHomePagePopularPlansZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get title => '热门计划';
}

// Path: homePage.popularTopics
class _TranslationsHomePagePopularTopicsZhHans implements TranslationsHomePagePopularTopicsEn {
	_TranslationsHomePagePopularTopicsZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get title => '热门话题';
	@override String numberOfTopics({required Object number}) => '${number}件~';
}

// Path: homePage.recentPlans
class _TranslationsHomePageRecentPlansZhHans implements TranslationsHomePageRecentPlansEn {
	_TranslationsHomePageRecentPlansZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get title => '最近创建的计划';
}

// Path: accountPage.items
class _TranslationsAccountPageItemsZhHans implements TranslationsAccountPageItemsEn {
	_TranslationsAccountPageItemsZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get signOut => '退出登录';
	@override String get linkedWithGoogle => '关联Google账号';
	@override String get linkedWithApple => '关联Apple账号';
	@override String get alreadyLinkedGoogle => '已与Google连接';
	@override String get alreadyLinkedApple => '已与Apple连接';
	@override String get deleteAccount => '删除账户';
}

// Path: accountPage.snackBar
class _TranslationsAccountPageSnackBarZhHans implements TranslationsAccountPageSnackBarEn {
	_TranslationsAccountPageSnackBarZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get signOut => '已成功退出登录。';
	@override String get signOutFailure => '退出登录时发生错误。';
	@override String get successfulLinkage => '账户关联成功。';
	@override String get linkageFailure => '账户关联失败。';
	@override String get providerAlreadyLinked => '此账户已经关联。';
	@override String get accountDeactivation => '已解除账户关联。';
	@override String get invalidCredential => '请重新登录。';
	@override String get linkageCancelled => '账户关联已取消。';
	@override String get unlinkageFailure => '解除账户关联失败。';
	@override String get operationNotAllowed => '提供者无效。请联系开发者。';
	@override String get unknownError => '发生未知错误。';
	@override String get deleteAccount => '账户已删除。';
	@override String get deleteAccountFailure => '删除账户失败。';
}

// Path: accountPage.diaLog
class _TranslationsAccountPageDiaLogZhHans implements TranslationsAccountPageDiaLogEn {
	_TranslationsAccountPageDiaLogZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get yes => '是';
	@override String get no => '否';
	@override String get title => '确认解除账户连接';
	@override String get googleText => '是否要解除当前账户与Google账户的连接？';
	@override String get appleText => '是否要解除当前账户与Apple账户的连接？';
	@override String get signOut => '您要退出登录吗？';
	@override String get signOutText => '使用应用功能需要重新登录。';
	@override String get deleteAccount => '您要删除账户吗？';
	@override String get deleteAccountText => '删除账户后，所有数据将被删除。';
}

// Path: authentication.authenticationPage
class _TranslationsAuthenticationAuthenticationPageZhHans implements TranslationsAuthenticationAuthenticationPageEn {
	_TranslationsAuthenticationAuthenticationPageZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get title => '登录 / 注册';
	@override String get optionText => ' 或 ';
	@override late final _TranslationsAuthenticationAuthenticationPageTextFieldsZhHans textFields = _TranslationsAuthenticationAuthenticationPageTextFieldsZhHans._(_root);
	@override late final _TranslationsAuthenticationAuthenticationPageButtonsZhHans buttons = _TranslationsAuthenticationAuthenticationPageButtonsZhHans._(_root);
	@override late final _TranslationsAuthenticationAuthenticationPageChangeLanguageDialogZhHans changeLanguageDialog = _TranslationsAuthenticationAuthenticationPageChangeLanguageDialogZhHans._(_root);
}

// Path: authentication.firebaseAuth
class _TranslationsAuthenticationFirebaseAuthZhHans implements TranslationsAuthenticationFirebaseAuthEn {
	_TranslationsAuthenticationFirebaseAuthZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsAuthenticationFirebaseAuthErrorZhHans error = _TranslationsAuthenticationFirebaseAuthErrorZhHans._(_root);
}

// Path: authentication.resetPasswordPage
class _TranslationsAuthenticationResetPasswordPageZhHans implements TranslationsAuthenticationResetPasswordPageEn {
	_TranslationsAuthenticationResetPasswordPageZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get title => '重置密码';
	@override String get description => '将向输入的电子邮件地址发送密码重置邮件';
	@override late final _TranslationsAuthenticationResetPasswordPageTextFieldsZhHans textFields = _TranslationsAuthenticationResetPasswordPageTextFieldsZhHans._(_root);
	@override late final _TranslationsAuthenticationResetPasswordPageButtonsZhHans buttons = _TranslationsAuthenticationResetPasswordPageButtonsZhHans._(_root);
}

// Path: authentication.emailVerificationPage
class _TranslationsAuthenticationEmailVerificationPageZhHans implements TranslationsAuthenticationEmailVerificationPageEn {
	_TranslationsAuthenticationEmailVerificationPageZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get title => '邮箱地址验证';
	@override String descriptionForDestination({required Object email}) => '已向输入的${email}发送了验证邮件';
	@override String get descriptionForCoolDown => '确认邮件每60秒只能重新发送一次。';
	@override late final _TranslationsAuthenticationEmailVerificationPageButtonsZhHans buttons = _TranslationsAuthenticationEmailVerificationPageButtonsZhHans._(_root);
	@override late final _TranslationsAuthenticationEmailVerificationPageSnackBarZhHans snackBar = _TranslationsAuthenticationEmailVerificationPageSnackBarZhHans._(_root);
}

// Path: authentication.registerProfilePage
class _TranslationsAuthenticationRegisterProfilePageZhHans implements TranslationsAuthenticationRegisterProfilePageEn {
	_TranslationsAuthenticationRegisterProfilePageZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get title => '注册个人信息';
	@override String get textFields => '姓名';
	@override late final _TranslationsAuthenticationRegisterProfilePageButtonsZhHans buttons = _TranslationsAuthenticationRegisterProfilePageButtonsZhHans._(_root);
	@override late final _TranslationsAuthenticationRegisterProfilePageSnackBarZhHans snackBar = _TranslationsAuthenticationRegisterProfilePageSnackBarZhHans._(_root);
}

// Path: authentication.completeSendEmailPage
class _TranslationsAuthenticationCompleteSendEmailPageZhHans implements TranslationsAuthenticationCompleteSendEmailPageEn {
	_TranslationsAuthenticationCompleteSendEmailPageZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get title => '发送完成';
	@override String description({required Object email}) => '密码重置邮件已发送到${email} \n 重置后请从登录页面登录';
	@override String get successResendEmail => '确认邮件已重新发送';
	@override late final _TranslationsAuthenticationCompleteSendEmailPageButtonsZhHans buttons = _TranslationsAuthenticationCompleteSendEmailPageButtonsZhHans._(_root);
}

// Path: authentication.phoneNumberInputPage
class _TranslationsAuthenticationPhoneNumberInputPageZhHans implements TranslationsAuthenticationPhoneNumberInputPageEn {
	_TranslationsAuthenticationPhoneNumberInputPageZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get title => '输入电话号码';
	@override late final _TranslationsAuthenticationPhoneNumberInputPageDiscriptionZhHans discription = _TranslationsAuthenticationPhoneNumberInputPageDiscriptionZhHans._(_root);
	@override String get phoneNumber => '电话号码';
	@override String get sendSmsCode => '发送 SMS 验证码';
	@override late final _TranslationsAuthenticationPhoneNumberInputPageScaffoldMessengerZhHans scaffoldMessenger = _TranslationsAuthenticationPhoneNumberInputPageScaffoldMessengerZhHans._(_root);
}

// Path: authentication.smsVerificationPage
class _TranslationsAuthenticationSmsVerificationPageZhHans implements TranslationsAuthenticationSmsVerificationPageEn {
	_TranslationsAuthenticationSmsVerificationPageZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get title => 'SMS 验证';
	@override String get sendSms => 'SMS 验证码已发送至以下电话号码：';
	@override String get pleaseInputCode => '请输入验证码以完成电话号码验证。';
	@override late final _TranslationsAuthenticationSmsVerificationPageResendZhHans resend = _TranslationsAuthenticationSmsVerificationPageResendZhHans._(_root);
	@override String get smsCode => 'SMS 验证码';
	@override String get verify => '验证';
	@override String get fixPhoneNumber => '修改电话号码';
	@override late final _TranslationsAuthenticationSmsVerificationPageScaffoldMessengerZhHans scaffoldMessenger = _TranslationsAuthenticationSmsVerificationPageScaffoldMessengerZhHans._(_root);
}

// Path: myPage.accountStatus
class _TranslationsMyPageAccountStatusZhHans implements TranslationsMyPageAccountStatusEn {
	_TranslationsMyPageAccountStatusZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMyPageAccountStatusDateTimeZhHans dateTime = _TranslationsMyPageAccountStatusDateTimeZhHans._(_root);
	@override String get premium => '高级会员';
	@override String get standard => '标准会员';
}

// Path: changeLanguagePage.items
class _TranslationsChangeLanguagePageItemsZhHans implements TranslationsChangeLanguagePageItemsEn {
	_TranslationsChangeLanguagePageItemsZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get japanese => '日本語';
	@override String get english => 'English';
	@override String get simplifiedChinese => '中文（简体）';
	@override String get traditionalChinese => '中文(繁体字)';
	@override String get korean => '한국어';
}

// Path: changeThemePage.items
class _TranslationsChangeThemePageItemsZhHans implements TranslationsChangeThemePageItemsEn {
	_TranslationsChangeThemePageItemsZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get system => '系统';
	@override String get light => '光';
	@override String get dark => '暗处';
}

// Path: myPlanPage.tabs
class _TranslationsMyPlanPageTabsZhHans implements TranslationsMyPlanPageTabsEn {
	_TranslationsMyPlanPageTabsZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get createdPlans => '已创建计划';
	@override String get bookmark => '收藏';
}

// Path: myPlanPage.bookmarkItems
class _TranslationsMyPlanPageBookmarkItemsZhHans implements TranslationsMyPlanPageBookmarkItemsEn {
	_TranslationsMyPlanPageBookmarkItemsZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get nondata => '暂无收藏计划。';
	@override String get reloading => '重新加载';
}

// Path: myPlanPage.createdPlansItems
class _TranslationsMyPlanPageCreatedPlansItemsZhHans implements TranslationsMyPlanPageCreatedPlansItemsEn {
	_TranslationsMyPlanPageCreatedPlansItemsZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get nondata => '开始创建计划吧！';
	@override String get createaplan => '创建计划';
}

// Path: myPlanPage.error
class _TranslationsMyPlanPageErrorZhHans implements TranslationsMyPlanPageErrorEn {
	_TranslationsMyPlanPageErrorZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get displayError => '显示计划时出现错误。';
	@override String get failedGetId => '获取计划ID失败。';
	@override String get failedGetPlanData => '获取计划数据时出现错误。';
	@override String get failedUnBookmark => '取消收藏时出现错误。';
}

// Path: buddyChatPage.textFields
class _TranslationsBuddyChatPageTextFieldsZhHans implements TranslationsBuddyChatPageTextFieldsEn {
	_TranslationsBuddyChatPageTextFieldsZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get message => '输入消息';
}

// Path: buddyChatPage.buttons
class _TranslationsBuddyChatPageButtonsZhHans implements TranslationsBuddyChatPageButtonsEn {
	_TranslationsBuddyChatPageButtonsZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get send => '完成';
}

// Path: buddyChatPage.placeCard
class _TranslationsBuddyChatPagePlaceCardZhHans implements TranslationsBuddyChatPagePlaceCardEn {
	_TranslationsBuddyChatPagePlaceCardZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get openingHours => '营业时间';
	@override String get averageAmount => '平均预算';
	@override String get website => '网站';
}

// Path: buddyChatPage.snackBar
class _TranslationsBuddyChatPageSnackBarZhHans implements TranslationsBuddyChatPageSnackBarEn {
	_TranslationsBuddyChatPageSnackBarZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsBuddyChatPageSnackBarErrorZhHans error = _TranslationsBuddyChatPageSnackBarErrorZhHans._(_root);
}

// Path: createPlanPage.label
class _TranslationsCreatePlanPageLabelZhHans implements TranslationsCreatePlanPageLabelEn {
	_TranslationsCreatePlanPageLabelZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get location => '目的地';
	@override String get scheduleTitle => '日程';
	@override String get scheduleStart => '开始日期';
	@override String get scheduleEnd => '结束日期';
	@override String get numberOfPeople => '人数';
	@override String get transport => '交通方式';
	@override String get category => '类别';
	@override String get topics => '旅行主题';
}

// Path: createPlanPage.hintText
class _TranslationsCreatePlanPageHintTextZhHans implements TranslationsCreatePlanPageHintTextEn {
	_TranslationsCreatePlanPageHintTextZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get location => '涩谷';
}

// Path: createPlanPage.modal
class _TranslationsCreatePlanPageModalZhHans implements TranslationsCreatePlanPageModalEn {
	_TranslationsCreatePlanPageModalZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get title => '选择日期';
}

// Path: createPlanPage.numberOfPeopleOptions
class _TranslationsCreatePlanPageNumberOfPeopleOptionsZhHans implements TranslationsCreatePlanPageNumberOfPeopleOptionsEn {
	_TranslationsCreatePlanPageNumberOfPeopleOptionsZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsCreatePlanPageNumberOfPeopleOptionsAdultZhHans adult = _TranslationsCreatePlanPageNumberOfPeopleOptionsAdultZhHans._(_root);
	@override late final _TranslationsCreatePlanPageNumberOfPeopleOptionsChildZhHans child = _TranslationsCreatePlanPageNumberOfPeopleOptionsChildZhHans._(_root);
}

// Path: createPlanPage.snackBar
class _TranslationsCreatePlanPageSnackBarZhHans implements TranslationsCreatePlanPageSnackBarEn {
	_TranslationsCreatePlanPageSnackBarZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsCreatePlanPageSnackBarErrorZhHans error = _TranslationsCreatePlanPageSnackBarErrorZhHans._(_root);
}

// Path: editProfilePage.textFields
class _TranslationsEditProfilePageTextFieldsZhHans implements TranslationsEditProfilePageTextFieldsEn {
	_TranslationsEditProfilePageTextFieldsZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get name => '姓名';
}

// Path: editProfilePage.buttons
class _TranslationsEditProfilePageButtonsZhHans implements TranslationsEditProfilePageButtonsEn {
	_TranslationsEditProfilePageButtonsZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get submit => '保存';
}

// Path: editProfilePage.snackBar
class _TranslationsEditProfilePageSnackBarZhHans implements TranslationsEditProfilePageSnackBarEn {
	_TranslationsEditProfilePageSnackBarZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get success => '更新成功';
	@override late final _TranslationsEditProfilePageSnackBarErrorZhHans error = _TranslationsEditProfilePageSnackBarErrorZhHans._(_root);
}

// Path: confirmDialog.answers
class _TranslationsConfirmDialogAnswersZhHans implements TranslationsConfirmDialogAnswersEn {
	_TranslationsConfirmDialogAnswersZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get yes => '是';
	@override String get no => '否';
}

// Path: confirmDialog.popPage
class _TranslationsConfirmDialogPopPageZhHans implements TranslationsConfirmDialogPopPageEn {
	_TranslationsConfirmDialogPopPageZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get title => '要返回上一页吗？';
	@override String get description => '当前内容不会被保存';
}

// Path: confirmDialog.completeCreatePlan
class _TranslationsConfirmDialogCompleteCreatePlanZhHans implements TranslationsConfirmDialogCompleteCreatePlanEn {
	_TranslationsConfirmDialogCompleteCreatePlanZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get title => '确定要保存计划吗？';
	@override String get description => '最后一条消息中的计划将被保存';
}

// Path: billDetailsPage.title
class _TranslationsBillDetailsPageTitleZhHans implements TranslationsBillDetailsPageTitleEn {
	_TranslationsBillDetailsPageTitleZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get defaultTitle => '高级计划';
	@override String get createPlan => '是否希望启用无限制的计划创建？';
	@override String get chat => '想享受无限制的聊天吗？';
}

// Path: billDetailsPage.pricingPlan
class _TranslationsBillDetailsPagePricingPlanZhHans implements TranslationsBillDetailsPagePricingPlanEn {
	_TranslationsBillDetailsPagePricingPlanZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get title => '价格计划';
	@override late final _TranslationsBillDetailsPagePricingPlanColumnsZhHans columns = _TranslationsBillDetailsPagePricingPlanColumnsZhHans._(_root);
	@override late final _TranslationsBillDetailsPagePricingPlanDetailsZhHans details = _TranslationsBillDetailsPagePricingPlanDetailsZhHans._(_root);
}

// Path: billDetailsPage.features
class _TranslationsBillDetailsPageFeaturesZhHans implements TranslationsBillDetailsPageFeaturesEn {
	_TranslationsBillDetailsPageFeaturesZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get title => '等级功能';
	@override late final _TranslationsBillDetailsPageFeaturesRowsZhHans rows = _TranslationsBillDetailsPageFeaturesRowsZhHans._(_root);
	@override late final _TranslationsBillDetailsPageFeaturesColumnsZhHans columns = _TranslationsBillDetailsPageFeaturesColumnsZhHans._(_root);
}

// Path: billDetailsPage.pricingOptions
class _TranslationsBillDetailsPagePricingOptionsZhHans implements TranslationsBillDetailsPagePricingOptionsEn {
	_TranslationsBillDetailsPagePricingOptionsZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsBillDetailsPagePricingOptionsOneDayZhHans oneDay = _TranslationsBillDetailsPagePricingOptionsOneDayZhHans._(_root);
	@override late final _TranslationsBillDetailsPagePricingOptionsThreeDaysZhHans threeDays = _TranslationsBillDetailsPagePricingOptionsThreeDaysZhHans._(_root);
	@override late final _TranslationsBillDetailsPagePricingOptionsFiveDaysZhHans fiveDays = _TranslationsBillDetailsPagePricingOptionsFiveDaysZhHans._(_root);
	@override late final _TranslationsBillDetailsPagePricingOptionsSevenDaysZhHans sevenDays = _TranslationsBillDetailsPagePricingOptionsSevenDaysZhHans._(_root);
	@override late final _TranslationsBillDetailsPagePricingOptionsUnlimitedZhHans unlimited = _TranslationsBillDetailsPagePricingOptionsUnlimitedZhHans._(_root);
}

// Path: billDetailsPage.restorePurchaseSection
class _TranslationsBillDetailsPageRestorePurchaseSectionZhHans implements TranslationsBillDetailsPageRestorePurchaseSectionEn {
	_TranslationsBillDetailsPageRestorePurchaseSectionZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get button => '恢复购买';
	@override String get textButton => '什么是购买恢复？';
}

// Path: billDetailsPage.snackBar
class _TranslationsBillDetailsPageSnackBarZhHans implements TranslationsBillDetailsPageSnackBarEn {
	_TranslationsBillDetailsPageSnackBarZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsBillDetailsPageSnackBarErrorZhHans error = _TranslationsBillDetailsPageSnackBarErrorZhHans._(_root);
}

// Path: planDetailsPage.dateTime
class _TranslationsPlanDetailsPageDateTimeZhHans implements TranslationsPlanDetailsPageDateTimeEn {
	_TranslationsPlanDetailsPageDateTimeZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String createOn({required Object date}) => '${date}创建的计划';
	@override String get dateFormat => 'yyyy年MM月dd日';
}

// Path: planDetailsPage.item
class _TranslationsPlanDetailsPageItemZhHans implements TranslationsPlanDetailsPageItemEn {
	_TranslationsPlanDetailsPageItemZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get viewOnMap => '在地图上查看';
}

// Path: planDetailsPage.dialog
class _TranslationsPlanDetailsPageDialogZhHans implements TranslationsPlanDetailsPageDialogEn {
	_TranslationsPlanDetailsPageDialogZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get title => 'Q. 如何证明您已使用此计划？';
	@override String get description => 'A. 您已访问计划中包含的地点。\n 我们使用位置信息进行判断，但不会将您的信息用于此功能以外的用途。';
	@override String get button => '关闭';
}

// Path: planDetailsPage.snackBar
class _TranslationsPlanDetailsPageSnackBarZhHans implements TranslationsPlanDetailsPageSnackBarEn {
	_TranslationsPlanDetailsPageSnackBarZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPlanDetailsPageSnackBarErrorZhHans error = _TranslationsPlanDetailsPageSnackBarErrorZhHans._(_root);
}

// Path: createLoadingPage.items
class _TranslationsCreateLoadingPageItemsZhHans implements TranslationsCreateLoadingPageItemsEn {
	_TranslationsCreateLoadingPageItemsZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get loadingText1 => 'Buddy正在偷偷规划旅行方案...';
	@override String get loadingText2 => '正在计划最棒的旅行...Buddy也很期待！';
	@override String get loadingText3 => '旅行的未来即将揭晓，稍等片刻~';
	@override String get loadingText4 => '趁着加载时间做做旅行白日梦吧！';
	@override String get loadingText5 => '赖床计划？...不可能的！';
	@override String get loadingText6 => '美食地图正在完美规划中！';
	@override String get loadingText7 => '规划不会迷路的路线...应该！';
	@override String get loadingText8 => '也许会加入一些小惊喜哦？';
	@override String get loadingText9 => 'Buddy正在努力创造完美旅程！';
	@override String get loadingText10 => '愉快的旅行准备正在进行中！';
	@override String get loadingText11 => '旅行手册正在悄悄制作中...';
	@override String get loadingText12 => '迷路了？Buddy会想办法的...大概！';
	@override String get loadingText13 => '要不要帮你列个伴手礼清单？';
	@override String get loadingText14 => '最棒的回忆即将产生...大概！';
	@override String get loadingText15 => '期待指数120%的旅行准备中！';
	@override String get loadingText16 => '正在探索隐藏景点中...';
	@override String get loadingText17 => 'Buddy正在偷偷计算最佳路线';
	@override String get loadingText18 => 'Buddy默默为您的旅行加油！';
	@override String get loadingText19 => '防止意外的方案也在准备中！';
	@override String get loadingText20 => '正在书写快乐旅行的序章！';
	@override String get loadingText21 => '绝对不会迷路的路线...大概！';
	@override String get loadingText22 => '这段文字是Buddy绞尽脑汁想出来的';
	@override String get loadingText23 => '祝今天生日的人生日快乐！';
	@override String get loadingText24 => '编织旅行梦想中...';
	@override String get loadingText25 => '注入旅行愿望中...';
	@override String get loadingText26 => '等待旅行奇迹中...';
	@override String get loadingText27 => '期待旅行邂逅中...';
	@override String get loadingText28 => '为意外相遇预留0.1%的可能';
	@override String get loadingText29 => '探索只有当地人知道的私房景点';
	@override String get loadingText30 => 'Buddy正在规划中...喝杯茶等等吧';
	@override String get loadingText31 => '防止迷路的地图准备中';
	@override String get loadingText32 => '比飞机云消失还快的规划速度！';
	@override String get loadingText33 => '寻找最适合自拍的打卡地点';
	@override String get loadingText34 => '边吃零食边规划中';
	@override String get loadingText35 => '在主题中找到心仪的计划！';
	@override String get loadingText36 => '随时都能更改个人资料哦！';
	@override String get loadingText37 => '期待您的应用评价！';
	@override String get loadingText38 => '猫派还是狗派？我选猫派';
	@override String get loadingText39 => '愿您的观光之旅一切顺利！';
	@override String get loadingText40 => '今天一定会有好事发生！';
}

// Path: authentication.authenticationPage.textFields
class _TranslationsAuthenticationAuthenticationPageTextFieldsZhHans implements TranslationsAuthenticationAuthenticationPageTextFieldsEn {
	_TranslationsAuthenticationAuthenticationPageTextFieldsZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get email => '邮箱地址';
	@override String get password => '密码';
}

// Path: authentication.authenticationPage.buttons
class _TranslationsAuthenticationAuthenticationPageButtonsZhHans implements TranslationsAuthenticationAuthenticationPageButtonsEn {
	_TranslationsAuthenticationAuthenticationPageButtonsZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get signIn => '登录';
	@override String get signUp => '注册';
	@override String get resetPassword => '忘记密码？';
	@override String get appleSignIn => '使用 Apple 登录';
	@override String get googleSignIn => '使用 Google 登录';
	@override String get signInAfter => '稍后注册';
}

// Path: authentication.authenticationPage.changeLanguageDialog
class _TranslationsAuthenticationAuthenticationPageChangeLanguageDialogZhHans implements TranslationsAuthenticationAuthenticationPageChangeLanguageDialogEn {
	_TranslationsAuthenticationAuthenticationPageChangeLanguageDialogZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get title => '选择语言';
	@override String get button => '关闭';
}

// Path: authentication.firebaseAuth.error
class _TranslationsAuthenticationFirebaseAuthErrorZhHans implements TranslationsAuthenticationFirebaseAuthErrorEn {
	_TranslationsAuthenticationFirebaseAuthErrorZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get networkRequestFailed => '请检查网络连接后重试';
	@override String get weakPassword => '密码太短。请输入6个字符或更多';
	@override String get invalidEmail => '电子邮件地址格式不正确';
	@override String get userNotFound => '找不到帐户';
	@override String get wrongPassword => '密码错误';
	@override String get emailAlreadyInUse => '电子邮件地址已在使用中。请使用其他电子邮件地址登录或创建';
	@override String get unexpected => '发生错误。请在良好的网络环境中重试';
}

// Path: authentication.resetPasswordPage.textFields
class _TranslationsAuthenticationResetPasswordPageTextFieldsZhHans implements TranslationsAuthenticationResetPasswordPageTextFieldsEn {
	_TranslationsAuthenticationResetPasswordPageTextFieldsZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get email => '邮箱';
}

// Path: authentication.resetPasswordPage.buttons
class _TranslationsAuthenticationResetPasswordPageButtonsZhHans implements TranslationsAuthenticationResetPasswordPageButtonsEn {
	_TranslationsAuthenticationResetPasswordPageButtonsZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get submit => '发送';
}

// Path: authentication.emailVerificationPage.buttons
class _TranslationsAuthenticationEmailVerificationPageButtonsZhHans implements TranslationsAuthenticationEmailVerificationPageButtonsEn {
	_TranslationsAuthenticationEmailVerificationPageButtonsZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get sendEmail => '发送确认邮件';
	@override String get resendEmail => '重新发送确认邮件';
	@override String get toNext => '下一步';
	@override String get retypeEmail => '修改邮箱地址';
}

// Path: authentication.emailVerificationPage.snackBar
class _TranslationsAuthenticationEmailVerificationPageSnackBarZhHans implements TranslationsAuthenticationEmailVerificationPageSnackBarEn {
	_TranslationsAuthenticationEmailVerificationPageSnackBarZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get success => '发送成功';
	@override String get emailVerification => '邮箱地址尚未验证。';
	@override late final _TranslationsAuthenticationEmailVerificationPageSnackBarErrorZhHans error = _TranslationsAuthenticationEmailVerificationPageSnackBarErrorZhHans._(_root);
}

// Path: authentication.registerProfilePage.buttons
class _TranslationsAuthenticationRegisterProfilePageButtonsZhHans implements TranslationsAuthenticationRegisterProfilePageButtonsEn {
	_TranslationsAuthenticationRegisterProfilePageButtonsZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get submit => '完成';
	@override String get skip => '跳过';
}

// Path: authentication.registerProfilePage.snackBar
class _TranslationsAuthenticationRegisterProfilePageSnackBarZhHans implements TranslationsAuthenticationRegisterProfilePageSnackBarEn {
	_TranslationsAuthenticationRegisterProfilePageSnackBarZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsAuthenticationRegisterProfilePageSnackBarErrorZhHans error = _TranslationsAuthenticationRegisterProfilePageSnackBarErrorZhHans._(_root);
}

// Path: authentication.completeSendEmailPage.buttons
class _TranslationsAuthenticationCompleteSendEmailPageButtonsZhHans implements TranslationsAuthenticationCompleteSendEmailPageButtonsEn {
	_TranslationsAuthenticationCompleteSendEmailPageButtonsZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get toSignIn => '前往登录页面';
	@override String get resendEmail => '重新发送确认邮件';
	@override String get changeEmail => '更改电子邮件地址';
}

// Path: authentication.phoneNumberInputPage.discription
class _TranslationsAuthenticationPhoneNumberInputPageDiscriptionZhHans implements TranslationsAuthenticationPhoneNumberInputPageDiscriptionEn {
	_TranslationsAuthenticationPhoneNumberInputPageDiscriptionZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get receive => '以接收 SMS 验证码';
	@override String get internationalFormat => '国际电话格式';
	@override String get input => '请输入您的电话号码';
	@override String get purposeForPhoneNumber => '您的电话号码仅用于发送SMS验证码，不会被用于其他用途';
}

// Path: authentication.phoneNumberInputPage.scaffoldMessenger
class _TranslationsAuthenticationPhoneNumberInputPageScaffoldMessengerZhHans implements TranslationsAuthenticationPhoneNumberInputPageScaffoldMessengerEn {
	_TranslationsAuthenticationPhoneNumberInputPageScaffoldMessengerZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get empty => '请输入您的电话号码';
	@override String get invalidPhoneNumber => '电话号码格式不正确';
	@override String get success => 'SMS 验证码已发送';
	@override String get error => 'SMS 验证码发送失败。请确认电话号码后重试。';
	@override String get unexpectedError => '发生了意外错误：';
	@override String get phoneNumberVerificaiton => '电话号码验证尚未完成';
}

// Path: authentication.smsVerificationPage.resend
class _TranslationsAuthenticationSmsVerificationPageResendZhHans implements TranslationsAuthenticationSmsVerificationPageResendEn {
	_TranslationsAuthenticationSmsVerificationPageResendZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get title => '重新发送';
	@override String get untilRetransmissionPossible => '重新发送倒计时';
	@override String get second => '秒';
}

// Path: authentication.smsVerificationPage.scaffoldMessenger
class _TranslationsAuthenticationSmsVerificationPageScaffoldMessengerZhHans implements TranslationsAuthenticationSmsVerificationPageScaffoldMessengerEn {
	_TranslationsAuthenticationSmsVerificationPageScaffoldMessengerZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get empty => '请输入 SMS 验证码';
	@override String get success => '验证成功';
	@override String get error => '验证失败。请确认 SMS 验证码后重试。';
	@override String get unexpectedError => '发生了意外错误：';
}

// Path: myPage.accountStatus.dateTime
class _TranslationsMyPageAccountStatusDateTimeZhHans implements TranslationsMyPageAccountStatusDateTimeEn {
	_TranslationsMyPageAccountStatusDateTimeZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String registeredOn({required Object date}) => '${date}注册于';
	@override String get registeredOnFormat => 'yyyy年MM月dd日';
	@override String validUntil({required Object date}) => '有效期至${date}';
	@override String get validUntilFormat => 'yyyy年MM月dd日 HH:mm';
}

// Path: buddyChatPage.snackBar.error
class _TranslationsBuddyChatPageSnackBarErrorZhHans implements TranslationsBuddyChatPageSnackBarErrorEn {
	_TranslationsBuddyChatPageSnackBarErrorZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get failedRecieveMessage => '未能接收回复，请稍后再试';
	@override String get failedCompleteCreatePlan => '未能完成创建计划，请稍后再试';
}

// Path: createPlanPage.numberOfPeopleOptions.adult
class _TranslationsCreatePlanPageNumberOfPeopleOptionsAdultZhHans implements TranslationsCreatePlanPageNumberOfPeopleOptionsAdultEn {
	_TranslationsCreatePlanPageNumberOfPeopleOptionsAdultZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get title => '成人';
	@override String get subtitle => '（13岁以上）';
}

// Path: createPlanPage.numberOfPeopleOptions.child
class _TranslationsCreatePlanPageNumberOfPeopleOptionsChildZhHans implements TranslationsCreatePlanPageNumberOfPeopleOptionsChildEn {
	_TranslationsCreatePlanPageNumberOfPeopleOptionsChildZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get title => '儿童';
	@override String get subtitle => '（未满13岁）';
}

// Path: createPlanPage.snackBar.error
class _TranslationsCreatePlanPageSnackBarErrorZhHans implements TranslationsCreatePlanPageSnackBarErrorEn {
	_TranslationsCreatePlanPageSnackBarErrorZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get foundUnSelectedField => '存在未选择的项目，请选择所有项目';
	@override String get invalidDateRange => '开始日期必须在结束日期之前设置。';
}

// Path: editProfilePage.snackBar.error
class _TranslationsEditProfilePageSnackBarErrorZhHans implements TranslationsEditProfilePageSnackBarErrorEn {
	_TranslationsEditProfilePageSnackBarErrorZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get noChange => '没有更改';
	@override String get failedToUpdate => '更新失败，请稍后再试';
	@override String get failedToPickImage => '选择图片失败，请稍后再试';
}

// Path: billDetailsPage.pricingPlan.columns
class _TranslationsBillDetailsPagePricingPlanColumnsZhHans implements TranslationsBillDetailsPagePricingPlanColumnsEn {
	_TranslationsBillDetailsPagePricingPlanColumnsZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get standard => '标准';
	@override String get premium => '高级';
}

// Path: billDetailsPage.pricingPlan.details
class _TranslationsBillDetailsPagePricingPlanDetailsZhHans implements TranslationsBillDetailsPagePricingPlanDetailsEn {
	_TranslationsBillDetailsPagePricingPlanDetailsZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get free => '免费 🎉';
	@override late final _TranslationsBillDetailsPagePricingPlanDetailsPremiumPriceZhHans premiumPrice = _TranslationsBillDetailsPagePricingPlanDetailsPremiumPriceZhHans._(_root);
}

// Path: billDetailsPage.features.rows
class _TranslationsBillDetailsPageFeaturesRowsZhHans implements TranslationsBillDetailsPageFeaturesRowsEn {
	_TranslationsBillDetailsPageFeaturesRowsZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get planCreationLimit => '可创建的计划次数';
	@override String get chatLimit => '计划创建期间可用聊天次数';
	@override String get timelineAccess => '访问所有计划时间线';
	@override String get adFree => '无广告';
	@override String get exclusiveFeatures => '计划认证功能';
}

// Path: billDetailsPage.features.columns
class _TranslationsBillDetailsPageFeaturesColumnsZhHans implements TranslationsBillDetailsPageFeaturesColumnsEn {
	_TranslationsBillDetailsPageFeaturesColumnsZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsBillDetailsPageFeaturesColumnsStandardZhHans standard = _TranslationsBillDetailsPageFeaturesColumnsStandardZhHans._(_root);
	@override late final _TranslationsBillDetailsPageFeaturesColumnsPremiumZhHans premium = _TranslationsBillDetailsPageFeaturesColumnsPremiumZhHans._(_root);
}

// Path: billDetailsPage.pricingOptions.oneDay
class _TranslationsBillDetailsPagePricingOptionsOneDayZhHans implements TranslationsBillDetailsPagePricingOptionsOneDayEn {
	_TranslationsBillDetailsPagePricingOptionsOneDayZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get duration => '1日';
	@override String get discount => '';
	@override String get price => '300円';
}

// Path: billDetailsPage.pricingOptions.threeDays
class _TranslationsBillDetailsPagePricingOptionsThreeDaysZhHans implements TranslationsBillDetailsPagePricingOptionsThreeDaysEn {
	_TranslationsBillDetailsPagePricingOptionsThreeDaysZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get duration => '3日';
	@override String get discount => '-5%';
	@override String get price => '890日元';
}

// Path: billDetailsPage.pricingOptions.fiveDays
class _TranslationsBillDetailsPagePricingOptionsFiveDaysZhHans implements TranslationsBillDetailsPagePricingOptionsFiveDaysEn {
	_TranslationsBillDetailsPagePricingOptionsFiveDaysZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get duration => '5日';
	@override String get discount => '-7.5%';
	@override String get price => '1,387日元';
}

// Path: billDetailsPage.pricingOptions.sevenDays
class _TranslationsBillDetailsPagePricingOptionsSevenDaysZhHans implements TranslationsBillDetailsPagePricingOptionsSevenDaysEn {
	_TranslationsBillDetailsPagePricingOptionsSevenDaysZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get duration => '7日';
	@override String get discount => '-10%';
	@override String get price => '2,070日元';
}

// Path: billDetailsPage.pricingOptions.unlimited
class _TranslationsBillDetailsPagePricingOptionsUnlimitedZhHans implements TranslationsBillDetailsPagePricingOptionsUnlimitedEn {
	_TranslationsBillDetailsPagePricingOptionsUnlimitedZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get duration => '无限制';
	@override String get discount => '-20%';
	@override String get price => '25,800日元';
}

// Path: billDetailsPage.snackBar.error
class _TranslationsBillDetailsPageSnackBarErrorZhHans implements TranslationsBillDetailsPageSnackBarErrorEn {
	_TranslationsBillDetailsPageSnackBarErrorZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get failedToPurchase => '购买失败，请稍后再试。';
	@override String get PurchaseHistoryNotFound => '未找到购买记录。';
	@override String get failedToRestorePurchase => '恢复购买失败，请稍后再试';
}

// Path: planDetailsPage.snackBar.error
class _TranslationsPlanDetailsPageSnackBarErrorZhHans implements TranslationsPlanDetailsPageSnackBarErrorEn {
	_TranslationsPlanDetailsPageSnackBarErrorZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get failedToUpdateBookmark => '更新书签失败，请稍后再试';
}

// Path: authentication.emailVerificationPage.snackBar.error
class _TranslationsAuthenticationEmailVerificationPageSnackBarErrorZhHans implements TranslationsAuthenticationEmailVerificationPageSnackBarErrorEn {
	_TranslationsAuthenticationEmailVerificationPageSnackBarErrorZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get unexpected => '发生错误，请稍后再试。';
}

// Path: authentication.registerProfilePage.snackBar.error
class _TranslationsAuthenticationRegisterProfilePageSnackBarErrorZhHans implements TranslationsAuthenticationRegisterProfilePageSnackBarErrorEn {
	_TranslationsAuthenticationRegisterProfilePageSnackBarErrorZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get submitIfAllEmpty => '请输入信息';
	@override String get unexpected => '发生错误，请稍后再试。';
}

// Path: billDetailsPage.pricingPlan.details.premiumPrice
class _TranslationsBillDetailsPagePricingPlanDetailsPremiumPriceZhHans implements TranslationsBillDetailsPagePricingPlanDetailsPremiumPriceEn {
	_TranslationsBillDetailsPagePricingPlanDetailsPremiumPriceZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get days => '按天数购买';
	@override String daily({required Object price}) => '・1天 ${price}';
	@override String threeDays({required Object price}) => '・3天 ${price}';
	@override String fiveDays({required Object price}) => '・5天 ${price}';
	@override String sevenDays({required Object price}) => '・7天 ${price}';
	@override String get or => '或者';
	@override String get unlimited => '无限制';
	@override String unlimitedPrice({required Object price}) => '${price}';
}

// Path: billDetailsPage.features.columns.standard
class _TranslationsBillDetailsPageFeaturesColumnsStandardZhHans implements TranslationsBillDetailsPageFeaturesColumnsStandardEn {
	_TranslationsBillDetailsPageFeaturesColumnsStandardZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get label => '标准';
	@override String get planCreationLimit => '2次';
	@override String get chatLimit => '2次';
}

// Path: billDetailsPage.features.columns.premium
class _TranslationsBillDetailsPageFeaturesColumnsPremiumZhHans implements TranslationsBillDetailsPageFeaturesColumnsPremiumEn {
	_TranslationsBillDetailsPageFeaturesColumnsPremiumZhHans._(this._root);

	final TranslationsZhHans _root; // ignore: unused_field

	// Translations
	@override String get label => '高级';
	@override String get planCreationLimit => '无限制';
	@override String get chatLimit => '无限制';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsZhHans {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'navigationBar.items.home': return '首页';
			case 'navigationBar.items.myPlan': return '我的计划';
			case 'navigationBar.items.myPage': return '个人中心';
			case 'homePage.popularPlans.title': return '热门计划';
			case 'homePage.popularTopics.title': return '热门话题';
			case 'homePage.popularTopics.numberOfTopics': return ({required Object number}) => '${number}件~';
			case 'homePage.recentPlans.title': return '最近创建的计划';
			case 'accountPage.title': return '账户';
			case 'accountPage.items.signOut': return '退出登录';
			case 'accountPage.items.linkedWithGoogle': return '关联Google账号';
			case 'accountPage.items.linkedWithApple': return '关联Apple账号';
			case 'accountPage.items.alreadyLinkedGoogle': return '已与Google连接';
			case 'accountPage.items.alreadyLinkedApple': return '已与Apple连接';
			case 'accountPage.items.deleteAccount': return '删除账户';
			case 'accountPage.snackBar.signOut': return '已成功退出登录。';
			case 'accountPage.snackBar.signOutFailure': return '退出登录时发生错误。';
			case 'accountPage.snackBar.successfulLinkage': return '账户关联成功。';
			case 'accountPage.snackBar.linkageFailure': return '账户关联失败。';
			case 'accountPage.snackBar.providerAlreadyLinked': return '此账户已经关联。';
			case 'accountPage.snackBar.accountDeactivation': return '已解除账户关联。';
			case 'accountPage.snackBar.invalidCredential': return '请重新登录。';
			case 'accountPage.snackBar.linkageCancelled': return '账户关联已取消。';
			case 'accountPage.snackBar.unlinkageFailure': return '解除账户关联失败。';
			case 'accountPage.snackBar.operationNotAllowed': return '提供者无效。请联系开发者。';
			case 'accountPage.snackBar.unknownError': return '发生未知错误。';
			case 'accountPage.snackBar.deleteAccount': return '账户已删除。';
			case 'accountPage.snackBar.deleteAccountFailure': return '删除账户失败。';
			case 'accountPage.diaLog.yes': return '是';
			case 'accountPage.diaLog.no': return '否';
			case 'accountPage.diaLog.title': return '确认解除账户连接';
			case 'accountPage.diaLog.googleText': return '是否要解除当前账户与Google账户的连接？';
			case 'accountPage.diaLog.appleText': return '是否要解除当前账户与Apple账户的连接？';
			case 'accountPage.diaLog.signOut': return '您要退出登录吗？';
			case 'accountPage.diaLog.signOutText': return '使用应用功能需要重新登录。';
			case 'accountPage.diaLog.deleteAccount': return '您要删除账户吗？';
			case 'accountPage.diaLog.deleteAccountText': return '删除账户后，所有数据将被删除。';
			case 'authentication.authenticationPage.title': return '登录 / 注册';
			case 'authentication.authenticationPage.optionText': return ' 或 ';
			case 'authentication.authenticationPage.textFields.email': return '邮箱地址';
			case 'authentication.authenticationPage.textFields.password': return '密码';
			case 'authentication.authenticationPage.buttons.signIn': return '登录';
			case 'authentication.authenticationPage.buttons.signUp': return '注册';
			case 'authentication.authenticationPage.buttons.resetPassword': return '忘记密码？';
			case 'authentication.authenticationPage.buttons.appleSignIn': return '使用 Apple 登录';
			case 'authentication.authenticationPage.buttons.googleSignIn': return '使用 Google 登录';
			case 'authentication.authenticationPage.buttons.signInAfter': return '稍后注册';
			case 'authentication.authenticationPage.changeLanguageDialog.title': return '选择语言';
			case 'authentication.authenticationPage.changeLanguageDialog.button': return '关闭';
			case 'authentication.firebaseAuth.error.networkRequestFailed': return '请检查网络连接后重试';
			case 'authentication.firebaseAuth.error.weakPassword': return '密码太短。请输入6个字符或更多';
			case 'authentication.firebaseAuth.error.invalidEmail': return '电子邮件地址格式不正确';
			case 'authentication.firebaseAuth.error.userNotFound': return '找不到帐户';
			case 'authentication.firebaseAuth.error.wrongPassword': return '密码错误';
			case 'authentication.firebaseAuth.error.emailAlreadyInUse': return '电子邮件地址已在使用中。请使用其他电子邮件地址登录或创建';
			case 'authentication.firebaseAuth.error.unexpected': return '发生错误。请在良好的网络环境中重试';
			case 'authentication.resetPasswordPage.title': return '重置密码';
			case 'authentication.resetPasswordPage.description': return '将向输入的电子邮件地址发送密码重置邮件';
			case 'authentication.resetPasswordPage.textFields.email': return '邮箱';
			case 'authentication.resetPasswordPage.buttons.submit': return '发送';
			case 'authentication.emailVerificationPage.title': return '邮箱地址验证';
			case 'authentication.emailVerificationPage.descriptionForDestination': return ({required Object email}) => '已向输入的${email}发送了验证邮件';
			case 'authentication.emailVerificationPage.descriptionForCoolDown': return '确认邮件每60秒只能重新发送一次。';
			case 'authentication.emailVerificationPage.buttons.sendEmail': return '发送确认邮件';
			case 'authentication.emailVerificationPage.buttons.resendEmail': return '重新发送确认邮件';
			case 'authentication.emailVerificationPage.buttons.toNext': return '下一步';
			case 'authentication.emailVerificationPage.buttons.retypeEmail': return '修改邮箱地址';
			case 'authentication.emailVerificationPage.snackBar.success': return '发送成功';
			case 'authentication.emailVerificationPage.snackBar.emailVerification': return '邮箱地址尚未验证。';
			case 'authentication.emailVerificationPage.snackBar.error.unexpected': return '发生错误，请稍后再试。';
			case 'authentication.registerProfilePage.title': return '注册个人信息';
			case 'authentication.registerProfilePage.textFields': return '姓名';
			case 'authentication.registerProfilePage.buttons.submit': return '完成';
			case 'authentication.registerProfilePage.buttons.skip': return '跳过';
			case 'authentication.registerProfilePage.snackBar.error.submitIfAllEmpty': return '请输入信息';
			case 'authentication.registerProfilePage.snackBar.error.unexpected': return '发生错误，请稍后再试。';
			case 'authentication.completeSendEmailPage.title': return '发送完成';
			case 'authentication.completeSendEmailPage.description': return ({required Object email}) => '密码重置邮件已发送到${email} \n 重置后请从登录页面登录';
			case 'authentication.completeSendEmailPage.successResendEmail': return '确认邮件已重新发送';
			case 'authentication.completeSendEmailPage.buttons.toSignIn': return '前往登录页面';
			case 'authentication.completeSendEmailPage.buttons.resendEmail': return '重新发送确认邮件';
			case 'authentication.completeSendEmailPage.buttons.changeEmail': return '更改电子邮件地址';
			case 'authentication.phoneNumberInputPage.title': return '输入电话号码';
			case 'authentication.phoneNumberInputPage.discription.receive': return '以接收 SMS 验证码';
			case 'authentication.phoneNumberInputPage.discription.internationalFormat': return '国际电话格式';
			case 'authentication.phoneNumberInputPage.discription.input': return '请输入您的电话号码';
			case 'authentication.phoneNumberInputPage.discription.purposeForPhoneNumber': return '您的电话号码仅用于发送SMS验证码，不会被用于其他用途';
			case 'authentication.phoneNumberInputPage.phoneNumber': return '电话号码';
			case 'authentication.phoneNumberInputPage.sendSmsCode': return '发送 SMS 验证码';
			case 'authentication.phoneNumberInputPage.scaffoldMessenger.empty': return '请输入您的电话号码';
			case 'authentication.phoneNumberInputPage.scaffoldMessenger.invalidPhoneNumber': return '电话号码格式不正确';
			case 'authentication.phoneNumberInputPage.scaffoldMessenger.success': return 'SMS 验证码已发送';
			case 'authentication.phoneNumberInputPage.scaffoldMessenger.error': return 'SMS 验证码发送失败。请确认电话号码后重试。';
			case 'authentication.phoneNumberInputPage.scaffoldMessenger.unexpectedError': return '发生了意外错误：';
			case 'authentication.phoneNumberInputPage.scaffoldMessenger.phoneNumberVerificaiton': return '电话号码验证尚未完成';
			case 'authentication.smsVerificationPage.title': return 'SMS 验证';
			case 'authentication.smsVerificationPage.sendSms': return 'SMS 验证码已发送至以下电话号码：';
			case 'authentication.smsVerificationPage.pleaseInputCode': return '请输入验证码以完成电话号码验证。';
			case 'authentication.smsVerificationPage.resend.title': return '重新发送';
			case 'authentication.smsVerificationPage.resend.untilRetransmissionPossible': return '重新发送倒计时';
			case 'authentication.smsVerificationPage.resend.second': return '秒';
			case 'authentication.smsVerificationPage.smsCode': return 'SMS 验证码';
			case 'authentication.smsVerificationPage.verify': return '验证';
			case 'authentication.smsVerificationPage.fixPhoneNumber': return '修改电话号码';
			case 'authentication.smsVerificationPage.scaffoldMessenger.empty': return '请输入 SMS 验证码';
			case 'authentication.smsVerificationPage.scaffoldMessenger.success': return '验证成功';
			case 'authentication.smsVerificationPage.scaffoldMessenger.error': return '验证失败。请确认 SMS 验证码后重试。';
			case 'authentication.smsVerificationPage.scaffoldMessenger.unexpectedError': return '发生了意外错误：';
			case 'validation.emailRequired': return '请输入电子邮件地址';
			case 'validation.emailInvalid': return '电子邮件地址格式不正确';
			case 'validation.passwordRequired': return '请输入密码';
			case 'validation.passwordShort': return '密码至少需要8个字符';
			case 'validation.passwordWeak': return '密码应包含字母和数字的组合';
			case 'validation.passwordMatch': return '密码不匹配';
			case 'validation.informationRequired': return '请输入信息';
			case 'validation.urlInvalid': return 'URL格式不正确';
			case 'validation.usernameRequired': return '请输入您的用户名';
			case 'validation.usernameMaxLength': return '用户名必须为8个字符或更少';
			case 'myPage.unregisteredUserName': return '未注册';
			case 'myPage.editProfile': return '编辑个人资料';
			case 'myPage.premiumPlan': return '高级计划';
			case 'myPage.details': return '详细';
			case 'myPage.settings': return '设置';
			case 'myPage.account': return '账户';
			case 'myPage.language': return '语言';
			case 'myPage.theme': return '主题';
			case 'myPage.termsOfUsePrivacyPolicy': return '使用条款和隐私政策';
			case 'myPage.aboutThisApp': return '关于本应用';
			case 'myPage.aboutTheDeveloper': return '关于开发者';
			case 'myPage.accountStatus.dateTime.registeredOn': return ({required Object date}) => '${date}注册于';
			case 'myPage.accountStatus.dateTime.registeredOnFormat': return 'yyyy年MM月dd日';
			case 'myPage.accountStatus.dateTime.validUntil': return ({required Object date}) => '有效期至${date}';
			case 'myPage.accountStatus.dateTime.validUntilFormat': return 'yyyy年MM月dd日 HH:mm';
			case 'myPage.accountStatus.premium': return '高级会员';
			case 'myPage.accountStatus.standard': return '标准会员';
			case 'changeLanguagePage.title': return '语言';
			case 'changeLanguagePage.items.japanese': return '日本語';
			case 'changeLanguagePage.items.english': return 'English';
			case 'changeLanguagePage.items.simplifiedChinese': return '中文（简体）';
			case 'changeLanguagePage.items.traditionalChinese': return '中文(繁体字)';
			case 'changeLanguagePage.items.korean': return '한국어';
			case 'changeThemePage.title': return '主题';
			case 'changeThemePage.items.system': return '系统';
			case 'changeThemePage.items.light': return '光';
			case 'changeThemePage.items.dark': return '暗处';
			case 'myPlanPage.title': return '我的计划';
			case 'myPlanPage.tabs.createdPlans': return '已创建计划';
			case 'myPlanPage.tabs.bookmark': return '收藏';
			case 'myPlanPage.bookmarkItems.nondata': return '暂无收藏计划。';
			case 'myPlanPage.bookmarkItems.reloading': return '重新加载';
			case 'myPlanPage.createdPlansItems.nondata': return '开始创建计划吧！';
			case 'myPlanPage.createdPlansItems.createaplan': return '创建计划';
			case 'myPlanPage.error.displayError': return '显示计划时出现错误。';
			case 'myPlanPage.error.failedGetId': return '获取计划ID失败。';
			case 'myPlanPage.error.failedGetPlanData': return '获取计划数据时出现错误。';
			case 'myPlanPage.error.failedUnBookmark': return '取消收藏时出现错误。';
			case 'buddyChatPage.title': return 'Buddy的建议';
			case 'buddyChatPage.possibleChatCount': return ({required Object possibleChatCount}) => '消息还可以发送${possibleChatCount}次';
			case 'buddyChatPage.textFields.message': return '输入消息';
			case 'buddyChatPage.buttons.send': return '完成';
			case 'buddyChatPage.placeCard.openingHours': return '营业时间';
			case 'buddyChatPage.placeCard.averageAmount': return '平均预算';
			case 'buddyChatPage.placeCard.website': return '网站';
			case 'buddyChatPage.snackBar.error.failedRecieveMessage': return '未能接收回复，请稍后再试';
			case 'buddyChatPage.snackBar.error.failedCompleteCreatePlan': return '未能完成创建计划，请稍后再试';
			case 'popularTopics.sectionName': return '热门话题';
			case 'createPlanPage.title': return '创建计划';
			case 'createPlanPage.label.location': return '目的地';
			case 'createPlanPage.label.scheduleTitle': return '日程';
			case 'createPlanPage.label.scheduleStart': return '开始日期';
			case 'createPlanPage.label.scheduleEnd': return '结束日期';
			case 'createPlanPage.label.numberOfPeople': return '人数';
			case 'createPlanPage.label.transport': return '交通方式';
			case 'createPlanPage.label.category': return '类别';
			case 'createPlanPage.label.topics': return '旅行主题';
			case 'createPlanPage.hintText.location': return '涩谷';
			case 'createPlanPage.modal.title': return '选择日期';
			case 'createPlanPage.numberOfPeopleOptions.adult.title': return '成人';
			case 'createPlanPage.numberOfPeopleOptions.adult.subtitle': return '（13岁以上）';
			case 'createPlanPage.numberOfPeopleOptions.child.title': return '儿童';
			case 'createPlanPage.numberOfPeopleOptions.child.subtitle': return '（未满13岁）';
			case 'createPlanPage.transportOptions.0': return '火车';
			case 'createPlanPage.transportOptions.1': return '步行';
			case 'createPlanPage.transportOptions.2': return '汽车';
			case 'createPlanPage.transportOptions.3': return '巴士';
			case 'createPlanPage.defaultTopics.0': return '美食';
			case 'createPlanPage.defaultTopics.1': return '购物';
			case 'createPlanPage.defaultTopics.2': return '活动';
			case 'createPlanPage.defaultTopics.3': return '电影';
			case 'createPlanPage.submitButton': return '提交计划给AI';
			case 'createPlanPage.snackBar.error.foundUnSelectedField': return '存在未选择的项目，请选择所有项目';
			case 'createPlanPage.snackBar.error.invalidDateRange': return '开始日期必须在结束日期之前设置。';
			case 'editProfilePage.title': return '编辑个人资料';
			case 'editProfilePage.textFields.name': return '姓名';
			case 'editProfilePage.buttons.submit': return '保存';
			case 'editProfilePage.snackBar.success': return '更新成功';
			case 'editProfilePage.snackBar.error.noChange': return '没有更改';
			case 'editProfilePage.snackBar.error.failedToUpdate': return '更新失败，请稍后再试';
			case 'editProfilePage.snackBar.error.failedToPickImage': return '选择图片失败，请稍后再试';
			case 'confirmDialog.answers.yes': return '是';
			case 'confirmDialog.answers.no': return '否';
			case 'confirmDialog.popPage.title': return '要返回上一页吗？';
			case 'confirmDialog.popPage.description': return '当前内容不会被保存';
			case 'confirmDialog.completeCreatePlan.title': return '确定要保存计划吗？';
			case 'confirmDialog.completeCreatePlan.description': return '最后一条消息中的计划将被保存';
			case 'prompt.planProposalMessage': return '我考虑了这个计划！您觉得怎么样？';
			case 'billDetailsPage.title.defaultTitle': return '高级计划';
			case 'billDetailsPage.title.createPlan': return '是否希望启用无限制的计划创建？';
			case 'billDetailsPage.title.chat': return '想享受无限制的聊天吗？';
			case 'billDetailsPage.description': return '订阅高级计划后，您可以更舒适地享受涩谷观光。';
			case 'billDetailsPage.pricingPlan.title': return '价格计划';
			case 'billDetailsPage.pricingPlan.columns.standard': return '标准';
			case 'billDetailsPage.pricingPlan.columns.premium': return '高级';
			case 'billDetailsPage.pricingPlan.details.free': return '免费 🎉';
			case 'billDetailsPage.pricingPlan.details.premiumPrice.days': return '按天数购买';
			case 'billDetailsPage.pricingPlan.details.premiumPrice.daily': return ({required Object price}) => '・1天 ${price}';
			case 'billDetailsPage.pricingPlan.details.premiumPrice.threeDays': return ({required Object price}) => '・3天 ${price}';
			case 'billDetailsPage.pricingPlan.details.premiumPrice.fiveDays': return ({required Object price}) => '・5天 ${price}';
			case 'billDetailsPage.pricingPlan.details.premiumPrice.sevenDays': return ({required Object price}) => '・7天 ${price}';
			case 'billDetailsPage.pricingPlan.details.premiumPrice.or': return '或者';
			case 'billDetailsPage.pricingPlan.details.premiumPrice.unlimited': return '无限制';
			case 'billDetailsPage.pricingPlan.details.premiumPrice.unlimitedPrice': return ({required Object price}) => '${price}';
			case 'billDetailsPage.features.title': return '等级功能';
			case 'billDetailsPage.features.rows.planCreationLimit': return '可创建的计划次数';
			case 'billDetailsPage.features.rows.chatLimit': return '计划创建期间可用聊天次数';
			case 'billDetailsPage.features.rows.timelineAccess': return '访问所有计划时间线';
			case 'billDetailsPage.features.rows.adFree': return '无广告';
			case 'billDetailsPage.features.rows.exclusiveFeatures': return '计划认证功能';
			case 'billDetailsPage.features.columns.standard.label': return '标准';
			case 'billDetailsPage.features.columns.standard.planCreationLimit': return '2次';
			case 'billDetailsPage.features.columns.standard.chatLimit': return '2次';
			case 'billDetailsPage.features.columns.premium.label': return '高级';
			case 'billDetailsPage.features.columns.premium.planCreationLimit': return '无限制';
			case 'billDetailsPage.features.columns.premium.chatLimit': return '无限制';
			case 'billDetailsPage.pricingOptions.oneDay.duration': return '1日';
			case 'billDetailsPage.pricingOptions.oneDay.discount': return '';
			case 'billDetailsPage.pricingOptions.oneDay.price': return '300円';
			case 'billDetailsPage.pricingOptions.threeDays.duration': return '3日';
			case 'billDetailsPage.pricingOptions.threeDays.discount': return '-5%';
			case 'billDetailsPage.pricingOptions.threeDays.price': return '890日元';
			case 'billDetailsPage.pricingOptions.fiveDays.duration': return '5日';
			case 'billDetailsPage.pricingOptions.fiveDays.discount': return '-7.5%';
			case 'billDetailsPage.pricingOptions.fiveDays.price': return '1,387日元';
			case 'billDetailsPage.pricingOptions.sevenDays.duration': return '7日';
			case 'billDetailsPage.pricingOptions.sevenDays.discount': return '-10%';
			case 'billDetailsPage.pricingOptions.sevenDays.price': return '2,070日元';
			case 'billDetailsPage.pricingOptions.unlimited.duration': return '无限制';
			case 'billDetailsPage.pricingOptions.unlimited.discount': return '-20%';
			case 'billDetailsPage.pricingOptions.unlimited.price': return '25,800日元';
			case 'billDetailsPage.restorePurchaseSection.button': return '恢复购买';
			case 'billDetailsPage.restorePurchaseSection.textButton': return '什么是购买恢复？';
			case 'billDetailsPage.upgradeButton': return '升级到高级计划';
			case 'billDetailsPage.snackBar.error.failedToPurchase': return '购买失败，请稍后再试。';
			case 'billDetailsPage.snackBar.error.PurchaseHistoryNotFound': return '未找到购买记录。';
			case 'billDetailsPage.snackBar.error.failedToRestorePurchase': return '恢复购买失败，请稍后再试';
			case 'planDetailsPage.dateTime.createOn': return ({required Object date}) => '${date}创建的计划';
			case 'planDetailsPage.dateTime.dateFormat': return 'yyyy年MM月dd日';
			case 'planDetailsPage.item.viewOnMap': return '在地图上查看';
			case 'planDetailsPage.haveUsedPlan': return '您已使用此计划';
			case 'planDetailsPage.dialog.title': return 'Q. 如何证明您已使用此计划？';
			case 'planDetailsPage.dialog.description': return 'A. 您已访问计划中包含的地点。\n 我们使用位置信息进行判断，但不会将您的信息用于此功能以外的用途。';
			case 'planDetailsPage.dialog.button': return '关闭';
			case 'planDetailsPage.snackBar.error.failedToUpdateBookmark': return '更新书签失败，请稍后再试';
			case 'createLoadingPage.items.loadingText1': return 'Buddy正在偷偷规划旅行方案...';
			case 'createLoadingPage.items.loadingText2': return '正在计划最棒的旅行...Buddy也很期待！';
			case 'createLoadingPage.items.loadingText3': return '旅行的未来即将揭晓，稍等片刻~';
			case 'createLoadingPage.items.loadingText4': return '趁着加载时间做做旅行白日梦吧！';
			case 'createLoadingPage.items.loadingText5': return '赖床计划？...不可能的！';
			case 'createLoadingPage.items.loadingText6': return '美食地图正在完美规划中！';
			case 'createLoadingPage.items.loadingText7': return '规划不会迷路的路线...应该！';
			case 'createLoadingPage.items.loadingText8': return '也许会加入一些小惊喜哦？';
			case 'createLoadingPage.items.loadingText9': return 'Buddy正在努力创造完美旅程！';
			case 'createLoadingPage.items.loadingText10': return '愉快的旅行准备正在进行中！';
			case 'createLoadingPage.items.loadingText11': return '旅行手册正在悄悄制作中...';
			case 'createLoadingPage.items.loadingText12': return '迷路了？Buddy会想办法的...大概！';
			case 'createLoadingPage.items.loadingText13': return '要不要帮你列个伴手礼清单？';
			case 'createLoadingPage.items.loadingText14': return '最棒的回忆即将产生...大概！';
			case 'createLoadingPage.items.loadingText15': return '期待指数120%的旅行准备中！';
			case 'createLoadingPage.items.loadingText16': return '正在探索隐藏景点中...';
			case 'createLoadingPage.items.loadingText17': return 'Buddy正在偷偷计算最佳路线';
			case 'createLoadingPage.items.loadingText18': return 'Buddy默默为您的旅行加油！';
			case 'createLoadingPage.items.loadingText19': return '防止意外的方案也在准备中！';
			case 'createLoadingPage.items.loadingText20': return '正在书写快乐旅行的序章！';
			case 'createLoadingPage.items.loadingText21': return '绝对不会迷路的路线...大概！';
			case 'createLoadingPage.items.loadingText22': return '这段文字是Buddy绞尽脑汁想出来的';
			case 'createLoadingPage.items.loadingText23': return '祝今天生日的人生日快乐！';
			case 'createLoadingPage.items.loadingText24': return '编织旅行梦想中...';
			case 'createLoadingPage.items.loadingText25': return '注入旅行愿望中...';
			case 'createLoadingPage.items.loadingText26': return '等待旅行奇迹中...';
			case 'createLoadingPage.items.loadingText27': return '期待旅行邂逅中...';
			case 'createLoadingPage.items.loadingText28': return '为意外相遇预留0.1%的可能';
			case 'createLoadingPage.items.loadingText29': return '探索只有当地人知道的私房景点';
			case 'createLoadingPage.items.loadingText30': return 'Buddy正在规划中...喝杯茶等等吧';
			case 'createLoadingPage.items.loadingText31': return '防止迷路的地图准备中';
			case 'createLoadingPage.items.loadingText32': return '比飞机云消失还快的规划速度！';
			case 'createLoadingPage.items.loadingText33': return '寻找最适合自拍的打卡地点';
			case 'createLoadingPage.items.loadingText34': return '边吃零食边规划中';
			case 'createLoadingPage.items.loadingText35': return '在主题中找到心仪的计划！';
			case 'createLoadingPage.items.loadingText36': return '随时都能更改个人资料哦！';
			case 'createLoadingPage.items.loadingText37': return '期待您的应用评价！';
			case 'createLoadingPage.items.loadingText38': return '猫派还是狗派？我选猫派';
			case 'createLoadingPage.items.loadingText39': return '愿您的观光之旅一切顺利！';
			case 'createLoadingPage.items.loadingText40': return '今天一定会有好事发生！';
			case 'locales.en': return '英语';
			case 'locales.ja': return '日语';
			case 'locales.zh': return '中文';
			case 'locales.ko': return '韩语';
			case 'errorPage.title': return '发生错误...';
			case 'errorPage.message': return '请检查您的网络连接并重试。';
			case 'errorPage.retryButton': return '重试';
			case 'mapPage.title': return '地图';
			default: return null;
		}
	}
}

