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
	@override late final _TranslationsBuddyChatPageJa buddyChatPage = _TranslationsBuddyChatPageJa._(_root);
	@override late final _TranslationsPopularTopicsJa popularTopics = _TranslationsPopularTopicsJa._(_root);
	@override late final _TranslationsCreatePlanPageJa createPlanPage = _TranslationsCreatePlanPageJa._(_root);
	@override late final _TranslationsEditProfilePageJa editProfilePage = _TranslationsEditProfilePageJa._(_root);
	@override late final _TranslationsConfirmDialogJa confirmDialog = _TranslationsConfirmDialogJa._(_root);
	@override late final _TranslationsPromptJa prompt = _TranslationsPromptJa._(_root);
	@override late final _TranslationsBillDetailsPageJa billDetailsPage = _TranslationsBillDetailsPageJa._(_root);
	@override late final _TranslationsPlanDetailsPageJa planDetailsPage = _TranslationsPlanDetailsPageJa._(_root);
	@override Map<String, String> get locales => {
		'en': '英語',
		'ja': '日本語',
		'zh': '中国語',
		'ko': '韓国語',
	};
	@override late final _TranslationsErrorPageJa errorPage = _TranslationsErrorPageJa._(_root);
	@override late final _TranslationsMapPageJa mapPage = _TranslationsMapPageJa._(_root);
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
	@override late final _TranslationsAuthenticationPhoneNumberInputPageJa phoneNumberInputPage = _TranslationsAuthenticationPhoneNumberInputPageJa._(_root);
	@override late final _TranslationsAuthenticationSmsVerificationPageJa smsVerificationPage = _TranslationsAuthenticationSmsVerificationPageJa._(_root);
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
	@override String get usernameRequired => 'ユーザーネームを入力してください';
	@override String get usernameMaxLength => 'ユーザーネームは8文字以内である必要があります';
}

// Path: myPage
class _TranslationsMyPageJa implements TranslationsMyPageEn {
	_TranslationsMyPageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get unregisteredUserName => '未登録';
	@override String get editProfile => 'プロフィール編集';
	@override String get premiumPlan => 'プレミアムプラン';
	@override String get details => '詳細';
	@override String get settings => '設定';
	@override String get account => 'アカウント';
	@override String get language => '言語';
	@override String get theme => 'テーマ';
	@override String get termsOfUsePrivacyPolicy => '利用規約・プライバシーポリシー';
	@override String get aboutThisApp => 'このアプリについて';
	@override String get aboutTheDeveloper => '開発者について';
	@override late final _TranslationsMyPageAccountStatusJa accountStatus = _TranslationsMyPageAccountStatusJa._(_root);
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
	@override late final _TranslationsMyPlanPageBookmarkItemsJa bookmarkItems = _TranslationsMyPlanPageBookmarkItemsJa._(_root);
	@override late final _TranslationsMyPlanPageCreatedPlansItemsJa createdPlansItems = _TranslationsMyPlanPageCreatedPlansItemsJa._(_root);
	@override late final _TranslationsMyPlanPageErrorJa error = _TranslationsMyPlanPageErrorJa._(_root);
}

// Path: buddyChatPage
class _TranslationsBuddyChatPageJa implements TranslationsBuddyChatPageEn {
	_TranslationsBuddyChatPageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'Buddyの提案';
	@override String possibleChatCount({required Object possibleChatCount}) => 'メッセージは残り${possibleChatCount}回送信可能です';
	@override late final _TranslationsBuddyChatPageTextFieldsJa textFields = _TranslationsBuddyChatPageTextFieldsJa._(_root);
	@override late final _TranslationsBuddyChatPageButtonsJa buttons = _TranslationsBuddyChatPageButtonsJa._(_root);
	@override late final _TranslationsBuddyChatPagePlaceCardJa placeCard = _TranslationsBuddyChatPagePlaceCardJa._(_root);
	@override late final _TranslationsBuddyChatPageSnackBarJa snackBar = _TranslationsBuddyChatPageSnackBarJa._(_root);
}

// Path: popularTopics
class _TranslationsPopularTopicsJa implements TranslationsPopularTopicsEn {
	_TranslationsPopularTopicsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get sectionName => '人気のトピック';
}

// Path: createPlanPage
class _TranslationsCreatePlanPageJa implements TranslationsCreatePlanPageEn {
	_TranslationsCreatePlanPageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'プランの作成';
	@override late final _TranslationsCreatePlanPageLabelJa label = _TranslationsCreatePlanPageLabelJa._(_root);
	@override late final _TranslationsCreatePlanPageHintTextJa hintText = _TranslationsCreatePlanPageHintTextJa._(_root);
	@override late final _TranslationsCreatePlanPageModalJa modal = _TranslationsCreatePlanPageModalJa._(_root);
	@override List<String> get numberOfPeopleOptions => [
		'1人',
		'2人',
		'3人',
		'4人',
		'5人',
		'6人以上',
	];
	@override List<String> get transportOptions => [
		'電車',
		'徒歩',
		'車',
		'バス',
	];
	@override List<String> get categoryOptions => [
		'子連れ向け',
		'大人向け',
		'エンタメ',
		'アクティビティ',
		'歴史',
	];
	@override List<String> get defaultTopics => [
		'グルメ',
		'ショッピング',
		'アクティビティ',
		'映画',
	];
	@override String get submitButton => 'プランをAIに伝える';
	@override late final _TranslationsCreatePlanPageSnackBarJa snackBar = _TranslationsCreatePlanPageSnackBarJa._(_root);
}

// Path: editProfilePage
class _TranslationsEditProfilePageJa implements TranslationsEditProfilePageEn {
	_TranslationsEditProfilePageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '編集';
	@override late final _TranslationsEditProfilePageTextFieldsJa textFields = _TranslationsEditProfilePageTextFieldsJa._(_root);
	@override late final _TranslationsEditProfilePageButtonsJa buttons = _TranslationsEditProfilePageButtonsJa._(_root);
	@override late final _TranslationsEditProfilePageSnackBarJa snackBar = _TranslationsEditProfilePageSnackBarJa._(_root);
}

// Path: confirmDialog
class _TranslationsConfirmDialogJa implements TranslationsConfirmDialogEn {
	_TranslationsConfirmDialogJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsConfirmDialogAnswersJa answers = _TranslationsConfirmDialogAnswersJa._(_root);
	@override late final _TranslationsConfirmDialogPopPageJa popPage = _TranslationsConfirmDialogPopPageJa._(_root);
	@override late final _TranslationsConfirmDialogCompleteCreatePlanJa completeCreatePlan = _TranslationsConfirmDialogCompleteCreatePlanJa._(_root);
}

// Path: prompt
class _TranslationsPromptJa implements TranslationsPromptEn {
	_TranslationsPromptJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get planProposalMessage => 'こんなプランを考えてみました！いかがですか？';
}

// Path: billDetailsPage
class _TranslationsBillDetailsPageJa implements TranslationsBillDetailsPageEn {
	_TranslationsBillDetailsPageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsBillDetailsPageTitleJa title = _TranslationsBillDetailsPageTitleJa._(_root);
	@override String get description => 'プレミアムプランに加入することで、より快適に渋谷観光をお楽しみいただけます。';
	@override late final _TranslationsBillDetailsPagePricingPlanJa pricingPlan = _TranslationsBillDetailsPagePricingPlanJa._(_root);
	@override late final _TranslationsBillDetailsPageFeaturesJa features = _TranslationsBillDetailsPageFeaturesJa._(_root);
	@override late final _TranslationsBillDetailsPagePricingOptionsJa pricingOptions = _TranslationsBillDetailsPagePricingOptionsJa._(_root);
	@override late final _TranslationsBillDetailsPageRestorePurchaseSectionJa restorePurchaseSection = _TranslationsBillDetailsPageRestorePurchaseSectionJa._(_root);
	@override String get upgradeButton => 'プレミアムにアップグレード';
	@override late final _TranslationsBillDetailsPageSnackBarJa snackBar = _TranslationsBillDetailsPageSnackBarJa._(_root);
}

// Path: planDetailsPage
class _TranslationsPlanDetailsPageJa implements TranslationsPlanDetailsPageEn {
	_TranslationsPlanDetailsPageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPlanDetailsPageDateTimeJa dateTime = _TranslationsPlanDetailsPageDateTimeJa._(_root);
	@override late final _TranslationsPlanDetailsPageItemJa item = _TranslationsPlanDetailsPageItemJa._(_root);
	@override late final _TranslationsPlanDetailsPageSnackBarJa snackBar = _TranslationsPlanDetailsPageSnackBarJa._(_root);
}

// Path: errorPage
class _TranslationsErrorPageJa implements TranslationsErrorPageEn {
	_TranslationsErrorPageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'エラーが発生しました...';
	@override String get message => '通信環境を確認し、もう一度お試しください';
	@override String get retryButton => 'もう一度読み込む';
}

// Path: mapPage
class _TranslationsMapPageJa implements TranslationsMapPageEn {
	_TranslationsMapPageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'マップ';
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
	@override String get deleteAccount => 'アカウント削除';
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
	@override String get deleteAccount => 'アカウントを削除しました。';
	@override String get deleteAccountFailure => 'アカウントの削除に失敗しました。';
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
	@override String get signOut => 'ログアウトしますか？';
	@override String get signOutText => 'アプリの機能を利用するためには再ログインが必要です。';
	@override String get deleteAccount => 'アカウントを削除しますか？';
	@override String get deleteAccountText => 'アカウントを削除すると、すべてのデータが削除されます。';
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
	@override late final _TranslationsAuthenticationSignUpPageTitleJa title = _TranslationsAuthenticationSignUpPageTitleJa._(_root);
	@override late final _TranslationsAuthenticationSignUpPageTextFieldsJa textFields = _TranslationsAuthenticationSignUpPageTextFieldsJa._(_root);
	@override late final _TranslationsAuthenticationSignUpPageButtonJa button = _TranslationsAuthenticationSignUpPageButtonJa._(_root);
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

// Path: authentication.phoneNumberInputPage
class _TranslationsAuthenticationPhoneNumberInputPageJa implements TranslationsAuthenticationPhoneNumberInputPageEn {
	_TranslationsAuthenticationPhoneNumberInputPageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '電話番号を入力,';
	@override late final _TranslationsAuthenticationPhoneNumberInputPageDiscriptionJa discription = _TranslationsAuthenticationPhoneNumberInputPageDiscriptionJa._(_root);
	@override String get phoneNumber => '電話番号';
	@override String get sendSmsCode => 'SMSコードを送信';
	@override late final _TranslationsAuthenticationPhoneNumberInputPageScaffoldMessengerJa scaffoldMessenger = _TranslationsAuthenticationPhoneNumberInputPageScaffoldMessengerJa._(_root);
}

// Path: authentication.smsVerificationPage
class _TranslationsAuthenticationSmsVerificationPageJa implements TranslationsAuthenticationSmsVerificationPageEn {
	_TranslationsAuthenticationSmsVerificationPageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'SMS認証';
	@override String get sendSms => '以下の電話番号にSMSコードを送信しました：';
	@override String get pleaseInputCode => 'コードを入力して、電話番号の認証を完了してください。';
	@override late final _TranslationsAuthenticationSmsVerificationPageResendJa resend = _TranslationsAuthenticationSmsVerificationPageResendJa._(_root);
	@override String get smsCode => 'SMSコード';
	@override String get verify => '認証する';
	@override String get fixPhoneNumber => '電話番号を修正する';
	@override late final _TranslationsAuthenticationSmsVerificationPageScaffoldMessengerJa scaffoldMessenger = _TranslationsAuthenticationSmsVerificationPageScaffoldMessengerJa._(_root);
}

// Path: authentication.firebaseAuth
class _TranslationsAuthenticationFirebaseAuthJa implements TranslationsAuthenticationFirebaseAuthEn {
	_TranslationsAuthenticationFirebaseAuthJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsAuthenticationFirebaseAuthErrorJa error = _TranslationsAuthenticationFirebaseAuthErrorJa._(_root);
}

// Path: myPage.accountStatus
class _TranslationsMyPageAccountStatusJa implements TranslationsMyPageAccountStatusEn {
	_TranslationsMyPageAccountStatusJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMyPageAccountStatusDateTimeJa dateTime = _TranslationsMyPageAccountStatusDateTimeJa._(_root);
	@override String get premium => 'プレミアム会員';
	@override String get standard => 'スタンダード会員';
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
	@override String get korean => '韓国語';
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

// Path: myPlanPage.bookmarkItems
class _TranslationsMyPlanPageBookmarkItemsJa implements TranslationsMyPlanPageBookmarkItemsEn {
	_TranslationsMyPlanPageBookmarkItemsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get nondata => 'ブックマークしている\nプランはありません';
	@override String get reloading => '再読み込み';
}

// Path: myPlanPage.createdPlansItems
class _TranslationsMyPlanPageCreatedPlansItemsJa implements TranslationsMyPlanPageCreatedPlansItemsEn {
	_TranslationsMyPlanPageCreatedPlansItemsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get nondata => 'プランを作成してみよう!';
	@override String get createaplan => 'プランを作成する';
}

// Path: myPlanPage.error
class _TranslationsMyPlanPageErrorJa implements TranslationsMyPlanPageErrorEn {
	_TranslationsMyPlanPageErrorJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get displayError => 'プラン表示時に問題が発生しました。';
	@override String get failedGetId => 'プランIDの取得に失敗しました。';
	@override String get failedGetPlanData => 'プランデータ取得時に問題が発生しました。';
	@override String get failedUnBookmark => 'ブックマーク解除時に問題が発生しました。';
}

// Path: buddyChatPage.textFields
class _TranslationsBuddyChatPageTextFieldsJa implements TranslationsBuddyChatPageTextFieldsEn {
	_TranslationsBuddyChatPageTextFieldsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get message => 'メッセージを入力';
}

// Path: buddyChatPage.buttons
class _TranslationsBuddyChatPageButtonsJa implements TranslationsBuddyChatPageButtonsEn {
	_TranslationsBuddyChatPageButtonsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get send => '完了';
}

// Path: buddyChatPage.placeCard
class _TranslationsBuddyChatPagePlaceCardJa implements TranslationsBuddyChatPagePlaceCardEn {
	_TranslationsBuddyChatPagePlaceCardJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get openingHours => '営業時間';
	@override String get averageAmount => '平均予算';
	@override String get website => 'Webサイト';
}

// Path: buddyChatPage.snackBar
class _TranslationsBuddyChatPageSnackBarJa implements TranslationsBuddyChatPageSnackBarEn {
	_TranslationsBuddyChatPageSnackBarJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsBuddyChatPageSnackBarErrorJa error = _TranslationsBuddyChatPageSnackBarErrorJa._(_root);
}

// Path: createPlanPage.label
class _TranslationsCreatePlanPageLabelJa implements TranslationsCreatePlanPageLabelEn {
	_TranslationsCreatePlanPageLabelJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get location => '目的地';
	@override String get scheduleStart => '開始日';
	@override String get scheduleEnd => '終了日';
	@override String get numberOfPeople => '人数';
	@override String get transport => '交通手段';
	@override String get category => 'カテゴリ';
	@override String get topics => '旅のトピック';
}

// Path: createPlanPage.hintText
class _TranslationsCreatePlanPageHintTextJa implements TranslationsCreatePlanPageHintTextEn {
	_TranslationsCreatePlanPageHintTextJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get location => '渋谷';
}

// Path: createPlanPage.modal
class _TranslationsCreatePlanPageModalJa implements TranslationsCreatePlanPageModalEn {
	_TranslationsCreatePlanPageModalJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '日付を選択';
}

// Path: createPlanPage.snackBar
class _TranslationsCreatePlanPageSnackBarJa implements TranslationsCreatePlanPageSnackBarEn {
	_TranslationsCreatePlanPageSnackBarJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsCreatePlanPageSnackBarErrorJa error = _TranslationsCreatePlanPageSnackBarErrorJa._(_root);
}

// Path: editProfilePage.textFields
class _TranslationsEditProfilePageTextFieldsJa implements TranslationsEditProfilePageTextFieldsEn {
	_TranslationsEditProfilePageTextFieldsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get name => '名前';
}

// Path: editProfilePage.buttons
class _TranslationsEditProfilePageButtonsJa implements TranslationsEditProfilePageButtonsEn {
	_TranslationsEditProfilePageButtonsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get submit => '保存';
}

// Path: editProfilePage.snackBar
class _TranslationsEditProfilePageSnackBarJa implements TranslationsEditProfilePageSnackBarEn {
	_TranslationsEditProfilePageSnackBarJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get success => '更新しました';
	@override late final _TranslationsEditProfilePageSnackBarErrorJa error = _TranslationsEditProfilePageSnackBarErrorJa._(_root);
}

// Path: confirmDialog.answers
class _TranslationsConfirmDialogAnswersJa implements TranslationsConfirmDialogAnswersEn {
	_TranslationsConfirmDialogAnswersJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get yes => 'はい';
	@override String get no => 'いいえ';
}

// Path: confirmDialog.popPage
class _TranslationsConfirmDialogPopPageJa implements TranslationsConfirmDialogPopPageEn {
	_TranslationsConfirmDialogPopPageJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '前の画面に戻りますか？';
	@override String get description => '現在の内容は保存されません';
}

// Path: confirmDialog.completeCreatePlan
class _TranslationsConfirmDialogCompleteCreatePlanJa implements TranslationsConfirmDialogCompleteCreatePlanEn {
	_TranslationsConfirmDialogCompleteCreatePlanJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'プランを確定しますか？';
	@override String get description => '一番最後のメッセージに含まれるプランが保存されます';
}

// Path: billDetailsPage.title
class _TranslationsBillDetailsPageTitleJa implements TranslationsBillDetailsPageTitleEn {
	_TranslationsBillDetailsPageTitleJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get defaultTitle => 'プレミアムプラン';
	@override String get createPlan => '無制限のプラン作成を可能にしますか？';
	@override String get chat => '無制限のチャットを楽しみたいですか？';
}

// Path: billDetailsPage.pricingPlan
class _TranslationsBillDetailsPagePricingPlanJa implements TranslationsBillDetailsPagePricingPlanEn {
	_TranslationsBillDetailsPagePricingPlanJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '料金プラン';
	@override late final _TranslationsBillDetailsPagePricingPlanColumnsJa columns = _TranslationsBillDetailsPagePricingPlanColumnsJa._(_root);
	@override late final _TranslationsBillDetailsPagePricingPlanDetailsJa details = _TranslationsBillDetailsPagePricingPlanDetailsJa._(_root);
}

// Path: billDetailsPage.features
class _TranslationsBillDetailsPageFeaturesJa implements TranslationsBillDetailsPageFeaturesEn {
	_TranslationsBillDetailsPageFeaturesJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => 'グレードごとの機能';
	@override late final _TranslationsBillDetailsPageFeaturesRowsJa rows = _TranslationsBillDetailsPageFeaturesRowsJa._(_root);
	@override late final _TranslationsBillDetailsPageFeaturesColumnsJa columns = _TranslationsBillDetailsPageFeaturesColumnsJa._(_root);
}

// Path: billDetailsPage.pricingOptions
class _TranslationsBillDetailsPagePricingOptionsJa implements TranslationsBillDetailsPagePricingOptionsEn {
	_TranslationsBillDetailsPagePricingOptionsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsBillDetailsPagePricingOptionsOneDayJa oneDay = _TranslationsBillDetailsPagePricingOptionsOneDayJa._(_root);
	@override late final _TranslationsBillDetailsPagePricingOptionsThreeDaysJa threeDays = _TranslationsBillDetailsPagePricingOptionsThreeDaysJa._(_root);
	@override late final _TranslationsBillDetailsPagePricingOptionsFiveDaysJa fiveDays = _TranslationsBillDetailsPagePricingOptionsFiveDaysJa._(_root);
	@override late final _TranslationsBillDetailsPagePricingOptionsSevenDaysJa sevenDays = _TranslationsBillDetailsPagePricingOptionsSevenDaysJa._(_root);
	@override late final _TranslationsBillDetailsPagePricingOptionsUnlimitedJa unlimited = _TranslationsBillDetailsPagePricingOptionsUnlimitedJa._(_root);
}

// Path: billDetailsPage.restorePurchaseSection
class _TranslationsBillDetailsPageRestorePurchaseSectionJa implements TranslationsBillDetailsPageRestorePurchaseSectionEn {
	_TranslationsBillDetailsPageRestorePurchaseSectionJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '購入の復元';
	@override String get description => '過去に、現在と同じAppStoreアカウントやGoogle Playアカウントで購入した有効な購入アイテムがある場合、それらを復元することが可能です。';
	@override String get button => '購入を復元';
}

// Path: billDetailsPage.snackBar
class _TranslationsBillDetailsPageSnackBarJa implements TranslationsBillDetailsPageSnackBarEn {
	_TranslationsBillDetailsPageSnackBarJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsBillDetailsPageSnackBarErrorJa error = _TranslationsBillDetailsPageSnackBarErrorJa._(_root);
}

// Path: planDetailsPage.dateTime
class _TranslationsPlanDetailsPageDateTimeJa implements TranslationsPlanDetailsPageDateTimeEn {
	_TranslationsPlanDetailsPageDateTimeJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String createOn({required Object date}) => '${date}に作られたプラン';
	@override String get dateFormat => 'yyyy年MM月dd日';
}

// Path: planDetailsPage.item
class _TranslationsPlanDetailsPageItemJa implements TranslationsPlanDetailsPageItemEn {
	_TranslationsPlanDetailsPageItemJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get viewOnMap => '地図で見る';
}

// Path: planDetailsPage.snackBar
class _TranslationsPlanDetailsPageSnackBarJa implements TranslationsPlanDetailsPageSnackBarEn {
	_TranslationsPlanDetailsPageSnackBarJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPlanDetailsPageSnackBarErrorJa error = _TranslationsPlanDetailsPageSnackBarErrorJa._(_root);
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

// Path: authentication.signUpPage.title
class _TranslationsAuthenticationSignUpPageTitleJa implements TranslationsAuthenticationSignUpPageTitleEn {
	_TranslationsAuthenticationSignUpPageTitleJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get defaultText => '新規登録';
	@override String get modifyEmail => 'メールアドレスの変更';
}

// Path: authentication.signUpPage.textFields
class _TranslationsAuthenticationSignUpPageTextFieldsJa implements TranslationsAuthenticationSignUpPageTextFieldsEn {
	_TranslationsAuthenticationSignUpPageTextFieldsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get email => 'メールアドレス';
	@override String get password => 'パスワード';
}

// Path: authentication.signUpPage.button
class _TranslationsAuthenticationSignUpPageButtonJa implements TranslationsAuthenticationSignUpPageButtonEn {
	_TranslationsAuthenticationSignUpPageButtonJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get defaultText => '新規登録';
	@override String get modifyEmail => '変更';
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
	@override String get emailVerification => 'メールアドレスの認証が完了していません';
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

// Path: authentication.phoneNumberInputPage.discription
class _TranslationsAuthenticationPhoneNumberInputPageDiscriptionJa implements TranslationsAuthenticationPhoneNumberInputPageDiscriptionEn {
	_TranslationsAuthenticationPhoneNumberInputPageDiscriptionJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get receive => 'SMSコードを受け取るために';
	@override String get internationalFormat => '国際電話番号形式';
	@override String get input => 'で電話番号を入力してください';
}

// Path: authentication.phoneNumberInputPage.scaffoldMessenger
class _TranslationsAuthenticationPhoneNumberInputPageScaffoldMessengerJa implements TranslationsAuthenticationPhoneNumberInputPageScaffoldMessengerEn {
	_TranslationsAuthenticationPhoneNumberInputPageScaffoldMessengerJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get empty => '電話番号を入力してください';
	@override String get success => 'SMSコードを送信しました';
	@override String get error => 'SMSコードの送信に失敗しました。電話番号を確認してもう一度お試しください。';
	@override String get unexpectedError => '予期しないエラーが発生しました:';
	@override String get phoneNumberVerificaiton => '電話番号認証が完了していません';
}

// Path: authentication.smsVerificationPage.resend
class _TranslationsAuthenticationSmsVerificationPageResendJa implements TranslationsAuthenticationSmsVerificationPageResendEn {
	_TranslationsAuthenticationSmsVerificationPageResendJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get title => '再送信する';
	@override String get untilRetransmissionPossible => '再送信可能まで';
	@override String get second => '秒';
}

// Path: authentication.smsVerificationPage.scaffoldMessenger
class _TranslationsAuthenticationSmsVerificationPageScaffoldMessengerJa implements TranslationsAuthenticationSmsVerificationPageScaffoldMessengerEn {
	_TranslationsAuthenticationSmsVerificationPageScaffoldMessengerJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get empty => 'SMSコードを入力してください';
	@override String get success => '認証に成功しました';
	@override String get error => '認証に失敗しました。SMSコードをご確認の上、再度お試しください。';
	@override String get unexpectedError => '予期しないエラーが発生しました:';
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

// Path: myPage.accountStatus.dateTime
class _TranslationsMyPageAccountStatusDateTimeJa implements TranslationsMyPageAccountStatusDateTimeEn {
	_TranslationsMyPageAccountStatusDateTimeJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String registeredOn({required Object date}) => '${date}に登録';
	@override String get registeredOnFormat => 'yyyy年MM月dd日';
	@override String validUntil({required Object date}) => '${date}まで';
	@override String get validUntilFormat => 'yyyy年MM月dd日 HH時mm分';
}

// Path: buddyChatPage.snackBar.error
class _TranslationsBuddyChatPageSnackBarErrorJa implements TranslationsBuddyChatPageSnackBarErrorEn {
	_TranslationsBuddyChatPageSnackBarErrorJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get failedRecieveMessage => '返信の受信に失敗しました。時間をおいて再度お試しください';
	@override String get failedCompleteCreatePlan => 'プランの作成に失敗しました。時間をおいて再度お試しください';
}

// Path: createPlanPage.snackBar.error
class _TranslationsCreatePlanPageSnackBarErrorJa implements TranslationsCreatePlanPageSnackBarErrorEn {
	_TranslationsCreatePlanPageSnackBarErrorJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get foundUnSelectedField => '選択されていない項目があります 全ての項目を選択してください';
	@override String get invalidDateRange => '開始日は終了日より前に設定してください。';
}

// Path: editProfilePage.snackBar.error
class _TranslationsEditProfilePageSnackBarErrorJa implements TranslationsEditProfilePageSnackBarErrorEn {
	_TranslationsEditProfilePageSnackBarErrorJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get noChange => '変更がありません';
	@override String get failedToUpdate => '更新に失敗しました しばらくしてから再度お試しください';
	@override String get failedToPickImage => '画像の選択に失敗しました しばらくしてから再度お試しください';
}

// Path: billDetailsPage.pricingPlan.columns
class _TranslationsBillDetailsPagePricingPlanColumnsJa implements TranslationsBillDetailsPagePricingPlanColumnsEn {
	_TranslationsBillDetailsPagePricingPlanColumnsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get standard => 'スタンダード';
	@override String get premium => 'プレミアム';
}

// Path: billDetailsPage.pricingPlan.details
class _TranslationsBillDetailsPagePricingPlanDetailsJa implements TranslationsBillDetailsPagePricingPlanDetailsEn {
	_TranslationsBillDetailsPagePricingPlanDetailsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get free => '無料 🎉';
	@override late final _TranslationsBillDetailsPagePricingPlanDetailsPremiumPriceJa premiumPrice = _TranslationsBillDetailsPagePricingPlanDetailsPremiumPriceJa._(_root);
}

// Path: billDetailsPage.features.rows
class _TranslationsBillDetailsPageFeaturesRowsJa implements TranslationsBillDetailsPageFeaturesRowsEn {
	_TranslationsBillDetailsPageFeaturesRowsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get planCreationLimit => 'プランの作成可能回数';
	@override String get chatLimit => 'プラン作成中のチャット可能回数';
	@override String get timelineAccess => '全プラン一覧のタイムライン閲覧';
	@override String get adFree => '広告の非表示';
	@override String get exclusiveFeatures => 'プランの認証機能';
}

// Path: billDetailsPage.features.columns
class _TranslationsBillDetailsPageFeaturesColumnsJa implements TranslationsBillDetailsPageFeaturesColumnsEn {
	_TranslationsBillDetailsPageFeaturesColumnsJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsBillDetailsPageFeaturesColumnsStandardJa standard = _TranslationsBillDetailsPageFeaturesColumnsStandardJa._(_root);
	@override late final _TranslationsBillDetailsPageFeaturesColumnsPremiumJa premium = _TranslationsBillDetailsPageFeaturesColumnsPremiumJa._(_root);
}

// Path: billDetailsPage.pricingOptions.oneDay
class _TranslationsBillDetailsPagePricingOptionsOneDayJa implements TranslationsBillDetailsPagePricingOptionsOneDayEn {
	_TranslationsBillDetailsPagePricingOptionsOneDayJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get duration => '1日';
	@override String get discount => '';
	@override String get price => '300円';
}

// Path: billDetailsPage.pricingOptions.threeDays
class _TranslationsBillDetailsPagePricingOptionsThreeDaysJa implements TranslationsBillDetailsPagePricingOptionsThreeDaysEn {
	_TranslationsBillDetailsPagePricingOptionsThreeDaysJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get duration => '3日';
	@override String get discount => '-5%';
	@override String get price => '890円';
}

// Path: billDetailsPage.pricingOptions.fiveDays
class _TranslationsBillDetailsPagePricingOptionsFiveDaysJa implements TranslationsBillDetailsPagePricingOptionsFiveDaysEn {
	_TranslationsBillDetailsPagePricingOptionsFiveDaysJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get duration => '5日';
	@override String get discount => '-7.5%';
	@override String get price => '1,387円';
}

// Path: billDetailsPage.pricingOptions.sevenDays
class _TranslationsBillDetailsPagePricingOptionsSevenDaysJa implements TranslationsBillDetailsPagePricingOptionsSevenDaysEn {
	_TranslationsBillDetailsPagePricingOptionsSevenDaysJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get duration => '7日';
	@override String get discount => '-10%';
	@override String get price => '2,070円';
}

// Path: billDetailsPage.pricingOptions.unlimited
class _TranslationsBillDetailsPagePricingOptionsUnlimitedJa implements TranslationsBillDetailsPagePricingOptionsUnlimitedEn {
	_TranslationsBillDetailsPagePricingOptionsUnlimitedJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get duration => 'Unlimited';
	@override String get discount => '-20%';
	@override String get price => '25,800円';
}

// Path: billDetailsPage.snackBar.error
class _TranslationsBillDetailsPageSnackBarErrorJa implements TranslationsBillDetailsPageSnackBarErrorEn {
	_TranslationsBillDetailsPageSnackBarErrorJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get failedToPurchase => '購入に失敗しました。時間をおいて再度お試しください。';
	@override String get PurchaseHistoryNotFound => '購入履歴がありません。';
	@override String get failedToRestorePurchase => '購入の復元に失敗しました。時間をおいて再度お試しください';
}

// Path: planDetailsPage.snackBar.error
class _TranslationsPlanDetailsPageSnackBarErrorJa implements TranslationsPlanDetailsPageSnackBarErrorEn {
	_TranslationsPlanDetailsPageSnackBarErrorJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get failedToUpdateBookmark => 'ブックマークの更新に失敗しました しばらくしてから再度お試しください';
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

// Path: billDetailsPage.pricingPlan.details.premiumPrice
class _TranslationsBillDetailsPagePricingPlanDetailsPremiumPriceJa implements TranslationsBillDetailsPagePricingPlanDetailsPremiumPriceEn {
	_TranslationsBillDetailsPagePricingPlanDetailsPremiumPriceJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get days => '日数分購入';
	@override String daily({required Object price}) => '・1日 ${price}';
	@override String threeDays({required Object price}) => '・3日 ${price}';
	@override String fiveDays({required Object price}) => '・5日 ${price}';
	@override String sevenDays({required Object price}) => '・7日 ${price}';
	@override String get or => 'または';
	@override String get unlimited => 'Unlimited';
	@override String unlimitedPrice({required Object price}) => '${price}';
}

// Path: billDetailsPage.features.columns.standard
class _TranslationsBillDetailsPageFeaturesColumnsStandardJa implements TranslationsBillDetailsPageFeaturesColumnsStandardEn {
	_TranslationsBillDetailsPageFeaturesColumnsStandardJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get label => 'スタンダード';
	@override String get planCreationLimit => '2回';
	@override String get chatLimit => '2回';
}

// Path: billDetailsPage.features.columns.premium
class _TranslationsBillDetailsPageFeaturesColumnsPremiumJa implements TranslationsBillDetailsPageFeaturesColumnsPremiumEn {
	_TranslationsBillDetailsPageFeaturesColumnsPremiumJa._(this._root);

	final TranslationsJa _root; // ignore: unused_field

	// Translations
	@override String get label => 'プレミアム';
	@override String get planCreationLimit => '無制限';
	@override String get chatLimit => '無制限';
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
			case 'accountPage.items.deleteAccount': return 'アカウント削除';
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
			case 'accountPage.snackBar.deleteAccount': return 'アカウントを削除しました。';
			case 'accountPage.snackBar.deleteAccountFailure': return 'アカウントの削除に失敗しました。';
			case 'accountPage.diaLog.yes': return 'はい';
			case 'accountPage.diaLog.no': return 'いいえ';
			case 'accountPage.diaLog.title': return 'アカウント連携解除の確認';
			case 'accountPage.diaLog.googleText': return '現在のアカウントとGoogleアカウントの連携を解除しますか？';
			case 'accountPage.diaLog.appleText': return '現在のアカウントとAppleアカウントの連携を解除しますか？';
			case 'accountPage.diaLog.signOut': return 'ログアウトしますか？';
			case 'accountPage.diaLog.signOutText': return 'アプリの機能を利用するためには再ログインが必要です。';
			case 'accountPage.diaLog.deleteAccount': return 'アカウントを削除しますか？';
			case 'accountPage.diaLog.deleteAccountText': return 'アカウントを削除すると、すべてのデータが削除されます。';
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
			case 'authentication.signUpPage.title.defaultText': return '新規登録';
			case 'authentication.signUpPage.title.modifyEmail': return 'メールアドレスの変更';
			case 'authentication.signUpPage.textFields.email': return 'メールアドレス';
			case 'authentication.signUpPage.textFields.password': return 'パスワード';
			case 'authentication.signUpPage.button.defaultText': return '新規登録';
			case 'authentication.signUpPage.button.modifyEmail': return '変更';
			case 'authentication.emailVerificationPage.title': return 'メールアドレスの確認';
			case 'authentication.emailVerificationPage.descriptionForDestination': return ({required Object email}) => '入力された${email}に確認メールを送信します';
			case 'authentication.emailVerificationPage.descriptionForCoolDown': return '確認メールの再送信は、60秒ごとに1回可能です。';
			case 'authentication.emailVerificationPage.buttons.sendEmail': return '確認メールを送信';
			case 'authentication.emailVerificationPage.buttons.resendEmail': return '確認メールを再送信';
			case 'authentication.emailVerificationPage.buttons.toNext': return '次へ';
			case 'authentication.emailVerificationPage.buttons.retypeEmail': return 'メールアドレスの修正';
			case 'authentication.emailVerificationPage.snackBar.success': return '送信が完了しました';
			case 'authentication.emailVerificationPage.snackBar.emailVerification': return 'メールアドレスの認証が完了していません';
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
			case 'authentication.phoneNumberInputPage.title': return '電話番号を入力,';
			case 'authentication.phoneNumberInputPage.discription.receive': return 'SMSコードを受け取るために';
			case 'authentication.phoneNumberInputPage.discription.internationalFormat': return '国際電話番号形式';
			case 'authentication.phoneNumberInputPage.discription.input': return 'で電話番号を入力してください';
			case 'authentication.phoneNumberInputPage.phoneNumber': return '電話番号';
			case 'authentication.phoneNumberInputPage.sendSmsCode': return 'SMSコードを送信';
			case 'authentication.phoneNumberInputPage.scaffoldMessenger.empty': return '電話番号を入力してください';
			case 'authentication.phoneNumberInputPage.scaffoldMessenger.success': return 'SMSコードを送信しました';
			case 'authentication.phoneNumberInputPage.scaffoldMessenger.error': return 'SMSコードの送信に失敗しました。電話番号を確認してもう一度お試しください。';
			case 'authentication.phoneNumberInputPage.scaffoldMessenger.unexpectedError': return '予期しないエラーが発生しました:';
			case 'authentication.phoneNumberInputPage.scaffoldMessenger.phoneNumberVerificaiton': return '電話番号認証が完了していません';
			case 'authentication.smsVerificationPage.title': return 'SMS認証';
			case 'authentication.smsVerificationPage.sendSms': return '以下の電話番号にSMSコードを送信しました：';
			case 'authentication.smsVerificationPage.pleaseInputCode': return 'コードを入力して、電話番号の認証を完了してください。';
			case 'authentication.smsVerificationPage.resend.title': return '再送信する';
			case 'authentication.smsVerificationPage.resend.untilRetransmissionPossible': return '再送信可能まで';
			case 'authentication.smsVerificationPage.resend.second': return '秒';
			case 'authentication.smsVerificationPage.smsCode': return 'SMSコード';
			case 'authentication.smsVerificationPage.verify': return '認証する';
			case 'authentication.smsVerificationPage.fixPhoneNumber': return '電話番号を修正する';
			case 'authentication.smsVerificationPage.scaffoldMessenger.empty': return 'SMSコードを入力してください';
			case 'authentication.smsVerificationPage.scaffoldMessenger.success': return '認証に成功しました';
			case 'authentication.smsVerificationPage.scaffoldMessenger.error': return '認証に失敗しました。SMSコードをご確認の上、再度お試しください。';
			case 'authentication.smsVerificationPage.scaffoldMessenger.unexpectedError': return '予期しないエラーが発生しました:';
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
			case 'validation.usernameRequired': return 'ユーザーネームを入力してください';
			case 'validation.usernameMaxLength': return 'ユーザーネームは8文字以内である必要があります';
			case 'myPage.unregisteredUserName': return '未登録';
			case 'myPage.editProfile': return 'プロフィール編集';
			case 'myPage.premiumPlan': return 'プレミアムプラン';
			case 'myPage.details': return '詳細';
			case 'myPage.settings': return '設定';
			case 'myPage.account': return 'アカウント';
			case 'myPage.language': return '言語';
			case 'myPage.theme': return 'テーマ';
			case 'myPage.termsOfUsePrivacyPolicy': return '利用規約・プライバシーポリシー';
			case 'myPage.aboutThisApp': return 'このアプリについて';
			case 'myPage.aboutTheDeveloper': return '開発者について';
			case 'myPage.accountStatus.dateTime.registeredOn': return ({required Object date}) => '${date}に登録';
			case 'myPage.accountStatus.dateTime.registeredOnFormat': return 'yyyy年MM月dd日';
			case 'myPage.accountStatus.dateTime.validUntil': return ({required Object date}) => '${date}まで';
			case 'myPage.accountStatus.dateTime.validUntilFormat': return 'yyyy年MM月dd日 HH時mm分';
			case 'myPage.accountStatus.premium': return 'プレミアム会員';
			case 'myPage.accountStatus.standard': return 'スタンダード会員';
			case 'changeLanguagePage.title': return '言語';
			case 'changeLanguagePage.items.japanese': return '日本語';
			case 'changeLanguagePage.items.english': return '英語';
			case 'changeLanguagePage.items.simplifiedChinese': return '中国語（簡体字）';
			case 'changeLanguagePage.items.traditionalChinese': return '中国語（繁体字）';
			case 'changeLanguagePage.items.korean': return '韓国語';
			case 'changeThemePage.title': return 'テーマ';
			case 'changeThemePage.items.system': return 'システム';
			case 'changeThemePage.items.light': return 'ライト';
			case 'changeThemePage.items.dark': return 'ダーク';
			case 'myPlanPage.title': return 'マイプラン';
			case 'myPlanPage.tabs.createdPlans': return '作成したプラン';
			case 'myPlanPage.tabs.bookmark': return 'ブックマーク';
			case 'myPlanPage.bookmarkItems.nondata': return 'ブックマークしている\nプランはありません';
			case 'myPlanPage.bookmarkItems.reloading': return '再読み込み';
			case 'myPlanPage.createdPlansItems.nondata': return 'プランを作成してみよう!';
			case 'myPlanPage.createdPlansItems.createaplan': return 'プランを作成する';
			case 'myPlanPage.error.displayError': return 'プラン表示時に問題が発生しました。';
			case 'myPlanPage.error.failedGetId': return 'プランIDの取得に失敗しました。';
			case 'myPlanPage.error.failedGetPlanData': return 'プランデータ取得時に問題が発生しました。';
			case 'myPlanPage.error.failedUnBookmark': return 'ブックマーク解除時に問題が発生しました。';
			case 'buddyChatPage.title': return 'Buddyの提案';
			case 'buddyChatPage.possibleChatCount': return ({required Object possibleChatCount}) => 'メッセージは残り${possibleChatCount}回送信可能です';
			case 'buddyChatPage.textFields.message': return 'メッセージを入力';
			case 'buddyChatPage.buttons.send': return '完了';
			case 'buddyChatPage.placeCard.openingHours': return '営業時間';
			case 'buddyChatPage.placeCard.averageAmount': return '平均予算';
			case 'buddyChatPage.placeCard.website': return 'Webサイト';
			case 'buddyChatPage.snackBar.error.failedRecieveMessage': return '返信の受信に失敗しました。時間をおいて再度お試しください';
			case 'buddyChatPage.snackBar.error.failedCompleteCreatePlan': return 'プランの作成に失敗しました。時間をおいて再度お試しください';
			case 'popularTopics.sectionName': return '人気のトピック';
			case 'createPlanPage.title': return 'プランの作成';
			case 'createPlanPage.label.location': return '目的地';
			case 'createPlanPage.label.scheduleStart': return '開始日';
			case 'createPlanPage.label.scheduleEnd': return '終了日';
			case 'createPlanPage.label.numberOfPeople': return '人数';
			case 'createPlanPage.label.transport': return '交通手段';
			case 'createPlanPage.label.category': return 'カテゴリ';
			case 'createPlanPage.label.topics': return '旅のトピック';
			case 'createPlanPage.hintText.location': return '渋谷';
			case 'createPlanPage.modal.title': return '日付を選択';
			case 'createPlanPage.numberOfPeopleOptions.0': return '1人';
			case 'createPlanPage.numberOfPeopleOptions.1': return '2人';
			case 'createPlanPage.numberOfPeopleOptions.2': return '3人';
			case 'createPlanPage.numberOfPeopleOptions.3': return '4人';
			case 'createPlanPage.numberOfPeopleOptions.4': return '5人';
			case 'createPlanPage.numberOfPeopleOptions.5': return '6人以上';
			case 'createPlanPage.transportOptions.0': return '電車';
			case 'createPlanPage.transportOptions.1': return '徒歩';
			case 'createPlanPage.transportOptions.2': return '車';
			case 'createPlanPage.transportOptions.3': return 'バス';
			case 'createPlanPage.categoryOptions.0': return '子連れ向け';
			case 'createPlanPage.categoryOptions.1': return '大人向け';
			case 'createPlanPage.categoryOptions.2': return 'エンタメ';
			case 'createPlanPage.categoryOptions.3': return 'アクティビティ';
			case 'createPlanPage.categoryOptions.4': return '歴史';
			case 'createPlanPage.defaultTopics.0': return 'グルメ';
			case 'createPlanPage.defaultTopics.1': return 'ショッピング';
			case 'createPlanPage.defaultTopics.2': return 'アクティビティ';
			case 'createPlanPage.defaultTopics.3': return '映画';
			case 'createPlanPage.submitButton': return 'プランをAIに伝える';
			case 'createPlanPage.snackBar.error.foundUnSelectedField': return '選択されていない項目があります 全ての項目を選択してください';
			case 'createPlanPage.snackBar.error.invalidDateRange': return '開始日は終了日より前に設定してください。';
			case 'editProfilePage.title': return '編集';
			case 'editProfilePage.textFields.name': return '名前';
			case 'editProfilePage.buttons.submit': return '保存';
			case 'editProfilePage.snackBar.success': return '更新しました';
			case 'editProfilePage.snackBar.error.noChange': return '変更がありません';
			case 'editProfilePage.snackBar.error.failedToUpdate': return '更新に失敗しました しばらくしてから再度お試しください';
			case 'editProfilePage.snackBar.error.failedToPickImage': return '画像の選択に失敗しました しばらくしてから再度お試しください';
			case 'confirmDialog.answers.yes': return 'はい';
			case 'confirmDialog.answers.no': return 'いいえ';
			case 'confirmDialog.popPage.title': return '前の画面に戻りますか？';
			case 'confirmDialog.popPage.description': return '現在の内容は保存されません';
			case 'confirmDialog.completeCreatePlan.title': return 'プランを確定しますか？';
			case 'confirmDialog.completeCreatePlan.description': return '一番最後のメッセージに含まれるプランが保存されます';
			case 'prompt.planProposalMessage': return 'こんなプランを考えてみました！いかがですか？';
			case 'billDetailsPage.title.defaultTitle': return 'プレミアムプラン';
			case 'billDetailsPage.title.createPlan': return '無制限のプラン作成を可能にしますか？';
			case 'billDetailsPage.title.chat': return '無制限のチャットを楽しみたいですか？';
			case 'billDetailsPage.description': return 'プレミアムプランに加入することで、より快適に渋谷観光をお楽しみいただけます。';
			case 'billDetailsPage.pricingPlan.title': return '料金プラン';
			case 'billDetailsPage.pricingPlan.columns.standard': return 'スタンダード';
			case 'billDetailsPage.pricingPlan.columns.premium': return 'プレミアム';
			case 'billDetailsPage.pricingPlan.details.free': return '無料 🎉';
			case 'billDetailsPage.pricingPlan.details.premiumPrice.days': return '日数分購入';
			case 'billDetailsPage.pricingPlan.details.premiumPrice.daily': return ({required Object price}) => '・1日 ${price}';
			case 'billDetailsPage.pricingPlan.details.premiumPrice.threeDays': return ({required Object price}) => '・3日 ${price}';
			case 'billDetailsPage.pricingPlan.details.premiumPrice.fiveDays': return ({required Object price}) => '・5日 ${price}';
			case 'billDetailsPage.pricingPlan.details.premiumPrice.sevenDays': return ({required Object price}) => '・7日 ${price}';
			case 'billDetailsPage.pricingPlan.details.premiumPrice.or': return 'または';
			case 'billDetailsPage.pricingPlan.details.premiumPrice.unlimited': return 'Unlimited';
			case 'billDetailsPage.pricingPlan.details.premiumPrice.unlimitedPrice': return ({required Object price}) => '${price}';
			case 'billDetailsPage.features.title': return 'グレードごとの機能';
			case 'billDetailsPage.features.rows.planCreationLimit': return 'プランの作成可能回数';
			case 'billDetailsPage.features.rows.chatLimit': return 'プラン作成中のチャット可能回数';
			case 'billDetailsPage.features.rows.timelineAccess': return '全プラン一覧のタイムライン閲覧';
			case 'billDetailsPage.features.rows.adFree': return '広告の非表示';
			case 'billDetailsPage.features.rows.exclusiveFeatures': return 'プランの認証機能';
			case 'billDetailsPage.features.columns.standard.label': return 'スタンダード';
			case 'billDetailsPage.features.columns.standard.planCreationLimit': return '2回';
			case 'billDetailsPage.features.columns.standard.chatLimit': return '2回';
			case 'billDetailsPage.features.columns.premium.label': return 'プレミアム';
			case 'billDetailsPage.features.columns.premium.planCreationLimit': return '無制限';
			case 'billDetailsPage.features.columns.premium.chatLimit': return '無制限';
			case 'billDetailsPage.pricingOptions.oneDay.duration': return '1日';
			case 'billDetailsPage.pricingOptions.oneDay.discount': return '';
			case 'billDetailsPage.pricingOptions.oneDay.price': return '300円';
			case 'billDetailsPage.pricingOptions.threeDays.duration': return '3日';
			case 'billDetailsPage.pricingOptions.threeDays.discount': return '-5%';
			case 'billDetailsPage.pricingOptions.threeDays.price': return '890円';
			case 'billDetailsPage.pricingOptions.fiveDays.duration': return '5日';
			case 'billDetailsPage.pricingOptions.fiveDays.discount': return '-7.5%';
			case 'billDetailsPage.pricingOptions.fiveDays.price': return '1,387円';
			case 'billDetailsPage.pricingOptions.sevenDays.duration': return '7日';
			case 'billDetailsPage.pricingOptions.sevenDays.discount': return '-10%';
			case 'billDetailsPage.pricingOptions.sevenDays.price': return '2,070円';
			case 'billDetailsPage.pricingOptions.unlimited.duration': return 'Unlimited';
			case 'billDetailsPage.pricingOptions.unlimited.discount': return '-20%';
			case 'billDetailsPage.pricingOptions.unlimited.price': return '25,800円';
			case 'billDetailsPage.restorePurchaseSection.title': return '購入の復元';
			case 'billDetailsPage.restorePurchaseSection.description': return '過去に、現在と同じAppStoreアカウントやGoogle Playアカウントで購入した有効な購入アイテムがある場合、それらを復元することが可能です。';
			case 'billDetailsPage.restorePurchaseSection.button': return '購入を復元';
			case 'billDetailsPage.upgradeButton': return 'プレミアムにアップグレード';
			case 'billDetailsPage.snackBar.error.failedToPurchase': return '購入に失敗しました。時間をおいて再度お試しください。';
			case 'billDetailsPage.snackBar.error.PurchaseHistoryNotFound': return '購入履歴がありません。';
			case 'billDetailsPage.snackBar.error.failedToRestorePurchase': return '購入の復元に失敗しました。時間をおいて再度お試しください';
			case 'planDetailsPage.dateTime.createOn': return ({required Object date}) => '${date}に作られたプラン';
			case 'planDetailsPage.dateTime.dateFormat': return 'yyyy年MM月dd日';
			case 'planDetailsPage.item.viewOnMap': return '地図で見る';
			case 'planDetailsPage.snackBar.error.failedToUpdateBookmark': return 'ブックマークの更新に失敗しました しばらくしてから再度お試しください';
			case 'locales.en': return '英語';
			case 'locales.ja': return '日本語';
			case 'locales.zh': return '中国語';
			case 'locales.ko': return '韓国語';
			case 'errorPage.title': return 'エラーが発生しました...';
			case 'errorPage.message': return '通信環境を確認し、もう一度お試しください';
			case 'errorPage.retryButton': return 'もう一度読み込む';
			case 'mapPage.title': return 'マップ';
			default: return null;
		}
	}
}

