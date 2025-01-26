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
class TranslationsKr implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsKr({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.kr,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <kr>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsKr _root = this; // ignore: unused_field

	// Translations
	@override late final _TranslationsNavigationBarKr navigationBar = _TranslationsNavigationBarKr._(_root);
	@override late final _TranslationsHomePageKr homePage = _TranslationsHomePageKr._(_root);
	@override late final _TranslationsAccountPageKr accountPage = _TranslationsAccountPageKr._(_root);
	@override late final _TranslationsAuthenticationKr authentication = _TranslationsAuthenticationKr._(_root);
	@override late final _TranslationsValidationKr validation = _TranslationsValidationKr._(_root);
	@override late final _TranslationsMyPageKr myPage = _TranslationsMyPageKr._(_root);
	@override late final _TranslationsChangeLanguagePageKr changeLanguagePage = _TranslationsChangeLanguagePageKr._(_root);
	@override late final _TranslationsChangeThemePageKr changeThemePage = _TranslationsChangeThemePageKr._(_root);
	@override late final _TranslationsMyPlanPageKr myPlanPage = _TranslationsMyPlanPageKr._(_root);
	@override late final _TranslationsBuddyChatPageKr buddyChatPage = _TranslationsBuddyChatPageKr._(_root);
	@override late final _TranslationsPopularTopicsKr popularTopics = _TranslationsPopularTopicsKr._(_root);
	@override late final _TranslationsCreatePlanPageKr createPlanPage = _TranslationsCreatePlanPageKr._(_root);
	@override late final _TranslationsEditProfilePageKr editProfilePage = _TranslationsEditProfilePageKr._(_root);
	@override late final _TranslationsConfirmDialogKr confirmDialog = _TranslationsConfirmDialogKr._(_root);
	@override late final _TranslationsPromptKr prompt = _TranslationsPromptKr._(_root);
	@override late final _TranslationsBillDetailsPageKr billDetailsPage = _TranslationsBillDetailsPageKr._(_root);
	@override late final _TranslationsPlanDetailsPageKr planDetailsPage = _TranslationsPlanDetailsPageKr._(_root);
	@override Map<String, String> get locales => {
		'en': '영어',
		'ja': '일본어',
		'zh': '중국어',
		'kr': '한국어',
	};
	@override late final _TranslationsErrorPageKr errorPage = _TranslationsErrorPageKr._(_root);
	@override late final _TranslationsMapPageKr mapPage = _TranslationsMapPageKr._(_root);
}

// Path: navigationBar
class _TranslationsNavigationBarKr implements TranslationsNavigationBarEn {
	_TranslationsNavigationBarKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNavigationBarItemsKr items = _TranslationsNavigationBarItemsKr._(_root);
}

// Path: homePage
class _TranslationsHomePageKr implements TranslationsHomePageEn {
	_TranslationsHomePageKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomePagePopularPlansKr popularPlans = _TranslationsHomePagePopularPlansKr._(_root);
	@override late final _TranslationsHomePagePopularTopicsKr popularTopics = _TranslationsHomePagePopularTopicsKr._(_root);
	@override late final _TranslationsHomePageRecentPlansKr recentPlans = _TranslationsHomePageRecentPlansKr._(_root);
}

// Path: accountPage
class _TranslationsAccountPageKr implements TranslationsAccountPageEn {
	_TranslationsAccountPageKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get title => '계정';
	@override late final _TranslationsAccountPageItemsKr items = _TranslationsAccountPageItemsKr._(_root);
	@override late final _TranslationsAccountPageSnackBarKr snackBar = _TranslationsAccountPageSnackBarKr._(_root);
	@override late final _TranslationsAccountPageDiaLogKr diaLog = _TranslationsAccountPageDiaLogKr._(_root);
}

// Path: authentication
class _TranslationsAuthenticationKr implements TranslationsAuthenticationEn {
	_TranslationsAuthenticationKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsAuthenticationSignInPageKr signInPage = _TranslationsAuthenticationSignInPageKr._(_root);
	@override late final _TranslationsAuthenticationResetPasswordPageKr resetPasswordPage = _TranslationsAuthenticationResetPasswordPageKr._(_root);
	@override late final _TranslationsAuthenticationSignUpPageKr signUpPage = _TranslationsAuthenticationSignUpPageKr._(_root);
	@override late final _TranslationsAuthenticationEmailVerificationPageKr emailVerificationPage = _TranslationsAuthenticationEmailVerificationPageKr._(_root);
	@override late final _TranslationsAuthenticationRegisterProfilePageKr registerProfilePage = _TranslationsAuthenticationRegisterProfilePageKr._(_root);
	@override late final _TranslationsAuthenticationCompleteSendEmailPageKr completeSendEmailPage = _TranslationsAuthenticationCompleteSendEmailPageKr._(_root);
	@override late final _TranslationsAuthenticationFirebaseAuthKr firebaseAuth = _TranslationsAuthenticationFirebaseAuthKr._(_root);
}

// Path: validation
class _TranslationsValidationKr implements TranslationsValidationEn {
	_TranslationsValidationKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get emailRequired => '이메일 주소를 입력해주세요.';
	@override String get emailInvalid => '이메일 주소 형식이 올바르지 않습니다.';
	@override String get passwordRequired => '비밀번호를 입력해주세요.';
	@override String get passwordShort => '비밀번호는 최소 8자 이상이어야 합니다.';
	@override String get passwordWeak => '비밀번호는 영문과 숫자를 조합해주세요.';
	@override String get passwordMatch => '비밀번호가 일치하지 않습니다.';
	@override String get informationRequired => '정보를 입력해주세요.';
	@override String get urlInvalid => 'URL 형식이 올바르지 않습니다.';
	@override String get usernameRequired => '사용자 이름을 입력해주세요.';
	@override String get usernameMaxLength => '사용자 이름은 8자 이하여야 합니다.';
}

// Path: myPage
class _TranslationsMyPageKr implements TranslationsMyPageEn {
	_TranslationsMyPageKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get unregisteredUserName => '미등록';
	@override String get editProfile => '프로필 편집';
	@override String get premiumPlan => '프리미엄 플랜';
	@override String get details => '상세 정보';
	@override String get settings => '설정';
	@override String get account => '계정';
	@override String get language => '언어';
	@override String get theme => '테마';
	@override String get termsOfUsePrivacyPolicy => '이용약관 및 개인정보 처리방침';
	@override String get aboutThisApp => '앱 정보';
	@override String get aboutTheDeveloper => '개발자 정보';
	@override late final _TranslationsMyPageAccountStatusKr accountStatus = _TranslationsMyPageAccountStatusKr._(_root);
}

// Path: changeLanguagePage
class _TranslationsChangeLanguagePageKr implements TranslationsChangeLanguagePageEn {
	_TranslationsChangeLanguagePageKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get title => '언어';
	@override late final _TranslationsChangeLanguagePageItemsKr items = _TranslationsChangeLanguagePageItemsKr._(_root);
}

// Path: changeThemePage
class _TranslationsChangeThemePageKr implements TranslationsChangeThemePageEn {
	_TranslationsChangeThemePageKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get title => '테마';
	@override late final _TranslationsChangeThemePageItemsKr items = _TranslationsChangeThemePageItemsKr._(_root);
}

// Path: myPlanPage
class _TranslationsMyPlanPageKr implements TranslationsMyPlanPageEn {
	_TranslationsMyPlanPageKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get title => '내 플랜';
	@override late final _TranslationsMyPlanPageTabsKr tabs = _TranslationsMyPlanPageTabsKr._(_root);
	@override late final _TranslationsMyPlanPageBookmarkItemsKr bookmarkItems = _TranslationsMyPlanPageBookmarkItemsKr._(_root);
	@override late final _TranslationsMyPlanPageCreatedPlansItemsKr createdPlansItems = _TranslationsMyPlanPageCreatedPlansItemsKr._(_root);
	@override late final _TranslationsMyPlanPageErrorKr error = _TranslationsMyPlanPageErrorKr._(_root);
}

// Path: buddyChatPage
class _TranslationsBuddyChatPageKr implements TranslationsBuddyChatPageEn {
	_TranslationsBuddyChatPageKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get title => '버디의 제안';
	@override String possibleChatCount({required Object possibleChatCount}) => '메시지를 ${possibleChatCount}번 더 보낼 수 있습니다.';
	@override late final _TranslationsBuddyChatPageTextFieldsKr textFields = _TranslationsBuddyChatPageTextFieldsKr._(_root);
	@override late final _TranslationsBuddyChatPageButtonsKr buttons = _TranslationsBuddyChatPageButtonsKr._(_root);
	@override late final _TranslationsBuddyChatPagePlaceCardKr placeCard = _TranslationsBuddyChatPagePlaceCardKr._(_root);
	@override late final _TranslationsBuddyChatPageSnackBarKr snackBar = _TranslationsBuddyChatPageSnackBarKr._(_root);
}

// Path: popularTopics
class _TranslationsPopularTopicsKr implements TranslationsPopularTopicsEn {
	_TranslationsPopularTopicsKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get sectionName => '인기 주제';
}

// Path: createPlanPage
class _TranslationsCreatePlanPageKr implements TranslationsCreatePlanPageEn {
	_TranslationsCreatePlanPageKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get title => '플랜 생성';
	@override late final _TranslationsCreatePlanPageLabelKr label = _TranslationsCreatePlanPageLabelKr._(_root);
	@override late final _TranslationsCreatePlanPageHintTextKr hintText = _TranslationsCreatePlanPageHintTextKr._(_root);
	@override late final _TranslationsCreatePlanPageModalKr modal = _TranslationsCreatePlanPageModalKr._(_root);
	@override List<String> get numberOfPeopleOptions => [
		'1명',
		'2명',
		'3명',
		'4명',
		'5명',
		'6명 이상',
	];
	@override List<String> get transportOptions => [
		'전철',
		'도보',
		'자동차',
		'버스',
	];
	@override List<String> get categoryOptions => [
		'아이 동반',
		'성인 대상',
		'엔터테인먼트',
		'액티비티',
		'역사',
	];
	@override List<String> get defaultTopics => [
		'맛집',
		'쇼핑',
		'액티비티',
		'영화',
	];
	@override String get submitButton => '플랜을 AI에 전달하기';
	@override late final _TranslationsCreatePlanPageSnackBarKr snackBar = _TranslationsCreatePlanPageSnackBarKr._(_root);
}

// Path: editProfilePage
class _TranslationsEditProfilePageKr implements TranslationsEditProfilePageEn {
	_TranslationsEditProfilePageKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get title => '편집';
	@override late final _TranslationsEditProfilePageTextFieldsKr textFields = _TranslationsEditProfilePageTextFieldsKr._(_root);
	@override late final _TranslationsEditProfilePageButtonsKr buttons = _TranslationsEditProfilePageButtonsKr._(_root);
	@override late final _TranslationsEditProfilePageSnackBarKr snackBar = _TranslationsEditProfilePageSnackBarKr._(_root);
}

// Path: confirmDialog
class _TranslationsConfirmDialogKr implements TranslationsConfirmDialogEn {
	_TranslationsConfirmDialogKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsConfirmDialogAnswersKr answers = _TranslationsConfirmDialogAnswersKr._(_root);
	@override late final _TranslationsConfirmDialogPopPageKr popPage = _TranslationsConfirmDialogPopPageKr._(_root);
	@override late final _TranslationsConfirmDialogCompleteCreatePlanKr completeCreatePlan = _TranslationsConfirmDialogCompleteCreatePlanKr._(_root);
}

// Path: prompt
class _TranslationsPromptKr implements TranslationsPromptEn {
	_TranslationsPromptKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get planProposalMessage => '이런 플랜은 어떠신가요?';
}

// Path: billDetailsPage
class _TranslationsBillDetailsPageKr implements TranslationsBillDetailsPageEn {
	_TranslationsBillDetailsPageKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsBillDetailsPageTitleKr title = _TranslationsBillDetailsPageTitleKr._(_root);
	@override String get description => '프리미엄 플랜에 가입하시면 더욱 편리하게 시부야 관광을 즐기실 수 있습니다.';
	@override late final _TranslationsBillDetailsPagePricingPlanKr pricingPlan = _TranslationsBillDetailsPagePricingPlanKr._(_root);
	@override late final _TranslationsBillDetailsPageFeaturesKr features = _TranslationsBillDetailsPageFeaturesKr._(_root);
	@override late final _TranslationsBillDetailsPagePricingOptionsKr pricingOptions = _TranslationsBillDetailsPagePricingOptionsKr._(_root);
	@override late final _TranslationsBillDetailsPageRestorePurchaseSectionKr restorePurchaseSection = _TranslationsBillDetailsPageRestorePurchaseSectionKr._(_root);
	@override String get upgradeButton => '프리미엄으로 업그레이드';
	@override late final _TranslationsBillDetailsPageSnackBarKr snackBar = _TranslationsBillDetailsPageSnackBarKr._(_root);
}

// Path: planDetailsPage
class _TranslationsPlanDetailsPageKr implements TranslationsPlanDetailsPageEn {
	_TranslationsPlanDetailsPageKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPlanDetailsPageDateTimeKr dateTime = _TranslationsPlanDetailsPageDateTimeKr._(_root);
	@override late final _TranslationsPlanDetailsPageItemKr item = _TranslationsPlanDetailsPageItemKr._(_root);
	@override late final _TranslationsPlanDetailsPageSnackBarKr snackBar = _TranslationsPlanDetailsPageSnackBarKr._(_root);
}

// Path: errorPage
class _TranslationsErrorPageKr implements TranslationsErrorPageEn {
	_TranslationsErrorPageKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get title => '오류가 발생했습니다...';
	@override String get message => '통신 환경을 확인하고 다시 시도해주세요.';
	@override String get retryButton => '다시 불러오기';
}

// Path: mapPage
class _TranslationsMapPageKr implements TranslationsMapPageEn {
	_TranslationsMapPageKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get title => '지도';
}

// Path: navigationBar.items
class _TranslationsNavigationBarItemsKr implements TranslationsNavigationBarItemsEn {
	_TranslationsNavigationBarItemsKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get home => '홈';
	@override String get myPlan => '내 플랜';
	@override String get myPage => '내 페이지';
}

// Path: homePage.popularPlans
class _TranslationsHomePagePopularPlansKr implements TranslationsHomePagePopularPlansEn {
	_TranslationsHomePagePopularPlansKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get title => '인기 플랜';
}

// Path: homePage.popularTopics
class _TranslationsHomePagePopularTopicsKr implements TranslationsHomePagePopularTopicsEn {
	_TranslationsHomePagePopularTopicsKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get title => '인기 주제';
	@override String numberOfTopics({required Object number}) => '${number}개~';
}

// Path: homePage.recentPlans
class _TranslationsHomePageRecentPlansKr implements TranslationsHomePageRecentPlansEn {
	_TranslationsHomePageRecentPlansKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get title => '최근 생성된 플랜';
}

// Path: accountPage.items
class _TranslationsAccountPageItemsKr implements TranslationsAccountPageItemsEn {
	_TranslationsAccountPageItemsKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get signOut => '로그아웃';
	@override String get linkedWithGoogle => 'Google 연동';
	@override String get linkedWithApple => 'Apple 연동';
	@override String get alreadyLinkedGoogle => 'Google 연동 완료';
	@override String get alreadyLinkedApple => 'Apple 연동 완료';
}

// Path: accountPage.snackBar
class _TranslationsAccountPageSnackBarKr implements TranslationsAccountPageSnackBarEn {
	_TranslationsAccountPageSnackBarKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get signOut => '로그아웃되었습니다.';
	@override String get signOutFailure => '로그아웃 중 오류가 발생했습니다.';
	@override String get successfulLinkage => '계정 연동에 성공했습니다.';
	@override String get linkageFailure => '계정 연동에 실패했습니다.';
	@override String get providerAlreadyLinked => '이미 연동된 계정입니다.';
	@override String get accountDeactivation => '계정 연동이 해제되었습니다.';
	@override String get invalidCredential => '다시 로그인 해주세요.';
	@override String get linkageCancelled => '계정 연동이 취소되었습니다.';
	@override String get unlinkageFailure => '계정 연동 해제에 실패했습니다.';
	@override String get operationNotAllowed => '제공자가 비활성화되었습니다. 개발자에게 문의하세요.';
	@override String get unknownError => '알 수 없는 오류가 발생했습니다.';
}

// Path: accountPage.diaLog
class _TranslationsAccountPageDiaLogKr implements TranslationsAccountPageDiaLogEn {
	_TranslationsAccountPageDiaLogKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get yes => '예';
	@override String get no => '아니요';
	@override String get title => '계정 연동 해제 확인';
	@override String get googleText => '현재 계정과 Google 계정의 연동을 해제하시겠습니까?';
	@override String get appleText => '현재 계정과 Apple 계정의 연동을 해제하시겠습니까?';
}

// Path: authentication.signInPage
class _TranslationsAuthenticationSignInPageKr implements TranslationsAuthenticationSignInPageEn {
	_TranslationsAuthenticationSignInPageKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get title => '로그인';
	@override String get optionText => ' 또는 ';
	@override late final _TranslationsAuthenticationSignInPageTextFieldsKr textFields = _TranslationsAuthenticationSignInPageTextFieldsKr._(_root);
	@override late final _TranslationsAuthenticationSignInPageButtonsKr buttons = _TranslationsAuthenticationSignInPageButtonsKr._(_root);
}

// Path: authentication.resetPasswordPage
class _TranslationsAuthenticationResetPasswordPageKr implements TranslationsAuthenticationResetPasswordPageEn {
	_TranslationsAuthenticationResetPasswordPageKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get title => '비밀번호 재설정';
	@override String get description => '입력한 이메일 주소로 비밀번호 재설정 이메일을 발송합니다.';
	@override late final _TranslationsAuthenticationResetPasswordPageTextFieldsKr textFields = _TranslationsAuthenticationResetPasswordPageTextFieldsKr._(_root);
	@override late final _TranslationsAuthenticationResetPasswordPageButtonsKr buttons = _TranslationsAuthenticationResetPasswordPageButtonsKr._(_root);
}

// Path: authentication.signUpPage
class _TranslationsAuthenticationSignUpPageKr implements TranslationsAuthenticationSignUpPageEn {
	_TranslationsAuthenticationSignUpPageKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsAuthenticationSignUpPageTitleKr title = _TranslationsAuthenticationSignUpPageTitleKr._(_root);
	@override late final _TranslationsAuthenticationSignUpPageTextFieldsKr textFields = _TranslationsAuthenticationSignUpPageTextFieldsKr._(_root);
	@override late final _TranslationsAuthenticationSignUpPageButtonKr button = _TranslationsAuthenticationSignUpPageButtonKr._(_root);
}

// Path: authentication.emailVerificationPage
class _TranslationsAuthenticationEmailVerificationPageKr implements TranslationsAuthenticationEmailVerificationPageEn {
	_TranslationsAuthenticationEmailVerificationPageKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get title => '이메일 주소 확인';
	@override String descriptionForDestination({required Object email}) => '입력한 ${email}로 확인 이메일을 발송합니다.';
	@override String get descriptionForCoolDown => '확인 이메일 재발송은 60초마다 1회 가능합니다.';
	@override late final _TranslationsAuthenticationEmailVerificationPageButtonsKr buttons = _TranslationsAuthenticationEmailVerificationPageButtonsKr._(_root);
	@override late final _TranslationsAuthenticationEmailVerificationPageSnackBarKr snackBar = _TranslationsAuthenticationEmailVerificationPageSnackBarKr._(_root);
}

// Path: authentication.registerProfilePage
class _TranslationsAuthenticationRegisterProfilePageKr implements TranslationsAuthenticationRegisterProfilePageEn {
	_TranslationsAuthenticationRegisterProfilePageKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get title => '프로필 등록';
	@override String get textFields => '이름';
	@override late final _TranslationsAuthenticationRegisterProfilePageButtonsKr buttons = _TranslationsAuthenticationRegisterProfilePageButtonsKr._(_root);
	@override late final _TranslationsAuthenticationRegisterProfilePageSnackBarKr snackBar = _TranslationsAuthenticationRegisterProfilePageSnackBarKr._(_root);
}

// Path: authentication.completeSendEmailPage
class _TranslationsAuthenticationCompleteSendEmailPageKr implements TranslationsAuthenticationCompleteSendEmailPageEn {
	_TranslationsAuthenticationCompleteSendEmailPageKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get title => '발송 완료';
	@override String description({required Object email}) => '비밀번호 재설정 이메일이 ${email}로 발송되었습니다. \n 재설정 후 로그인 화면에서 로그인하세요.';
	@override String get successResendEmail => '확인 이메일을 재발송했습니다.';
	@override late final _TranslationsAuthenticationCompleteSendEmailPageButtonsKr buttons = _TranslationsAuthenticationCompleteSendEmailPageButtonsKr._(_root);
}

// Path: authentication.firebaseAuth
class _TranslationsAuthenticationFirebaseAuthKr implements TranslationsAuthenticationFirebaseAuthEn {
	_TranslationsAuthenticationFirebaseAuthKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsAuthenticationFirebaseAuthErrorKr error = _TranslationsAuthenticationFirebaseAuthErrorKr._(_root);
}

// Path: myPage.accountStatus
class _TranslationsMyPageAccountStatusKr implements TranslationsMyPageAccountStatusEn {
	_TranslationsMyPageAccountStatusKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMyPageAccountStatusDateTimeKr dateTime = _TranslationsMyPageAccountStatusDateTimeKr._(_root);
	@override String get premium => '프리미엄 회원';
	@override String get standard => '스탠다드 회원';
}

// Path: changeLanguagePage.items
class _TranslationsChangeLanguagePageItemsKr implements TranslationsChangeLanguagePageItemsEn {
	_TranslationsChangeLanguagePageItemsKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get japanese => '일본어';
	@override String get english => '영어';
	@override String get simplifiedChinese => '중국어(간체)';
	@override String get traditionalChinese => '중국어(번체)';
	@override String get korean => '한국어';
}

// Path: changeThemePage.items
class _TranslationsChangeThemePageItemsKr implements TranslationsChangeThemePageItemsEn {
	_TranslationsChangeThemePageItemsKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get system => '시스템';
	@override String get light => '라이트';
	@override String get dark => '다크';
}

// Path: myPlanPage.tabs
class _TranslationsMyPlanPageTabsKr implements TranslationsMyPlanPageTabsEn {
	_TranslationsMyPlanPageTabsKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get createdPlans => '생성한 플랜';
	@override String get bookmark => '북마크';
}

// Path: myPlanPage.bookmarkItems
class _TranslationsMyPlanPageBookmarkItemsKr implements TranslationsMyPlanPageBookmarkItemsEn {
	_TranslationsMyPlanPageBookmarkItemsKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get nondata => '북마크된 플랜이 없습니다.';
	@override String get reloading => '다시 불러오기';
}

// Path: myPlanPage.createdPlansItems
class _TranslationsMyPlanPageCreatedPlansItemsKr implements TranslationsMyPlanPageCreatedPlansItemsEn {
	_TranslationsMyPlanPageCreatedPlansItemsKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get nondata => '플랜을 생성해보세요!';
	@override String get createaplan => '플랜 생성하기';
}

// Path: myPlanPage.error
class _TranslationsMyPlanPageErrorKr implements TranslationsMyPlanPageErrorEn {
	_TranslationsMyPlanPageErrorKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get displayError => '플랜 표시 중 문제가 발생했습니다.';
	@override String get failedGetId => '플랜 ID를 가져오지 못했습니다.';
	@override String get failedGetPlanData => '플랜 데이터를 가져오는 중 문제가 발생했습니다.';
	@override String get failedUnBookmark => '북마크 해제 중 문제가 발생했습니다.';
}

// Path: buddyChatPage.textFields
class _TranslationsBuddyChatPageTextFieldsKr implements TranslationsBuddyChatPageTextFieldsEn {
	_TranslationsBuddyChatPageTextFieldsKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get message => '메시지를 입력하세요.';
}

// Path: buddyChatPage.buttons
class _TranslationsBuddyChatPageButtonsKr implements TranslationsBuddyChatPageButtonsEn {
	_TranslationsBuddyChatPageButtonsKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get send => '완료';
}

// Path: buddyChatPage.placeCard
class _TranslationsBuddyChatPagePlaceCardKr implements TranslationsBuddyChatPagePlaceCardEn {
	_TranslationsBuddyChatPagePlaceCardKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get openingHours => '영업시간';
	@override String get averageAmount => '평균 예산';
	@override String get website => '웹사이트';
}

// Path: buddyChatPage.snackBar
class _TranslationsBuddyChatPageSnackBarKr implements TranslationsBuddyChatPageSnackBarEn {
	_TranslationsBuddyChatPageSnackBarKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsBuddyChatPageSnackBarErrorKr error = _TranslationsBuddyChatPageSnackBarErrorKr._(_root);
}

// Path: createPlanPage.label
class _TranslationsCreatePlanPageLabelKr implements TranslationsCreatePlanPageLabelEn {
	_TranslationsCreatePlanPageLabelKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get location => '목적지';
	@override String get scheduleStart => '시작일';
	@override String get scheduleEnd => '종료일';
	@override String get numberOfPeople => '인원';
	@override String get transport => '교통수단';
	@override String get category => '카테고리';
	@override String get topics => '여행 주제';
}

// Path: createPlanPage.hintText
class _TranslationsCreatePlanPageHintTextKr implements TranslationsCreatePlanPageHintTextEn {
	_TranslationsCreatePlanPageHintTextKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get location => '시부야';
}

// Path: createPlanPage.modal
class _TranslationsCreatePlanPageModalKr implements TranslationsCreatePlanPageModalEn {
	_TranslationsCreatePlanPageModalKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get title => '날짜 선택';
}

// Path: createPlanPage.snackBar
class _TranslationsCreatePlanPageSnackBarKr implements TranslationsCreatePlanPageSnackBarEn {
	_TranslationsCreatePlanPageSnackBarKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsCreatePlanPageSnackBarErrorKr error = _TranslationsCreatePlanPageSnackBarErrorKr._(_root);
}

// Path: editProfilePage.textFields
class _TranslationsEditProfilePageTextFieldsKr implements TranslationsEditProfilePageTextFieldsEn {
	_TranslationsEditProfilePageTextFieldsKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get name => '이름';
}

// Path: editProfilePage.buttons
class _TranslationsEditProfilePageButtonsKr implements TranslationsEditProfilePageButtonsEn {
	_TranslationsEditProfilePageButtonsKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get submit => '저장';
}

// Path: editProfilePage.snackBar
class _TranslationsEditProfilePageSnackBarKr implements TranslationsEditProfilePageSnackBarEn {
	_TranslationsEditProfilePageSnackBarKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get success => '업데이트되었습니다.';
	@override late final _TranslationsEditProfilePageSnackBarErrorKr error = _TranslationsEditProfilePageSnackBarErrorKr._(_root);
}

// Path: confirmDialog.answers
class _TranslationsConfirmDialogAnswersKr implements TranslationsConfirmDialogAnswersEn {
	_TranslationsConfirmDialogAnswersKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get yes => '예';
	@override String get no => '아니요';
}

// Path: confirmDialog.popPage
class _TranslationsConfirmDialogPopPageKr implements TranslationsConfirmDialogPopPageEn {
	_TranslationsConfirmDialogPopPageKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get title => '이전 화면으로 돌아가시겠습니까?';
	@override String get description => '현재 내용은 저장되지 않습니다.';
}

// Path: confirmDialog.completeCreatePlan
class _TranslationsConfirmDialogCompleteCreatePlanKr implements TranslationsConfirmDialogCompleteCreatePlanEn {
	_TranslationsConfirmDialogCompleteCreatePlanKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get title => '플랜을 확정하시겠습니까?';
	@override String get description => '마지막 메시지에 포함된 플랜이 저장됩니다.';
}

// Path: billDetailsPage.title
class _TranslationsBillDetailsPageTitleKr implements TranslationsBillDetailsPageTitleEn {
	_TranslationsBillDetailsPageTitleKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get defaultTitle => '프리미엄 플랜';
	@override String get createPlan => '무제한 플랜 생성을 활성화하시겠습니까?';
	@override String get chat => '무제한 채팅을 즐기고 싶으신가요?';
}

// Path: billDetailsPage.pricingPlan
class _TranslationsBillDetailsPagePricingPlanKr implements TranslationsBillDetailsPagePricingPlanEn {
	_TranslationsBillDetailsPagePricingPlanKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get title => '요금 플랜';
	@override late final _TranslationsBillDetailsPagePricingPlanColumnsKr columns = _TranslationsBillDetailsPagePricingPlanColumnsKr._(_root);
	@override late final _TranslationsBillDetailsPagePricingPlanDetailsKr details = _TranslationsBillDetailsPagePricingPlanDetailsKr._(_root);
}

// Path: billDetailsPage.features
class _TranslationsBillDetailsPageFeaturesKr implements TranslationsBillDetailsPageFeaturesEn {
	_TranslationsBillDetailsPageFeaturesKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get title => '등급별 기능';
	@override late final _TranslationsBillDetailsPageFeaturesRowsKr rows = _TranslationsBillDetailsPageFeaturesRowsKr._(_root);
	@override late final _TranslationsBillDetailsPageFeaturesColumnsKr columns = _TranslationsBillDetailsPageFeaturesColumnsKr._(_root);
}

// Path: billDetailsPage.pricingOptions
class _TranslationsBillDetailsPagePricingOptionsKr implements TranslationsBillDetailsPagePricingOptionsEn {
	_TranslationsBillDetailsPagePricingOptionsKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsBillDetailsPagePricingOptionsOneDayKr oneDay = _TranslationsBillDetailsPagePricingOptionsOneDayKr._(_root);
	@override late final _TranslationsBillDetailsPagePricingOptionsThreeDaysKr threeDays = _TranslationsBillDetailsPagePricingOptionsThreeDaysKr._(_root);
	@override late final _TranslationsBillDetailsPagePricingOptionsFiveDaysKr fiveDays = _TranslationsBillDetailsPagePricingOptionsFiveDaysKr._(_root);
	@override late final _TranslationsBillDetailsPagePricingOptionsSevenDaysKr sevenDays = _TranslationsBillDetailsPagePricingOptionsSevenDaysKr._(_root);
	@override late final _TranslationsBillDetailsPagePricingOptionsLifetimeKr lifetime = _TranslationsBillDetailsPagePricingOptionsLifetimeKr._(_root);
}

// Path: billDetailsPage.restorePurchaseSection
class _TranslationsBillDetailsPageRestorePurchaseSectionKr implements TranslationsBillDetailsPageRestorePurchaseSectionEn {
	_TranslationsBillDetailsPageRestorePurchaseSectionKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get title => '구매 복원';
	@override String get description => '이전에 동일한 AppStore 계정이나 Google Play 계정으로 구매한 유효한 항목이 있는 경우, 이를 복원할 수 있습니다.';
	@override String get button => '구매 복원';
}

// Path: billDetailsPage.snackBar
class _TranslationsBillDetailsPageSnackBarKr implements TranslationsBillDetailsPageSnackBarEn {
	_TranslationsBillDetailsPageSnackBarKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsBillDetailsPageSnackBarErrorKr error = _TranslationsBillDetailsPageSnackBarErrorKr._(_root);
}

// Path: planDetailsPage.dateTime
class _TranslationsPlanDetailsPageDateTimeKr implements TranslationsPlanDetailsPageDateTimeEn {
	_TranslationsPlanDetailsPageDateTimeKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String createOn({required Object date}) => '${date}에 생성된 플랜';
	@override String get dateFormat => 'yyyy년 MM월 dd일';
}

// Path: planDetailsPage.item
class _TranslationsPlanDetailsPageItemKr implements TranslationsPlanDetailsPageItemEn {
	_TranslationsPlanDetailsPageItemKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get viewOnMap => '지도에서 보기';
}

// Path: planDetailsPage.snackBar
class _TranslationsPlanDetailsPageSnackBarKr implements TranslationsPlanDetailsPageSnackBarEn {
	_TranslationsPlanDetailsPageSnackBarKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPlanDetailsPageSnackBarErrorKr error = _TranslationsPlanDetailsPageSnackBarErrorKr._(_root);
}

// Path: authentication.signInPage.textFields
class _TranslationsAuthenticationSignInPageTextFieldsKr implements TranslationsAuthenticationSignInPageTextFieldsEn {
	_TranslationsAuthenticationSignInPageTextFieldsKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get email => '이메일 주소';
	@override String get password => '비밀번호';
}

// Path: authentication.signInPage.buttons
class _TranslationsAuthenticationSignInPageButtonsKr implements TranslationsAuthenticationSignInPageButtonsEn {
	_TranslationsAuthenticationSignInPageButtonsKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get signIn => '로그인';
	@override String get signUp => '회원가입';
	@override String get resetPassword => '비밀번호를 잊으셨나요?';
	@override String get appleSignIn => 'Apple로 로그인';
	@override String get googleSignIn => 'Google로 로그인';
	@override String get signInAfter => '나중에 등록';
}

// Path: authentication.resetPasswordPage.textFields
class _TranslationsAuthenticationResetPasswordPageTextFieldsKr implements TranslationsAuthenticationResetPasswordPageTextFieldsEn {
	_TranslationsAuthenticationResetPasswordPageTextFieldsKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get email => '이메일 주소';
}

// Path: authentication.resetPasswordPage.buttons
class _TranslationsAuthenticationResetPasswordPageButtonsKr implements TranslationsAuthenticationResetPasswordPageButtonsEn {
	_TranslationsAuthenticationResetPasswordPageButtonsKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get submit => '발송';
}

// Path: authentication.signUpPage.title
class _TranslationsAuthenticationSignUpPageTitleKr implements TranslationsAuthenticationSignUpPageTitleEn {
	_TranslationsAuthenticationSignUpPageTitleKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get defaultText => '회원가입';
	@override String get modifyEmail => '이메일 주소 변경';
}

// Path: authentication.signUpPage.textFields
class _TranslationsAuthenticationSignUpPageTextFieldsKr implements TranslationsAuthenticationSignUpPageTextFieldsEn {
	_TranslationsAuthenticationSignUpPageTextFieldsKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get email => '이메일 주소';
	@override String get password => '비밀번호';
}

// Path: authentication.signUpPage.button
class _TranslationsAuthenticationSignUpPageButtonKr implements TranslationsAuthenticationSignUpPageButtonEn {
	_TranslationsAuthenticationSignUpPageButtonKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get defaultText => '회원가입';
	@override String get modifyEmail => '변경';
}

// Path: authentication.emailVerificationPage.buttons
class _TranslationsAuthenticationEmailVerificationPageButtonsKr implements TranslationsAuthenticationEmailVerificationPageButtonsEn {
	_TranslationsAuthenticationEmailVerificationPageButtonsKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get sendEmail => '확인 이메일 발송';
	@override String get resendEmail => '확인 이메일 재발송';
	@override String get toNext => '다음';
	@override String get retypeEmail => '이메일 주소 수정';
}

// Path: authentication.emailVerificationPage.snackBar
class _TranslationsAuthenticationEmailVerificationPageSnackBarKr implements TranslationsAuthenticationEmailVerificationPageSnackBarEn {
	_TranslationsAuthenticationEmailVerificationPageSnackBarKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get success => '발송이 완료되었습니다.';
	@override String get emailVerification => '이메일 주소 인증이 완료되지 않았습니다.';
	@override late final _TranslationsAuthenticationEmailVerificationPageSnackBarErrorKr error = _TranslationsAuthenticationEmailVerificationPageSnackBarErrorKr._(_root);
}

// Path: authentication.registerProfilePage.buttons
class _TranslationsAuthenticationRegisterProfilePageButtonsKr implements TranslationsAuthenticationRegisterProfilePageButtonsEn {
	_TranslationsAuthenticationRegisterProfilePageButtonsKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get submit => '완료';
	@override String get skip => '건너뛰기';
}

// Path: authentication.registerProfilePage.snackBar
class _TranslationsAuthenticationRegisterProfilePageSnackBarKr implements TranslationsAuthenticationRegisterProfilePageSnackBarEn {
	_TranslationsAuthenticationRegisterProfilePageSnackBarKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsAuthenticationRegisterProfilePageSnackBarErrorKr error = _TranslationsAuthenticationRegisterProfilePageSnackBarErrorKr._(_root);
}

// Path: authentication.completeSendEmailPage.buttons
class _TranslationsAuthenticationCompleteSendEmailPageButtonsKr implements TranslationsAuthenticationCompleteSendEmailPageButtonsEn {
	_TranslationsAuthenticationCompleteSendEmailPageButtonsKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get toSignIn => '로그인 화면으로';
	@override String get resendEmail => '확인 이메일 재발송';
	@override String get changeEmail => '이메일 주소 변경';
}

// Path: authentication.firebaseAuth.error
class _TranslationsAuthenticationFirebaseAuthErrorKr implements TranslationsAuthenticationFirebaseAuthErrorEn {
	_TranslationsAuthenticationFirebaseAuthErrorKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get networkRequestFailed => '통신 환경이 좋은 곳에서 다시 시도해주세요.';
	@override String get weakPassword => '비밀번호가 너무 짧습니다. 6자 이상 입력해주세요.';
	@override String get invalidEmail => '이메일 주소 형식이 올바르지 않습니다.';
	@override String get userNotFound => '계정을 찾을 수 없습니다.';
	@override String get wrongPassword => '비밀번호가 올바르지 않습니다.';
	@override String get emailAlreadyInUse => '이메일 주소가 이미 사용 중입니다. 로그인하거나 다른 이메일 주소로 생성하세요.';
	@override String get unexpected => '오류가 발생했습니다. 통신 환경이 좋은 곳에서 다시 시도해주세요.';
}

// Path: myPage.accountStatus.dateTime
class _TranslationsMyPageAccountStatusDateTimeKr implements TranslationsMyPageAccountStatusDateTimeEn {
	_TranslationsMyPageAccountStatusDateTimeKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String registeredOn({required Object date}) => '${date}에 등록됨';
	@override String get registeredOnFormat => 'yyyy년 MM월 dd일';
	@override String validUntil({required Object date}) => '${date}까지 유효함';
	@override String get validUntilFormat => 'yyyy년 MM월 dd일 HH시 mm분';
}

// Path: buddyChatPage.snackBar.error
class _TranslationsBuddyChatPageSnackBarErrorKr implements TranslationsBuddyChatPageSnackBarErrorEn {
	_TranslationsBuddyChatPageSnackBarErrorKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get failedRecieveMessage => '답변 수신에 실패했습니다. 잠시 후 다시 시도해주세요.';
	@override String get failedCompleteCreatePlan => '플랜 생성에 실패했습니다. 잠시 후 다시 시도해주세요.';
}

// Path: createPlanPage.snackBar.error
class _TranslationsCreatePlanPageSnackBarErrorKr implements TranslationsCreatePlanPageSnackBarErrorEn {
	_TranslationsCreatePlanPageSnackBarErrorKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get foundUnSelectedField => '선택되지 않은 항목이 있습니다. 모든 항목을 선택해주세요.';
}

// Path: editProfilePage.snackBar.error
class _TranslationsEditProfilePageSnackBarErrorKr implements TranslationsEditProfilePageSnackBarErrorEn {
	_TranslationsEditProfilePageSnackBarErrorKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get noChange => '변경 사항이 없습니다.';
	@override String get failedToUpdate => '업데이트에 실패했습니다. 잠시 후 다시 시도해주세요.';
	@override String get failedToPickImage => '이미지 선택에 실패했습니다. 잠시 후 다시 시도해주세요.';
}

// Path: billDetailsPage.pricingPlan.columns
class _TranslationsBillDetailsPagePricingPlanColumnsKr implements TranslationsBillDetailsPagePricingPlanColumnsEn {
	_TranslationsBillDetailsPagePricingPlanColumnsKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get standard => '스탠다드';
	@override String get premium => '프리미엄';
}

// Path: billDetailsPage.pricingPlan.details
class _TranslationsBillDetailsPagePricingPlanDetailsKr implements TranslationsBillDetailsPagePricingPlanDetailsEn {
	_TranslationsBillDetailsPagePricingPlanDetailsKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get free => '무료 🎉';
	@override late final _TranslationsBillDetailsPagePricingPlanDetailsPremiumPriceKr premiumPrice = _TranslationsBillDetailsPagePricingPlanDetailsPremiumPriceKr._(_root);
}

// Path: billDetailsPage.features.rows
class _TranslationsBillDetailsPageFeaturesRowsKr implements TranslationsBillDetailsPageFeaturesRowsEn {
	_TranslationsBillDetailsPageFeaturesRowsKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get planCreationLimit => '플랜 생성 가능 횟수';
	@override String get chatLimit => '플랜 생성 중 채팅 가능 횟수';
	@override String get timelineAccess => '모든 플랜 목록 타임라인 열람';
	@override String get adFree => '광고 비표시';
	@override String get exclusiveFeatures => '플랜 인증 기능';
}

// Path: billDetailsPage.features.columns
class _TranslationsBillDetailsPageFeaturesColumnsKr implements TranslationsBillDetailsPageFeaturesColumnsEn {
	_TranslationsBillDetailsPageFeaturesColumnsKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsBillDetailsPageFeaturesColumnsStandardKr standard = _TranslationsBillDetailsPageFeaturesColumnsStandardKr._(_root);
	@override late final _TranslationsBillDetailsPageFeaturesColumnsPremiumKr premium = _TranslationsBillDetailsPageFeaturesColumnsPremiumKr._(_root);
}

// Path: billDetailsPage.pricingOptions.oneDay
class _TranslationsBillDetailsPagePricingOptionsOneDayKr implements TranslationsBillDetailsPagePricingOptionsOneDayEn {
	_TranslationsBillDetailsPagePricingOptionsOneDayKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get duration => '1일';
	@override String get discount => '';
	@override String get price => '300원';
}

// Path: billDetailsPage.pricingOptions.threeDays
class _TranslationsBillDetailsPagePricingOptionsThreeDaysKr implements TranslationsBillDetailsPagePricingOptionsThreeDaysEn {
	_TranslationsBillDetailsPagePricingOptionsThreeDaysKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get duration => '3일';
	@override String get discount => '-5%';
	@override String get price => '890원';
}

// Path: billDetailsPage.pricingOptions.fiveDays
class _TranslationsBillDetailsPagePricingOptionsFiveDaysKr implements TranslationsBillDetailsPagePricingOptionsFiveDaysEn {
	_TranslationsBillDetailsPagePricingOptionsFiveDaysKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get duration => '5일';
	@override String get discount => '-7.5%';
	@override String get price => '1,387원';
}

// Path: billDetailsPage.pricingOptions.sevenDays
class _TranslationsBillDetailsPagePricingOptionsSevenDaysKr implements TranslationsBillDetailsPagePricingOptionsSevenDaysEn {
	_TranslationsBillDetailsPagePricingOptionsSevenDaysKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get duration => '7일';
	@override String get discount => '-10%';
	@override String get price => '2,070원';
}

// Path: billDetailsPage.pricingOptions.lifetime
class _TranslationsBillDetailsPagePricingOptionsLifetimeKr implements TranslationsBillDetailsPagePricingOptionsLifetimeEn {
	_TranslationsBillDetailsPagePricingOptionsLifetimeKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get duration => '평생';
	@override String get discount => '';
	@override String get price => '25,800원';
}

// Path: billDetailsPage.snackBar.error
class _TranslationsBillDetailsPageSnackBarErrorKr implements TranslationsBillDetailsPageSnackBarErrorEn {
	_TranslationsBillDetailsPageSnackBarErrorKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get failedToPurchase => '구매에 실패했습니다. 잠시 후 다시 시도해주세요.';
	@override String get PurchaseHistoryNotFound => '구매 기록이 없습니다.';
	@override String get failedToRestorePurchase => '구매 복원에 실패했습니다. 잠시 후 다시 시도해주세요.';
}

// Path: planDetailsPage.snackBar.error
class _TranslationsPlanDetailsPageSnackBarErrorKr implements TranslationsPlanDetailsPageSnackBarErrorEn {
	_TranslationsPlanDetailsPageSnackBarErrorKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get failedToUpdateBookmark => '북마크 업데이트에 실패했습니다. 잠시 후 다시 시도해주세요.';
}

// Path: authentication.emailVerificationPage.snackBar.error
class _TranslationsAuthenticationEmailVerificationPageSnackBarErrorKr implements TranslationsAuthenticationEmailVerificationPageSnackBarErrorEn {
	_TranslationsAuthenticationEmailVerificationPageSnackBarErrorKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get unexpected => '오류가 발생했습니다. 잠시 후 다시 시도하세요.';
}

// Path: authentication.registerProfilePage.snackBar.error
class _TranslationsAuthenticationRegisterProfilePageSnackBarErrorKr implements TranslationsAuthenticationRegisterProfilePageSnackBarErrorEn {
	_TranslationsAuthenticationRegisterProfilePageSnackBarErrorKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get submitIfAllEmpty => '입력해주세요.';
	@override String get unexpected => '오류가 발생했습니다. 잠시 후 다시 시도하세요.';
}

// Path: billDetailsPage.pricingPlan.details.premiumPrice
class _TranslationsBillDetailsPagePricingPlanDetailsPremiumPriceKr implements TranslationsBillDetailsPagePricingPlanDetailsPremiumPriceEn {
	_TranslationsBillDetailsPagePricingPlanDetailsPremiumPriceKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get days => '기간 구매';
	@override String get daily => '・1일 300원';
	@override String get threeDays => '・3일 855원';
	@override String get fiveDays => '・5일 1,480원';
	@override String get sevenDays => '・7일 2,070원';
	@override String get or => '또는';
	@override String get lifetime => '평생';
	@override String get lifetimePrice => '25,800원';
}

// Path: billDetailsPage.features.columns.standard
class _TranslationsBillDetailsPageFeaturesColumnsStandardKr implements TranslationsBillDetailsPageFeaturesColumnsStandardEn {
	_TranslationsBillDetailsPageFeaturesColumnsStandardKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get label => '스탠다드';
	@override String get planCreationLimit => '2회';
	@override String get chatLimit => '3회';
}

// Path: billDetailsPage.features.columns.premium
class _TranslationsBillDetailsPageFeaturesColumnsPremiumKr implements TranslationsBillDetailsPageFeaturesColumnsPremiumEn {
	_TranslationsBillDetailsPageFeaturesColumnsPremiumKr._(this._root);

	final TranslationsKr _root; // ignore: unused_field

	// Translations
	@override String get label => '프리미엄';
	@override String get planCreationLimit => '무제한';
	@override String get chatLimit => '무제한';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsKr {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'navigationBar.items.home': return '홈';
			case 'navigationBar.items.myPlan': return '내 플랜';
			case 'navigationBar.items.myPage': return '내 페이지';
			case 'homePage.popularPlans.title': return '인기 플랜';
			case 'homePage.popularTopics.title': return '인기 주제';
			case 'homePage.popularTopics.numberOfTopics': return ({required Object number}) => '${number}개~';
			case 'homePage.recentPlans.title': return '최근 생성된 플랜';
			case 'accountPage.title': return '계정';
			case 'accountPage.items.signOut': return '로그아웃';
			case 'accountPage.items.linkedWithGoogle': return 'Google 연동';
			case 'accountPage.items.linkedWithApple': return 'Apple 연동';
			case 'accountPage.items.alreadyLinkedGoogle': return 'Google 연동 완료';
			case 'accountPage.items.alreadyLinkedApple': return 'Apple 연동 완료';
			case 'accountPage.snackBar.signOut': return '로그아웃되었습니다.';
			case 'accountPage.snackBar.signOutFailure': return '로그아웃 중 오류가 발생했습니다.';
			case 'accountPage.snackBar.successfulLinkage': return '계정 연동에 성공했습니다.';
			case 'accountPage.snackBar.linkageFailure': return '계정 연동에 실패했습니다.';
			case 'accountPage.snackBar.providerAlreadyLinked': return '이미 연동된 계정입니다.';
			case 'accountPage.snackBar.accountDeactivation': return '계정 연동이 해제되었습니다.';
			case 'accountPage.snackBar.invalidCredential': return '다시 로그인 해주세요.';
			case 'accountPage.snackBar.linkageCancelled': return '계정 연동이 취소되었습니다.';
			case 'accountPage.snackBar.unlinkageFailure': return '계정 연동 해제에 실패했습니다.';
			case 'accountPage.snackBar.operationNotAllowed': return '제공자가 비활성화되었습니다. 개발자에게 문의하세요.';
			case 'accountPage.snackBar.unknownError': return '알 수 없는 오류가 발생했습니다.';
			case 'accountPage.diaLog.yes': return '예';
			case 'accountPage.diaLog.no': return '아니요';
			case 'accountPage.diaLog.title': return '계정 연동 해제 확인';
			case 'accountPage.diaLog.googleText': return '현재 계정과 Google 계정의 연동을 해제하시겠습니까?';
			case 'accountPage.diaLog.appleText': return '현재 계정과 Apple 계정의 연동을 해제하시겠습니까?';
			case 'authentication.signInPage.title': return '로그인';
			case 'authentication.signInPage.optionText': return ' 또는 ';
			case 'authentication.signInPage.textFields.email': return '이메일 주소';
			case 'authentication.signInPage.textFields.password': return '비밀번호';
			case 'authentication.signInPage.buttons.signIn': return '로그인';
			case 'authentication.signInPage.buttons.signUp': return '회원가입';
			case 'authentication.signInPage.buttons.resetPassword': return '비밀번호를 잊으셨나요?';
			case 'authentication.signInPage.buttons.appleSignIn': return 'Apple로 로그인';
			case 'authentication.signInPage.buttons.googleSignIn': return 'Google로 로그인';
			case 'authentication.signInPage.buttons.signInAfter': return '나중에 등록';
			case 'authentication.resetPasswordPage.title': return '비밀번호 재설정';
			case 'authentication.resetPasswordPage.description': return '입력한 이메일 주소로 비밀번호 재설정 이메일을 발송합니다.';
			case 'authentication.resetPasswordPage.textFields.email': return '이메일 주소';
			case 'authentication.resetPasswordPage.buttons.submit': return '발송';
			case 'authentication.signUpPage.title.defaultText': return '회원가입';
			case 'authentication.signUpPage.title.modifyEmail': return '이메일 주소 변경';
			case 'authentication.signUpPage.textFields.email': return '이메일 주소';
			case 'authentication.signUpPage.textFields.password': return '비밀번호';
			case 'authentication.signUpPage.button.defaultText': return '회원가입';
			case 'authentication.signUpPage.button.modifyEmail': return '변경';
			case 'authentication.emailVerificationPage.title': return '이메일 주소 확인';
			case 'authentication.emailVerificationPage.descriptionForDestination': return ({required Object email}) => '입력한 ${email}로 확인 이메일을 발송합니다.';
			case 'authentication.emailVerificationPage.descriptionForCoolDown': return '확인 이메일 재발송은 60초마다 1회 가능합니다.';
			case 'authentication.emailVerificationPage.buttons.sendEmail': return '확인 이메일 발송';
			case 'authentication.emailVerificationPage.buttons.resendEmail': return '확인 이메일 재발송';
			case 'authentication.emailVerificationPage.buttons.toNext': return '다음';
			case 'authentication.emailVerificationPage.buttons.retypeEmail': return '이메일 주소 수정';
			case 'authentication.emailVerificationPage.snackBar.success': return '발송이 완료되었습니다.';
			case 'authentication.emailVerificationPage.snackBar.emailVerification': return '이메일 주소 인증이 완료되지 않았습니다.';
			case 'authentication.emailVerificationPage.snackBar.error.unexpected': return '오류가 발생했습니다. 잠시 후 다시 시도하세요.';
			case 'authentication.registerProfilePage.title': return '프로필 등록';
			case 'authentication.registerProfilePage.textFields': return '이름';
			case 'authentication.registerProfilePage.buttons.submit': return '완료';
			case 'authentication.registerProfilePage.buttons.skip': return '건너뛰기';
			case 'authentication.registerProfilePage.snackBar.error.submitIfAllEmpty': return '입력해주세요.';
			case 'authentication.registerProfilePage.snackBar.error.unexpected': return '오류가 발생했습니다. 잠시 후 다시 시도하세요.';
			case 'authentication.completeSendEmailPage.title': return '발송 완료';
			case 'authentication.completeSendEmailPage.description': return ({required Object email}) => '비밀번호 재설정 이메일이 ${email}로 발송되었습니다. \n 재설정 후 로그인 화면에서 로그인하세요.';
			case 'authentication.completeSendEmailPage.successResendEmail': return '확인 이메일을 재발송했습니다.';
			case 'authentication.completeSendEmailPage.buttons.toSignIn': return '로그인 화면으로';
			case 'authentication.completeSendEmailPage.buttons.resendEmail': return '확인 이메일 재발송';
			case 'authentication.completeSendEmailPage.buttons.changeEmail': return '이메일 주소 변경';
			case 'authentication.firebaseAuth.error.networkRequestFailed': return '통신 환경이 좋은 곳에서 다시 시도해주세요.';
			case 'authentication.firebaseAuth.error.weakPassword': return '비밀번호가 너무 짧습니다. 6자 이상 입력해주세요.';
			case 'authentication.firebaseAuth.error.invalidEmail': return '이메일 주소 형식이 올바르지 않습니다.';
			case 'authentication.firebaseAuth.error.userNotFound': return '계정을 찾을 수 없습니다.';
			case 'authentication.firebaseAuth.error.wrongPassword': return '비밀번호가 올바르지 않습니다.';
			case 'authentication.firebaseAuth.error.emailAlreadyInUse': return '이메일 주소가 이미 사용 중입니다. 로그인하거나 다른 이메일 주소로 생성하세요.';
			case 'authentication.firebaseAuth.error.unexpected': return '오류가 발생했습니다. 통신 환경이 좋은 곳에서 다시 시도해주세요.';
			case 'validation.emailRequired': return '이메일 주소를 입력해주세요.';
			case 'validation.emailInvalid': return '이메일 주소 형식이 올바르지 않습니다.';
			case 'validation.passwordRequired': return '비밀번호를 입력해주세요.';
			case 'validation.passwordShort': return '비밀번호는 최소 8자 이상이어야 합니다.';
			case 'validation.passwordWeak': return '비밀번호는 영문과 숫자를 조합해주세요.';
			case 'validation.passwordMatch': return '비밀번호가 일치하지 않습니다.';
			case 'validation.informationRequired': return '정보를 입력해주세요.';
			case 'validation.urlInvalid': return 'URL 형식이 올바르지 않습니다.';
			case 'validation.usernameRequired': return '사용자 이름을 입력해주세요.';
			case 'validation.usernameMaxLength': return '사용자 이름은 8자 이하여야 합니다.';
			case 'myPage.unregisteredUserName': return '미등록';
			case 'myPage.editProfile': return '프로필 편집';
			case 'myPage.premiumPlan': return '프리미엄 플랜';
			case 'myPage.details': return '상세 정보';
			case 'myPage.settings': return '설정';
			case 'myPage.account': return '계정';
			case 'myPage.language': return '언어';
			case 'myPage.theme': return '테마';
			case 'myPage.termsOfUsePrivacyPolicy': return '이용약관 및 개인정보 처리방침';
			case 'myPage.aboutThisApp': return '앱 정보';
			case 'myPage.aboutTheDeveloper': return '개발자 정보';
			case 'myPage.accountStatus.dateTime.registeredOn': return ({required Object date}) => '${date}에 등록됨';
			case 'myPage.accountStatus.dateTime.registeredOnFormat': return 'yyyy년 MM월 dd일';
			case 'myPage.accountStatus.dateTime.validUntil': return ({required Object date}) => '${date}까지 유효함';
			case 'myPage.accountStatus.dateTime.validUntilFormat': return 'yyyy년 MM월 dd일 HH시 mm분';
			case 'myPage.accountStatus.premium': return '프리미엄 회원';
			case 'myPage.accountStatus.standard': return '스탠다드 회원';
			case 'changeLanguagePage.title': return '언어';
			case 'changeLanguagePage.items.japanese': return '일본어';
			case 'changeLanguagePage.items.english': return '영어';
			case 'changeLanguagePage.items.simplifiedChinese': return '중국어(간체)';
			case 'changeLanguagePage.items.traditionalChinese': return '중국어(번체)';
			case 'changeLanguagePage.items.korean': return '한국어';
			case 'changeThemePage.title': return '테마';
			case 'changeThemePage.items.system': return '시스템';
			case 'changeThemePage.items.light': return '라이트';
			case 'changeThemePage.items.dark': return '다크';
			case 'myPlanPage.title': return '내 플랜';
			case 'myPlanPage.tabs.createdPlans': return '생성한 플랜';
			case 'myPlanPage.tabs.bookmark': return '북마크';
			case 'myPlanPage.bookmarkItems.nondata': return '북마크된 플랜이 없습니다.';
			case 'myPlanPage.bookmarkItems.reloading': return '다시 불러오기';
			case 'myPlanPage.createdPlansItems.nondata': return '플랜을 생성해보세요!';
			case 'myPlanPage.createdPlansItems.createaplan': return '플랜 생성하기';
			case 'myPlanPage.error.displayError': return '플랜 표시 중 문제가 발생했습니다.';
			case 'myPlanPage.error.failedGetId': return '플랜 ID를 가져오지 못했습니다.';
			case 'myPlanPage.error.failedGetPlanData': return '플랜 데이터를 가져오는 중 문제가 발생했습니다.';
			case 'myPlanPage.error.failedUnBookmark': return '북마크 해제 중 문제가 발생했습니다.';
			case 'buddyChatPage.title': return '버디의 제안';
			case 'buddyChatPage.possibleChatCount': return ({required Object possibleChatCount}) => '메시지를 ${possibleChatCount}번 더 보낼 수 있습니다.';
			case 'buddyChatPage.textFields.message': return '메시지를 입력하세요.';
			case 'buddyChatPage.buttons.send': return '완료';
			case 'buddyChatPage.placeCard.openingHours': return '영업시간';
			case 'buddyChatPage.placeCard.averageAmount': return '평균 예산';
			case 'buddyChatPage.placeCard.website': return '웹사이트';
			case 'buddyChatPage.snackBar.error.failedRecieveMessage': return '답변 수신에 실패했습니다. 잠시 후 다시 시도해주세요.';
			case 'buddyChatPage.snackBar.error.failedCompleteCreatePlan': return '플랜 생성에 실패했습니다. 잠시 후 다시 시도해주세요.';
			case 'popularTopics.sectionName': return '인기 주제';
			case 'createPlanPage.title': return '플랜 생성';
			case 'createPlanPage.label.location': return '목적지';
			case 'createPlanPage.label.scheduleStart': return '시작일';
			case 'createPlanPage.label.scheduleEnd': return '종료일';
			case 'createPlanPage.label.numberOfPeople': return '인원';
			case 'createPlanPage.label.transport': return '교통수단';
			case 'createPlanPage.label.category': return '카테고리';
			case 'createPlanPage.label.topics': return '여행 주제';
			case 'createPlanPage.hintText.location': return '시부야';
			case 'createPlanPage.modal.title': return '날짜 선택';
			case 'createPlanPage.numberOfPeopleOptions.0': return '1명';
			case 'createPlanPage.numberOfPeopleOptions.1': return '2명';
			case 'createPlanPage.numberOfPeopleOptions.2': return '3명';
			case 'createPlanPage.numberOfPeopleOptions.3': return '4명';
			case 'createPlanPage.numberOfPeopleOptions.4': return '5명';
			case 'createPlanPage.numberOfPeopleOptions.5': return '6명 이상';
			case 'createPlanPage.transportOptions.0': return '전철';
			case 'createPlanPage.transportOptions.1': return '도보';
			case 'createPlanPage.transportOptions.2': return '자동차';
			case 'createPlanPage.transportOptions.3': return '버스';
			case 'createPlanPage.categoryOptions.0': return '아이 동반';
			case 'createPlanPage.categoryOptions.1': return '성인 대상';
			case 'createPlanPage.categoryOptions.2': return '엔터테인먼트';
			case 'createPlanPage.categoryOptions.3': return '액티비티';
			case 'createPlanPage.categoryOptions.4': return '역사';
			case 'createPlanPage.defaultTopics.0': return '맛집';
			case 'createPlanPage.defaultTopics.1': return '쇼핑';
			case 'createPlanPage.defaultTopics.2': return '액티비티';
			case 'createPlanPage.defaultTopics.3': return '영화';
			case 'createPlanPage.submitButton': return '플랜을 AI에 전달하기';
			case 'createPlanPage.snackBar.error.foundUnSelectedField': return '선택되지 않은 항목이 있습니다. 모든 항목을 선택해주세요.';
			case 'editProfilePage.title': return '편집';
			case 'editProfilePage.textFields.name': return '이름';
			case 'editProfilePage.buttons.submit': return '저장';
			case 'editProfilePage.snackBar.success': return '업데이트되었습니다.';
			case 'editProfilePage.snackBar.error.noChange': return '변경 사항이 없습니다.';
			case 'editProfilePage.snackBar.error.failedToUpdate': return '업데이트에 실패했습니다. 잠시 후 다시 시도해주세요.';
			case 'editProfilePage.snackBar.error.failedToPickImage': return '이미지 선택에 실패했습니다. 잠시 후 다시 시도해주세요.';
			case 'confirmDialog.answers.yes': return '예';
			case 'confirmDialog.answers.no': return '아니요';
			case 'confirmDialog.popPage.title': return '이전 화면으로 돌아가시겠습니까?';
			case 'confirmDialog.popPage.description': return '현재 내용은 저장되지 않습니다.';
			case 'confirmDialog.completeCreatePlan.title': return '플랜을 확정하시겠습니까?';
			case 'confirmDialog.completeCreatePlan.description': return '마지막 메시지에 포함된 플랜이 저장됩니다.';
			case 'prompt.planProposalMessage': return '이런 플랜은 어떠신가요?';
			case 'billDetailsPage.title.defaultTitle': return '프리미엄 플랜';
			case 'billDetailsPage.title.createPlan': return '무제한 플랜 생성을 활성화하시겠습니까?';
			case 'billDetailsPage.title.chat': return '무제한 채팅을 즐기고 싶으신가요?';
			case 'billDetailsPage.description': return '프리미엄 플랜에 가입하시면 더욱 편리하게 시부야 관광을 즐기실 수 있습니다.';
			case 'billDetailsPage.pricingPlan.title': return '요금 플랜';
			case 'billDetailsPage.pricingPlan.columns.standard': return '스탠다드';
			case 'billDetailsPage.pricingPlan.columns.premium': return '프리미엄';
			case 'billDetailsPage.pricingPlan.details.free': return '무료 🎉';
			case 'billDetailsPage.pricingPlan.details.premiumPrice.days': return '기간 구매';
			case 'billDetailsPage.pricingPlan.details.premiumPrice.daily': return '・1일 300원';
			case 'billDetailsPage.pricingPlan.details.premiumPrice.threeDays': return '・3일 855원';
			case 'billDetailsPage.pricingPlan.details.premiumPrice.fiveDays': return '・5일 1,480원';
			case 'billDetailsPage.pricingPlan.details.premiumPrice.sevenDays': return '・7일 2,070원';
			case 'billDetailsPage.pricingPlan.details.premiumPrice.or': return '또는';
			case 'billDetailsPage.pricingPlan.details.premiumPrice.lifetime': return '평생';
			case 'billDetailsPage.pricingPlan.details.premiumPrice.lifetimePrice': return '25,800원';
			case 'billDetailsPage.features.title': return '등급별 기능';
			case 'billDetailsPage.features.rows.planCreationLimit': return '플랜 생성 가능 횟수';
			case 'billDetailsPage.features.rows.chatLimit': return '플랜 생성 중 채팅 가능 횟수';
			case 'billDetailsPage.features.rows.timelineAccess': return '모든 플랜 목록 타임라인 열람';
			case 'billDetailsPage.features.rows.adFree': return '광고 비표시';
			case 'billDetailsPage.features.rows.exclusiveFeatures': return '플랜 인증 기능';
			case 'billDetailsPage.features.columns.standard.label': return '스탠다드';
			case 'billDetailsPage.features.columns.standard.planCreationLimit': return '2회';
			case 'billDetailsPage.features.columns.standard.chatLimit': return '3회';
			case 'billDetailsPage.features.columns.premium.label': return '프리미엄';
			case 'billDetailsPage.features.columns.premium.planCreationLimit': return '무제한';
			case 'billDetailsPage.features.columns.premium.chatLimit': return '무제한';
			case 'billDetailsPage.pricingOptions.oneDay.duration': return '1일';
			case 'billDetailsPage.pricingOptions.oneDay.discount': return '';
			case 'billDetailsPage.pricingOptions.oneDay.price': return '300원';
			case 'billDetailsPage.pricingOptions.threeDays.duration': return '3일';
			case 'billDetailsPage.pricingOptions.threeDays.discount': return '-5%';
			case 'billDetailsPage.pricingOptions.threeDays.price': return '890원';
			case 'billDetailsPage.pricingOptions.fiveDays.duration': return '5일';
			case 'billDetailsPage.pricingOptions.fiveDays.discount': return '-7.5%';
			case 'billDetailsPage.pricingOptions.fiveDays.price': return '1,387원';
			case 'billDetailsPage.pricingOptions.sevenDays.duration': return '7일';
			case 'billDetailsPage.pricingOptions.sevenDays.discount': return '-10%';
			case 'billDetailsPage.pricingOptions.sevenDays.price': return '2,070원';
			case 'billDetailsPage.pricingOptions.lifetime.duration': return '평생';
			case 'billDetailsPage.pricingOptions.lifetime.discount': return '';
			case 'billDetailsPage.pricingOptions.lifetime.price': return '25,800원';
			case 'billDetailsPage.restorePurchaseSection.title': return '구매 복원';
			case 'billDetailsPage.restorePurchaseSection.description': return '이전에 동일한 AppStore 계정이나 Google Play 계정으로 구매한 유효한 항목이 있는 경우, 이를 복원할 수 있습니다.';
			case 'billDetailsPage.restorePurchaseSection.button': return '구매 복원';
			case 'billDetailsPage.upgradeButton': return '프리미엄으로 업그레이드';
			case 'billDetailsPage.snackBar.error.failedToPurchase': return '구매에 실패했습니다. 잠시 후 다시 시도해주세요.';
			case 'billDetailsPage.snackBar.error.PurchaseHistoryNotFound': return '구매 기록이 없습니다.';
			case 'billDetailsPage.snackBar.error.failedToRestorePurchase': return '구매 복원에 실패했습니다. 잠시 후 다시 시도해주세요.';
			case 'planDetailsPage.dateTime.createOn': return ({required Object date}) => '${date}에 생성된 플랜';
			case 'planDetailsPage.dateTime.dateFormat': return 'yyyy년 MM월 dd일';
			case 'planDetailsPage.item.viewOnMap': return '지도에서 보기';
			case 'planDetailsPage.snackBar.error.failedToUpdateBookmark': return '북마크 업데이트에 실패했습니다. 잠시 후 다시 시도해주세요.';
			case 'locales.en': return '영어';
			case 'locales.ja': return '일본어';
			case 'locales.zh': return '중국어';
			case 'locales.kr': return '한국어';
			case 'errorPage.title': return '오류가 발생했습니다...';
			case 'errorPage.message': return '통신 환경을 확인하고 다시 시도해주세요.';
			case 'errorPage.retryButton': return '다시 불러오기';
			case 'mapPage.title': return '지도';
			default: return null;
		}
	}
}

