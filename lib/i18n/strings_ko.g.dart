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
class TranslationsKo implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsKo({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.ko,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <ko>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsKo _root = this; // ignore: unused_field

	// Translations
	@override late final _TranslationsNavigationBarKo navigationBar = _TranslationsNavigationBarKo._(_root);
	@override late final _TranslationsHomePageKo homePage = _TranslationsHomePageKo._(_root);
	@override late final _TranslationsAccountPageKo accountPage = _TranslationsAccountPageKo._(_root);
	@override late final _TranslationsAuthenticationKo authentication = _TranslationsAuthenticationKo._(_root);
	@override late final _TranslationsValidationKo validation = _TranslationsValidationKo._(_root);
	@override late final _TranslationsMyPageKo myPage = _TranslationsMyPageKo._(_root);
	@override late final _TranslationsChangeLanguagePageKo changeLanguagePage = _TranslationsChangeLanguagePageKo._(_root);
	@override late final _TranslationsChangeThemePageKo changeThemePage = _TranslationsChangeThemePageKo._(_root);
	@override late final _TranslationsMyPlanPageKo myPlanPage = _TranslationsMyPlanPageKo._(_root);
	@override late final _TranslationsBuddyChatPageKo buddyChatPage = _TranslationsBuddyChatPageKo._(_root);
	@override late final _TranslationsPopularTopicsKo popularTopics = _TranslationsPopularTopicsKo._(_root);
	@override late final _TranslationsCreatePlanPageKo createPlanPage = _TranslationsCreatePlanPageKo._(_root);
	@override late final _TranslationsEditProfilePageKo editProfilePage = _TranslationsEditProfilePageKo._(_root);
	@override late final _TranslationsConfirmDialogKo confirmDialog = _TranslationsConfirmDialogKo._(_root);
	@override late final _TranslationsPromptKo prompt = _TranslationsPromptKo._(_root);
	@override late final _TranslationsBillDetailsPageKo billDetailsPage = _TranslationsBillDetailsPageKo._(_root);
	@override late final _TranslationsPlanDetailsPageKo planDetailsPage = _TranslationsPlanDetailsPageKo._(_root);
	@override late final _TranslationsCreateLoadingPageKo createLoadingPage = _TranslationsCreateLoadingPageKo._(_root);
	@override Map<String, String> get locales => {
		'en': '영어',
		'ja': '일본어',
		'zh': '중국어',
		'ko': '한국어',
	};
	@override late final _TranslationsErrorPageKo errorPage = _TranslationsErrorPageKo._(_root);
	@override late final _TranslationsMapPageKo mapPage = _TranslationsMapPageKo._(_root);
}

// Path: navigationBar
class _TranslationsNavigationBarKo implements TranslationsNavigationBarEn {
	_TranslationsNavigationBarKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsNavigationBarItemsKo items = _TranslationsNavigationBarItemsKo._(_root);
}

// Path: homePage
class _TranslationsHomePageKo implements TranslationsHomePageEn {
	_TranslationsHomePageKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsHomePagePopularPlansKo popularPlans = _TranslationsHomePagePopularPlansKo._(_root);
	@override late final _TranslationsHomePagePopularTopicsKo popularTopics = _TranslationsHomePagePopularTopicsKo._(_root);
	@override late final _TranslationsHomePageRecentPlansKo recentPlans = _TranslationsHomePageRecentPlansKo._(_root);
}

// Path: accountPage
class _TranslationsAccountPageKo implements TranslationsAccountPageEn {
	_TranslationsAccountPageKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '계정 관리';
	@override late final _TranslationsAccountPageItemsKo items = _TranslationsAccountPageItemsKo._(_root);
	@override late final _TranslationsAccountPageSnackBarKo snackBar = _TranslationsAccountPageSnackBarKo._(_root);
	@override late final _TranslationsAccountPageDiaLogKo diaLog = _TranslationsAccountPageDiaLogKo._(_root);
}

// Path: authentication
class _TranslationsAuthenticationKo implements TranslationsAuthenticationEn {
	_TranslationsAuthenticationKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsAuthenticationAuthenticationPageKo authenticationPage = _TranslationsAuthenticationAuthenticationPageKo._(_root);
	@override late final _TranslationsAuthenticationResetPasswordPageKo resetPasswordPage = _TranslationsAuthenticationResetPasswordPageKo._(_root);
	@override late final _TranslationsAuthenticationEmailVerificationPageKo emailVerificationPage = _TranslationsAuthenticationEmailVerificationPageKo._(_root);
	@override late final _TranslationsAuthenticationRegisterProfilePageKo registerProfilePage = _TranslationsAuthenticationRegisterProfilePageKo._(_root);
	@override late final _TranslationsAuthenticationCompleteSendEmailPageKo completeSendEmailPage = _TranslationsAuthenticationCompleteSendEmailPageKo._(_root);
	@override late final _TranslationsAuthenticationPhoneNumberInputPageKo phoneNumberInputPage = _TranslationsAuthenticationPhoneNumberInputPageKo._(_root);
	@override late final _TranslationsAuthenticationSmsVerificationPageKo smsVerificationPage = _TranslationsAuthenticationSmsVerificationPageKo._(_root);
	@override late final _TranslationsAuthenticationFirebaseAuthKo firebaseAuth = _TranslationsAuthenticationFirebaseAuthKo._(_root);
}

// Path: validation
class _TranslationsValidationKo implements TranslationsValidationEn {
	_TranslationsValidationKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

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
class _TranslationsMyPageKo implements TranslationsMyPageEn {
	_TranslationsMyPageKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

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
	@override late final _TranslationsMyPageAccountStatusKo accountStatus = _TranslationsMyPageAccountStatusKo._(_root);
}

// Path: changeLanguagePage
class _TranslationsChangeLanguagePageKo implements TranslationsChangeLanguagePageEn {
	_TranslationsChangeLanguagePageKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '언어';
	@override late final _TranslationsChangeLanguagePageItemsKo items = _TranslationsChangeLanguagePageItemsKo._(_root);
}

// Path: changeThemePage
class _TranslationsChangeThemePageKo implements TranslationsChangeThemePageEn {
	_TranslationsChangeThemePageKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '테마';
	@override late final _TranslationsChangeThemePageItemsKo items = _TranslationsChangeThemePageItemsKo._(_root);
}

// Path: myPlanPage
class _TranslationsMyPlanPageKo implements TranslationsMyPlanPageEn {
	_TranslationsMyPlanPageKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '내 플랜';
	@override late final _TranslationsMyPlanPageTabsKo tabs = _TranslationsMyPlanPageTabsKo._(_root);
	@override late final _TranslationsMyPlanPageBookmarkItemsKo bookmarkItems = _TranslationsMyPlanPageBookmarkItemsKo._(_root);
	@override late final _TranslationsMyPlanPageCreatedPlansItemsKo createdPlansItems = _TranslationsMyPlanPageCreatedPlansItemsKo._(_root);
	@override late final _TranslationsMyPlanPageErrorKo error = _TranslationsMyPlanPageErrorKo._(_root);
}

// Path: buddyChatPage
class _TranslationsBuddyChatPageKo implements TranslationsBuddyChatPageEn {
	_TranslationsBuddyChatPageKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '버디의 제안';
	@override String possibleChatCount({required Object possibleChatCount}) => '메시지를 ${possibleChatCount}번 더 보낼 수 있습니다.';
	@override late final _TranslationsBuddyChatPageTextFieldsKo textFields = _TranslationsBuddyChatPageTextFieldsKo._(_root);
	@override late final _TranslationsBuddyChatPageButtonsKo buttons = _TranslationsBuddyChatPageButtonsKo._(_root);
	@override late final _TranslationsBuddyChatPagePlaceCardKo placeCard = _TranslationsBuddyChatPagePlaceCardKo._(_root);
	@override late final _TranslationsBuddyChatPageSnackBarKo snackBar = _TranslationsBuddyChatPageSnackBarKo._(_root);
}

// Path: popularTopics
class _TranslationsPopularTopicsKo implements TranslationsPopularTopicsEn {
	_TranslationsPopularTopicsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get sectionName => '인기 주제';
}

// Path: createPlanPage
class _TranslationsCreatePlanPageKo implements TranslationsCreatePlanPageEn {
	_TranslationsCreatePlanPageKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '플랜 생성';
	@override late final _TranslationsCreatePlanPageLabelKo label = _TranslationsCreatePlanPageLabelKo._(_root);
	@override late final _TranslationsCreatePlanPageHintTextKo hintText = _TranslationsCreatePlanPageHintTextKo._(_root);
	@override late final _TranslationsCreatePlanPageModalKo modal = _TranslationsCreatePlanPageModalKo._(_root);
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
	@override late final _TranslationsCreatePlanPageSnackBarKo snackBar = _TranslationsCreatePlanPageSnackBarKo._(_root);
}

// Path: editProfilePage
class _TranslationsEditProfilePageKo implements TranslationsEditProfilePageEn {
	_TranslationsEditProfilePageKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '편집';
	@override late final _TranslationsEditProfilePageTextFieldsKo textFields = _TranslationsEditProfilePageTextFieldsKo._(_root);
	@override late final _TranslationsEditProfilePageButtonsKo buttons = _TranslationsEditProfilePageButtonsKo._(_root);
	@override late final _TranslationsEditProfilePageSnackBarKo snackBar = _TranslationsEditProfilePageSnackBarKo._(_root);
}

// Path: confirmDialog
class _TranslationsConfirmDialogKo implements TranslationsConfirmDialogEn {
	_TranslationsConfirmDialogKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsConfirmDialogAnswersKo answers = _TranslationsConfirmDialogAnswersKo._(_root);
	@override late final _TranslationsConfirmDialogPopPageKo popPage = _TranslationsConfirmDialogPopPageKo._(_root);
	@override late final _TranslationsConfirmDialogCompleteCreatePlanKo completeCreatePlan = _TranslationsConfirmDialogCompleteCreatePlanKo._(_root);
}

// Path: prompt
class _TranslationsPromptKo implements TranslationsPromptEn {
	_TranslationsPromptKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get planProposalMessage => '이런 플랜은 어떠신가요?';
}

// Path: billDetailsPage
class _TranslationsBillDetailsPageKo implements TranslationsBillDetailsPageEn {
	_TranslationsBillDetailsPageKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsBillDetailsPageTitleKo title = _TranslationsBillDetailsPageTitleKo._(_root);
	@override String get description => '프리미엄 플랜으로 더욱 편리한 시부야 여행을 계획해 보세요.';
	@override late final _TranslationsBillDetailsPagePricingPlanKo pricingPlan = _TranslationsBillDetailsPagePricingPlanKo._(_root);
	@override late final _TranslationsBillDetailsPageFeaturesKo features = _TranslationsBillDetailsPageFeaturesKo._(_root);
	@override late final _TranslationsBillDetailsPagePricingOptionsKo pricingOptions = _TranslationsBillDetailsPagePricingOptionsKo._(_root);
	@override late final _TranslationsBillDetailsPageRestorePurchaseSectionKo restorePurchaseSection = _TranslationsBillDetailsPageRestorePurchaseSectionKo._(_root);
	@override String get upgradeButton => '프리미엄으로 업그레이드';
	@override late final _TranslationsBillDetailsPageSnackBarKo snackBar = _TranslationsBillDetailsPageSnackBarKo._(_root);
}

// Path: planDetailsPage
class _TranslationsPlanDetailsPageKo implements TranslationsPlanDetailsPageEn {
	_TranslationsPlanDetailsPageKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPlanDetailsPageDateTimeKo dateTime = _TranslationsPlanDetailsPageDateTimeKo._(_root);
	@override late final _TranslationsPlanDetailsPageItemKo item = _TranslationsPlanDetailsPageItemKo._(_root);
	@override String get haveUsedPlan => '이 플랜을 사용했습니다';
	@override late final _TranslationsPlanDetailsPageDialogKo dialog = _TranslationsPlanDetailsPageDialogKo._(_root);
	@override late final _TranslationsPlanDetailsPageSnackBarKo snackBar = _TranslationsPlanDetailsPageSnackBarKo._(_root);
}

// Path: createLoadingPage
class _TranslationsCreateLoadingPageKo implements TranslationsCreateLoadingPageEn {
	_TranslationsCreateLoadingPageKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsCreateLoadingPageItemsKo items = _TranslationsCreateLoadingPageItemsKo._(_root);
}

// Path: errorPage
class _TranslationsErrorPageKo implements TranslationsErrorPageEn {
	_TranslationsErrorPageKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '오류가 발생했습니다...';
	@override String get message => '통신 환경을 확인하고 다시 시도해주세요.';
	@override String get retryButton => '다시 불러오기';
}

// Path: mapPage
class _TranslationsMapPageKo implements TranslationsMapPageEn {
	_TranslationsMapPageKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '지도';
}

// Path: navigationBar.items
class _TranslationsNavigationBarItemsKo implements TranslationsNavigationBarItemsEn {
	_TranslationsNavigationBarItemsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get home => '홈';
	@override String get myPlan => '내 플랜';
	@override String get myPage => '마이페이지';
}

// Path: homePage.popularPlans
class _TranslationsHomePagePopularPlansKo implements TranslationsHomePagePopularPlansEn {
	_TranslationsHomePagePopularPlansKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '인기 플랜';
}

// Path: homePage.popularTopics
class _TranslationsHomePagePopularTopicsKo implements TranslationsHomePagePopularTopicsEn {
	_TranslationsHomePagePopularTopicsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '인기 주제';
	@override String numberOfTopics({required Object number}) => '${number}개';
}

// Path: homePage.recentPlans
class _TranslationsHomePageRecentPlansKo implements TranslationsHomePageRecentPlansEn {
	_TranslationsHomePageRecentPlansKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '최근 생성된 플랜';
}

// Path: accountPage.items
class _TranslationsAccountPageItemsKo implements TranslationsAccountPageItemsEn {
	_TranslationsAccountPageItemsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get signOut => '로그아웃';
	@override String get linkedWithGoogle => 'Google 계정 연동';
	@override String get linkedWithApple => 'Apple 계정 연동';
	@override String get alreadyLinkedGoogle => 'Google 연동 완료';
	@override String get alreadyLinkedApple => 'Apple 연동 완료';
	@override String get deleteAccount => '계정 삭제';
}

// Path: accountPage.snackBar
class _TranslationsAccountPageSnackBarKo implements TranslationsAccountPageSnackBarEn {
	_TranslationsAccountPageSnackBarKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get signOut => '로그아웃되었습니다.';
	@override String get signOutFailure => '로그아웃 처리 중 오류가 발생했습니다.';
	@override String get successfulLinkage => '계정 연동이 완료되었습니다.';
	@override String get linkageFailure => '계정 연동에 실패했습니다.';
	@override String get providerAlreadyLinked => '이미 연동된 계정입니다.';
	@override String get accountDeactivation => '계정 연동이 해제되었습니다.';
	@override String get invalidCredential => '다시 로그인해 주세요.';
	@override String get linkageCancelled => '계정 연동이 취소되었습니다.';
	@override String get unlinkageFailure => '계정 연동 해제를 실패했습니다.';
	@override String get operationNotAllowed => '해당 서비스가 비활성화되었습니다. 개발자에게 문의해 주세요.';
	@override String get unknownError => '알 수 없는 오류가 발생했습니다.';
	@override String get deleteAccount => '계정이 삭제되었습니다.';
	@override String get deleteAccountFailure => '계정 삭제를 실패했습니다.';
}

// Path: accountPage.diaLog
class _TranslationsAccountPageDiaLogKo implements TranslationsAccountPageDiaLogEn {
	_TranslationsAccountPageDiaLogKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get yes => '예';
	@override String get no => '아니오';
	@override String get title => '계정 연동 해제 확인';
	@override String get googleText => 'Google 계정 연동을 해제하시겠습니까?';
	@override String get appleText => 'Apple 계정 연동을 해제하시겠습니까?';
	@override String get signOut => '로그아웃 하시겠습니까?';
	@override String get signOutText => '다시 로그인해야 서비스를 이용하실 수 있습니다.';
	@override String get deleteAccount => '정말 계정을 삭제하시겠습니까?';
	@override String get deleteAccountText => '삭제 시 모든 데이터가 영구적으로 삭제됩니다.';
}

// Path: authentication.authenticationPage
class _TranslationsAuthenticationAuthenticationPageKo implements TranslationsAuthenticationAuthenticationPageEn {
	_TranslationsAuthenticationAuthenticationPageKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '로그인 / 회원가입';
	@override String get optionText => ' 또는 ';
	@override late final _TranslationsAuthenticationAuthenticationPageTextFieldsKo textFields = _TranslationsAuthenticationAuthenticationPageTextFieldsKo._(_root);
	@override late final _TranslationsAuthenticationAuthenticationPageButtonsKo buttons = _TranslationsAuthenticationAuthenticationPageButtonsKo._(_root);
	@override late final _TranslationsAuthenticationAuthenticationPageChangeLanguageDialogKo changeLanguageDialog = _TranslationsAuthenticationAuthenticationPageChangeLanguageDialogKo._(_root);
}

// Path: authentication.resetPasswordPage
class _TranslationsAuthenticationResetPasswordPageKo implements TranslationsAuthenticationResetPasswordPageEn {
	_TranslationsAuthenticationResetPasswordPageKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '비밀번호 재설정';
	@override String get description => '입력한 이메일 주소로 비밀번호 재설정 이메일을 발송합니다.';
	@override late final _TranslationsAuthenticationResetPasswordPageTextFieldsKo textFields = _TranslationsAuthenticationResetPasswordPageTextFieldsKo._(_root);
	@override late final _TranslationsAuthenticationResetPasswordPageButtonsKo buttons = _TranslationsAuthenticationResetPasswordPageButtonsKo._(_root);
}

// Path: authentication.emailVerificationPage
class _TranslationsAuthenticationEmailVerificationPageKo implements TranslationsAuthenticationEmailVerificationPageEn {
	_TranslationsAuthenticationEmailVerificationPageKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '이메일 주소 확인';
	@override String descriptionForDestination({required Object email}) => '입력된 ${email}로 확인 이메일을 보냈습니다';
	@override String get descriptionForCoolDown => '확인 이메일 재발송은 60초마다 1회 가능합니다.';
	@override late final _TranslationsAuthenticationEmailVerificationPageButtonsKo buttons = _TranslationsAuthenticationEmailVerificationPageButtonsKo._(_root);
	@override late final _TranslationsAuthenticationEmailVerificationPageSnackBarKo snackBar = _TranslationsAuthenticationEmailVerificationPageSnackBarKo._(_root);
}

// Path: authentication.registerProfilePage
class _TranslationsAuthenticationRegisterProfilePageKo implements TranslationsAuthenticationRegisterProfilePageEn {
	_TranslationsAuthenticationRegisterProfilePageKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '프로필 등록';
	@override String get textFields => '이름';
	@override late final _TranslationsAuthenticationRegisterProfilePageButtonsKo buttons = _TranslationsAuthenticationRegisterProfilePageButtonsKo._(_root);
	@override late final _TranslationsAuthenticationRegisterProfilePageSnackBarKo snackBar = _TranslationsAuthenticationRegisterProfilePageSnackBarKo._(_root);
}

// Path: authentication.completeSendEmailPage
class _TranslationsAuthenticationCompleteSendEmailPageKo implements TranslationsAuthenticationCompleteSendEmailPageEn {
	_TranslationsAuthenticationCompleteSendEmailPageKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '발송 완료';
	@override String description({required Object email}) => '비밀번호 재설정 이메일이 ${email}로 발송되었습니다. \n 재설정 후 로그인 화면에서 로그인하세요.';
	@override String get successResendEmail => '확인 이메일을 재발송했습니다.';
	@override late final _TranslationsAuthenticationCompleteSendEmailPageButtonsKo buttons = _TranslationsAuthenticationCompleteSendEmailPageButtonsKo._(_root);
}

// Path: authentication.phoneNumberInputPage
class _TranslationsAuthenticationPhoneNumberInputPageKo implements TranslationsAuthenticationPhoneNumberInputPageEn {
	_TranslationsAuthenticationPhoneNumberInputPageKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '전화번호 입력';
	@override late final _TranslationsAuthenticationPhoneNumberInputPageDiscriptionKo discription = _TranslationsAuthenticationPhoneNumberInputPageDiscriptionKo._(_root);
	@override String get phoneNumber => '전화번호';
	@override String get sendSmsCode => 'SMS 코드 보내기';
	@override late final _TranslationsAuthenticationPhoneNumberInputPageScaffoldMessengerKo scaffoldMessenger = _TranslationsAuthenticationPhoneNumberInputPageScaffoldMessengerKo._(_root);
}

// Path: authentication.smsVerificationPage
class _TranslationsAuthenticationSmsVerificationPageKo implements TranslationsAuthenticationSmsVerificationPageEn {
	_TranslationsAuthenticationSmsVerificationPageKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'SMS 인증';
	@override String get sendSms => '다음 전화번호로 SMS 코드를 보냈습니다:';
	@override String get pleaseInputCode => '코드를 입력하여 전화번호 인증을 완료하세요.';
	@override late final _TranslationsAuthenticationSmsVerificationPageResendKo resend = _TranslationsAuthenticationSmsVerificationPageResendKo._(_root);
	@override String get smsCode => 'SMS 코드';
	@override String get verify => '인증';
	@override String get fixPhoneNumber => '전화번호 수정';
	@override late final _TranslationsAuthenticationSmsVerificationPageScaffoldMessengerKo scaffoldMessenger = _TranslationsAuthenticationSmsVerificationPageScaffoldMessengerKo._(_root);
}

// Path: authentication.firebaseAuth
class _TranslationsAuthenticationFirebaseAuthKo implements TranslationsAuthenticationFirebaseAuthEn {
	_TranslationsAuthenticationFirebaseAuthKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsAuthenticationFirebaseAuthErrorKo error = _TranslationsAuthenticationFirebaseAuthErrorKo._(_root);
}

// Path: myPage.accountStatus
class _TranslationsMyPageAccountStatusKo implements TranslationsMyPageAccountStatusEn {
	_TranslationsMyPageAccountStatusKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsMyPageAccountStatusDateTimeKo dateTime = _TranslationsMyPageAccountStatusDateTimeKo._(_root);
	@override String get premium => '프리미엄 회원';
	@override String get standard => '스탠다드 회원';
}

// Path: changeLanguagePage.items
class _TranslationsChangeLanguagePageItemsKo implements TranslationsChangeLanguagePageItemsEn {
	_TranslationsChangeLanguagePageItemsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get japanese => '日本語';
	@override String get english => 'English';
	@override String get simplifiedChinese => '中文（简体）';
	@override String get traditionalChinese => '中文(繁体字)';
	@override String get korean => '한국어';
}

// Path: changeThemePage.items
class _TranslationsChangeThemePageItemsKo implements TranslationsChangeThemePageItemsEn {
	_TranslationsChangeThemePageItemsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get system => '시스템';
	@override String get light => '라이트';
	@override String get dark => '다크';
}

// Path: myPlanPage.tabs
class _TranslationsMyPlanPageTabsKo implements TranslationsMyPlanPageTabsEn {
	_TranslationsMyPlanPageTabsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get createdPlans => '생성한 플랜';
	@override String get bookmark => '북마크';
}

// Path: myPlanPage.bookmarkItems
class _TranslationsMyPlanPageBookmarkItemsKo implements TranslationsMyPlanPageBookmarkItemsEn {
	_TranslationsMyPlanPageBookmarkItemsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get nondata => '북마크된 플랜이 없습니다.';
	@override String get reloading => '다시 불러오기';
}

// Path: myPlanPage.createdPlansItems
class _TranslationsMyPlanPageCreatedPlansItemsKo implements TranslationsMyPlanPageCreatedPlansItemsEn {
	_TranslationsMyPlanPageCreatedPlansItemsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get nondata => '플랜을 생성해보세요!';
	@override String get createaplan => '플랜 생성하기';
}

// Path: myPlanPage.error
class _TranslationsMyPlanPageErrorKo implements TranslationsMyPlanPageErrorEn {
	_TranslationsMyPlanPageErrorKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get displayError => '플랜 표시 중 문제가 발생했습니다.';
	@override String get failedGetId => '플랜 ID를 가져오지 못했습니다.';
	@override String get failedGetPlanData => '플랜 데이터를 가져오는 중 문제가 발생했습니다.';
	@override String get failedUnBookmark => '북마크 해제 중 문제가 발생했습니다.';
}

// Path: buddyChatPage.textFields
class _TranslationsBuddyChatPageTextFieldsKo implements TranslationsBuddyChatPageTextFieldsEn {
	_TranslationsBuddyChatPageTextFieldsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get message => '메시지를 입력하세요.';
}

// Path: buddyChatPage.buttons
class _TranslationsBuddyChatPageButtonsKo implements TranslationsBuddyChatPageButtonsEn {
	_TranslationsBuddyChatPageButtonsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get send => '완료';
}

// Path: buddyChatPage.placeCard
class _TranslationsBuddyChatPagePlaceCardKo implements TranslationsBuddyChatPagePlaceCardEn {
	_TranslationsBuddyChatPagePlaceCardKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get openingHours => '영업시간';
	@override String get averageAmount => '평균 예산';
	@override String get website => '웹사이트';
}

// Path: buddyChatPage.snackBar
class _TranslationsBuddyChatPageSnackBarKo implements TranslationsBuddyChatPageSnackBarEn {
	_TranslationsBuddyChatPageSnackBarKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsBuddyChatPageSnackBarErrorKo error = _TranslationsBuddyChatPageSnackBarErrorKo._(_root);
}

// Path: createPlanPage.label
class _TranslationsCreatePlanPageLabelKo implements TranslationsCreatePlanPageLabelEn {
	_TranslationsCreatePlanPageLabelKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

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
class _TranslationsCreatePlanPageHintTextKo implements TranslationsCreatePlanPageHintTextEn {
	_TranslationsCreatePlanPageHintTextKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get location => '시부야';
}

// Path: createPlanPage.modal
class _TranslationsCreatePlanPageModalKo implements TranslationsCreatePlanPageModalEn {
	_TranslationsCreatePlanPageModalKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '날짜 선택';
}

// Path: createPlanPage.snackBar
class _TranslationsCreatePlanPageSnackBarKo implements TranslationsCreatePlanPageSnackBarEn {
	_TranslationsCreatePlanPageSnackBarKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsCreatePlanPageSnackBarErrorKo error = _TranslationsCreatePlanPageSnackBarErrorKo._(_root);
}

// Path: editProfilePage.textFields
class _TranslationsEditProfilePageTextFieldsKo implements TranslationsEditProfilePageTextFieldsEn {
	_TranslationsEditProfilePageTextFieldsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get name => '이름';
}

// Path: editProfilePage.buttons
class _TranslationsEditProfilePageButtonsKo implements TranslationsEditProfilePageButtonsEn {
	_TranslationsEditProfilePageButtonsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get submit => '저장';
}

// Path: editProfilePage.snackBar
class _TranslationsEditProfilePageSnackBarKo implements TranslationsEditProfilePageSnackBarEn {
	_TranslationsEditProfilePageSnackBarKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get success => '업데이트되었습니다.';
	@override late final _TranslationsEditProfilePageSnackBarErrorKo error = _TranslationsEditProfilePageSnackBarErrorKo._(_root);
}

// Path: confirmDialog.answers
class _TranslationsConfirmDialogAnswersKo implements TranslationsConfirmDialogAnswersEn {
	_TranslationsConfirmDialogAnswersKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get yes => '예';
	@override String get no => '아니요';
}

// Path: confirmDialog.popPage
class _TranslationsConfirmDialogPopPageKo implements TranslationsConfirmDialogPopPageEn {
	_TranslationsConfirmDialogPopPageKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '이전 화면으로 돌아가시겠습니까?';
	@override String get description => '현재 내용은 저장되지 않습니다.';
}

// Path: confirmDialog.completeCreatePlan
class _TranslationsConfirmDialogCompleteCreatePlanKo implements TranslationsConfirmDialogCompleteCreatePlanEn {
	_TranslationsConfirmDialogCompleteCreatePlanKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '플랜을 확정하시겠습니까?';
	@override String get description => '마지막 메시지에 포함된 플랜이 저장됩니다.';
}

// Path: billDetailsPage.title
class _TranslationsBillDetailsPageTitleKo implements TranslationsBillDetailsPageTitleEn {
	_TranslationsBillDetailsPageTitleKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get defaultTitle => '프리미엄 플랜';
	@override String get createPlan => '무제한 플랜 생성을 활성화하시겠습니까?';
	@override String get chat => '무제한 채팅을 사용해 보시겠습니까?';
}

// Path: billDetailsPage.pricingPlan
class _TranslationsBillDetailsPagePricingPlanKo implements TranslationsBillDetailsPagePricingPlanEn {
	_TranslationsBillDetailsPagePricingPlanKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '요금제';
	@override late final _TranslationsBillDetailsPagePricingPlanColumnsKo columns = _TranslationsBillDetailsPagePricingPlanColumnsKo._(_root);
	@override late final _TranslationsBillDetailsPagePricingPlanDetailsKo details = _TranslationsBillDetailsPagePricingPlanDetailsKo._(_root);
}

// Path: billDetailsPage.features
class _TranslationsBillDetailsPageFeaturesKo implements TranslationsBillDetailsPageFeaturesEn {
	_TranslationsBillDetailsPageFeaturesKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '등급별 기능';
	@override late final _TranslationsBillDetailsPageFeaturesRowsKo rows = _TranslationsBillDetailsPageFeaturesRowsKo._(_root);
	@override late final _TranslationsBillDetailsPageFeaturesColumnsKo columns = _TranslationsBillDetailsPageFeaturesColumnsKo._(_root);
}

// Path: billDetailsPage.pricingOptions
class _TranslationsBillDetailsPagePricingOptionsKo implements TranslationsBillDetailsPagePricingOptionsEn {
	_TranslationsBillDetailsPagePricingOptionsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsBillDetailsPagePricingOptionsOneDayKo oneDay = _TranslationsBillDetailsPagePricingOptionsOneDayKo._(_root);
	@override late final _TranslationsBillDetailsPagePricingOptionsThreeDaysKo threeDays = _TranslationsBillDetailsPagePricingOptionsThreeDaysKo._(_root);
	@override late final _TranslationsBillDetailsPagePricingOptionsFiveDaysKo fiveDays = _TranslationsBillDetailsPagePricingOptionsFiveDaysKo._(_root);
	@override late final _TranslationsBillDetailsPagePricingOptionsSevenDaysKo sevenDays = _TranslationsBillDetailsPagePricingOptionsSevenDaysKo._(_root);
	@override late final _TranslationsBillDetailsPagePricingOptionsUnlimitedKo unlimited = _TranslationsBillDetailsPagePricingOptionsUnlimitedKo._(_root);
}

// Path: billDetailsPage.restorePurchaseSection
class _TranslationsBillDetailsPageRestorePurchaseSectionKo implements TranslationsBillDetailsPageRestorePurchaseSectionEn {
	_TranslationsBillDetailsPageRestorePurchaseSectionKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get button => '구매 복원';
	@override String get textButton => '구매 복원이란?';
}

// Path: billDetailsPage.snackBar
class _TranslationsBillDetailsPageSnackBarKo implements TranslationsBillDetailsPageSnackBarEn {
	_TranslationsBillDetailsPageSnackBarKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsBillDetailsPageSnackBarErrorKo error = _TranslationsBillDetailsPageSnackBarErrorKo._(_root);
}

// Path: planDetailsPage.dateTime
class _TranslationsPlanDetailsPageDateTimeKo implements TranslationsPlanDetailsPageDateTimeEn {
	_TranslationsPlanDetailsPageDateTimeKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String createOn({required Object date}) => '${date}에 생성된 플랜';
	@override String get dateFormat => 'yyyy년 MM월 dd일';
}

// Path: planDetailsPage.item
class _TranslationsPlanDetailsPageItemKo implements TranslationsPlanDetailsPageItemEn {
	_TranslationsPlanDetailsPageItemKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get viewOnMap => '지도에서 보기';
}

// Path: planDetailsPage.dialog
class _TranslationsPlanDetailsPageDialogKo implements TranslationsPlanDetailsPageDialogEn {
	_TranslationsPlanDetailsPageDialogKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => 'Q. 어떻게 플랜을 사용했음을 증명할 수 있나요?';
	@override String get description => 'A. 플랜에 포함된 장소를 방문하셨습니다.\n 위치 정보를 이용해 판단하지만, 이 기능 외에는 정보가 사용되지 않습니다.';
	@override String get button => '닫기';
}

// Path: planDetailsPage.snackBar
class _TranslationsPlanDetailsPageSnackBarKo implements TranslationsPlanDetailsPageSnackBarEn {
	_TranslationsPlanDetailsPageSnackBarKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsPlanDetailsPageSnackBarErrorKo error = _TranslationsPlanDetailsPageSnackBarErrorKo._(_root);
}

// Path: createLoadingPage.items
class _TranslationsCreateLoadingPageItemsKo implements TranslationsCreateLoadingPageItemsEn {
	_TranslationsCreateLoadingPageItemsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get loadingText1 => 'Buddy가 여행 계획을 몰래 짜고 있어요...';
	@override String get loadingText2 => '최고의 여행을 계획 중...Buddy도 설렘 가득!';
	@override String get loadingText3 => '여행의 미래, 잠시만 기다려주세요~';
	@override String get loadingText4 => '로딩 시간에 여행 상상 어때요?';
	@override String get loadingText5 => '늦잠 계획은 없어요! (아마도)';
	@override String get loadingText6 => '맛있는 식사 계획도 완벽해요!';
	@override String get loadingText7 => '길 잃지 않는 계획 작성 중...아마도.';
	@override String get loadingText8 => '깜짝 서프라이즈가 숨어있을지도?';
	@override String get loadingText9 => 'Buddy, 완벽한 여행을 위해 고군분투 중!';
	@override String get loadingText10 => '즐거운 여행 준비 착착 진행 중!';
	@override String get loadingText11 => '여행 안내서를 몰래 만들고 있어요.';
	@override String get loadingText12 => '길을 잃어도 Buddy가 어떻게든...할걸요!';
	@override String get loadingText13 => '기념품 리스트, 만들어드릴까요?';
	@override String get loadingText14 => '최고의 추억이 기다리고 있어요...아마도.';
	@override String get loadingText15 => '설렘 지수 120%의 여행 준비 중!';
	@override String get loadingText16 => '숨겨진 명소도 찾아보고 있어요.';
	@override String get loadingText17 => 'Buddy가 최적 루트를 몰래 계산 중.';
	@override String get loadingText18 => '당신의 여행, Buddy가 몰래 응원!';
	@override String get loadingText19 => '문제 방지 계획도 준비 중!';
	@override String get loadingText20 => '즐거운 여행의 프롤로그 작성 중!';
	@override String get loadingText21 => '절대 길 잃지 않는 루트...아마도!';
	@override String get loadingText22 => '이 텍스트는 Buddy가 생각하고 있어요';
	@override String get loadingText23 => '오늘 생일인 분 축하드려요!';
	@override String get loadingText24 => '여행의 꿈을 짜는 중...!';
	@override String get loadingText25 => '여행의 소원을 담는 중...!';
	@override String get loadingText26 => '여행의 기적을 기다리는 중...!';
	@override String get loadingText27 => '여행의 만남을 기대하는 중...!';
	@override String get loadingText28 => '예상치 못한 만남을 위해 0.1% 남겨두기';
	@override String get loadingText29 => '현지인만 아는 숨은 명소 탐험 중';
	@override String get loadingText30 => 'Buddy가 계획 작성 중...커피 한잔 하면서 기다려요';
	@override String get loadingText31 => '길치 방지용 지도도 준비 중이에요';
	@override String get loadingText32 => '비행기 구름보다 빠르게 계획 완성!';
	@override String get loadingText33 => '인생샷 스팟 탐색 중';
	@override String get loadingText34 => '간식 타임과 함께 계획 중';
	@override String get loadingText35 => '토픽에서 마음에 드는 플랜을 찾아보세요!';
	@override String get loadingText36 => '프로필은 언제든지 수정할 수 있어요!';
	@override String get loadingText37 => '앱 리뷰 기다리고 있어요!';
	@override String get loadingText38 => '강아지파 고양이파? 저는 고양이파예요';
	@override String get loadingText39 => '관광에서 좋은 일만 가득하길!';
	@override String get loadingText40 => '오늘은 분명 좋은 일이 있을 거예요!';
}

// Path: authentication.authenticationPage.textFields
class _TranslationsAuthenticationAuthenticationPageTextFieldsKo implements TranslationsAuthenticationAuthenticationPageTextFieldsEn {
	_TranslationsAuthenticationAuthenticationPageTextFieldsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get email => '이메일 주소';
	@override String get password => '비밀번호';
}

// Path: authentication.authenticationPage.buttons
class _TranslationsAuthenticationAuthenticationPageButtonsKo implements TranslationsAuthenticationAuthenticationPageButtonsEn {
	_TranslationsAuthenticationAuthenticationPageButtonsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get signIn => '로그인';
	@override String get signUp => '회원가입';
	@override String get resetPassword => '비밀번호를 잊으셨나요?';
	@override String get appleSignIn => 'Apple로 로그인';
	@override String get googleSignIn => 'Google로 로그인';
	@override String get signInAfter => '나중에 가입';
}

// Path: authentication.authenticationPage.changeLanguageDialog
class _TranslationsAuthenticationAuthenticationPageChangeLanguageDialogKo implements TranslationsAuthenticationAuthenticationPageChangeLanguageDialogEn {
	_TranslationsAuthenticationAuthenticationPageChangeLanguageDialogKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '언어 선택';
	@override String get button => '닫기';
}

// Path: authentication.resetPasswordPage.textFields
class _TranslationsAuthenticationResetPasswordPageTextFieldsKo implements TranslationsAuthenticationResetPasswordPageTextFieldsEn {
	_TranslationsAuthenticationResetPasswordPageTextFieldsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get email => '이메일 주소';
}

// Path: authentication.resetPasswordPage.buttons
class _TranslationsAuthenticationResetPasswordPageButtonsKo implements TranslationsAuthenticationResetPasswordPageButtonsEn {
	_TranslationsAuthenticationResetPasswordPageButtonsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get submit => '발송';
}

// Path: authentication.emailVerificationPage.buttons
class _TranslationsAuthenticationEmailVerificationPageButtonsKo implements TranslationsAuthenticationEmailVerificationPageButtonsEn {
	_TranslationsAuthenticationEmailVerificationPageButtonsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get sendEmail => '확인 이메일 발송';
	@override String get resendEmail => '확인 이메일 재발송';
	@override String get toNext => '다음';
	@override String get retypeEmail => '이메일 주소 수정';
}

// Path: authentication.emailVerificationPage.snackBar
class _TranslationsAuthenticationEmailVerificationPageSnackBarKo implements TranslationsAuthenticationEmailVerificationPageSnackBarEn {
	_TranslationsAuthenticationEmailVerificationPageSnackBarKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get success => '발송이 완료되었습니다.';
	@override String get emailVerification => '이메일 주소 인증이 완료되지 않았습니다.';
	@override late final _TranslationsAuthenticationEmailVerificationPageSnackBarErrorKo error = _TranslationsAuthenticationEmailVerificationPageSnackBarErrorKo._(_root);
}

// Path: authentication.registerProfilePage.buttons
class _TranslationsAuthenticationRegisterProfilePageButtonsKo implements TranslationsAuthenticationRegisterProfilePageButtonsEn {
	_TranslationsAuthenticationRegisterProfilePageButtonsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get submit => '완료';
	@override String get skip => '건너뛰기';
}

// Path: authentication.registerProfilePage.snackBar
class _TranslationsAuthenticationRegisterProfilePageSnackBarKo implements TranslationsAuthenticationRegisterProfilePageSnackBarEn {
	_TranslationsAuthenticationRegisterProfilePageSnackBarKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsAuthenticationRegisterProfilePageSnackBarErrorKo error = _TranslationsAuthenticationRegisterProfilePageSnackBarErrorKo._(_root);
}

// Path: authentication.completeSendEmailPage.buttons
class _TranslationsAuthenticationCompleteSendEmailPageButtonsKo implements TranslationsAuthenticationCompleteSendEmailPageButtonsEn {
	_TranslationsAuthenticationCompleteSendEmailPageButtonsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get toSignIn => '로그인 화면으로';
	@override String get resendEmail => '확인 이메일 재발송';
	@override String get changeEmail => '이메일 주소 변경';
}

// Path: authentication.phoneNumberInputPage.discription
class _TranslationsAuthenticationPhoneNumberInputPageDiscriptionKo implements TranslationsAuthenticationPhoneNumberInputPageDiscriptionEn {
	_TranslationsAuthenticationPhoneNumberInputPageDiscriptionKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get receive => 'SMS 코드를 받으려면';
	@override String get internationalFormat => '국제 전화번호 형식으로';
	@override String get input => '전화번호를 입력해주세요';
	@override String get purposeForPhoneNumber => '전화번호는 SMS 인증 코드 발송 외 다른 용도로 사용되지 않습니다';
}

// Path: authentication.phoneNumberInputPage.scaffoldMessenger
class _TranslationsAuthenticationPhoneNumberInputPageScaffoldMessengerKo implements TranslationsAuthenticationPhoneNumberInputPageScaffoldMessengerEn {
	_TranslationsAuthenticationPhoneNumberInputPageScaffoldMessengerKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get empty => '전화번호를 입력해주세요';
	@override String get invalidPhoneNumber => '전화번호 형식이 올바르지 않습니다';
	@override String get success => 'SMS 코드가 전송되었습니다';
	@override String get error => 'SMS 코드 전송에 실패했습니다. 전화번호를 확인하고 다시 시도해주세요.';
	@override String get unexpectedError => '예기치 못한 오류가 발생했습니다:';
	@override String get phoneNumberVerificaiton => '전화번호 인증이 완료되지 않았습니다.';
}

// Path: authentication.smsVerificationPage.resend
class _TranslationsAuthenticationSmsVerificationPageResendKo implements TranslationsAuthenticationSmsVerificationPageResendEn {
	_TranslationsAuthenticationSmsVerificationPageResendKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get title => '재전송';
	@override String get untilRetransmissionPossible => '재전송 가능 시간까지';
	@override String get second => '초';
}

// Path: authentication.smsVerificationPage.scaffoldMessenger
class _TranslationsAuthenticationSmsVerificationPageScaffoldMessengerKo implements TranslationsAuthenticationSmsVerificationPageScaffoldMessengerEn {
	_TranslationsAuthenticationSmsVerificationPageScaffoldMessengerKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get empty => 'SMS 코드를 입력해주세요';
	@override String get success => '인증에 성공했습니다';
	@override String get error => '인증에 실패했습니다. SMS 코드를 확인하고 다시 시도해주세요.';
	@override String get unexpectedError => '예기치 못한 오류가 발생했습니다:';
}

// Path: authentication.firebaseAuth.error
class _TranslationsAuthenticationFirebaseAuthErrorKo implements TranslationsAuthenticationFirebaseAuthErrorEn {
	_TranslationsAuthenticationFirebaseAuthErrorKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

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
class _TranslationsMyPageAccountStatusDateTimeKo implements TranslationsMyPageAccountStatusDateTimeEn {
	_TranslationsMyPageAccountStatusDateTimeKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String registeredOn({required Object date}) => '${date}에 등록됨';
	@override String get registeredOnFormat => 'yyyy년 MM월 dd일';
	@override String validUntil({required Object date}) => '${date}까지 유효함';
	@override String get validUntilFormat => 'yyyy년 MM월 dd일 HH시 mm분';
}

// Path: buddyChatPage.snackBar.error
class _TranslationsBuddyChatPageSnackBarErrorKo implements TranslationsBuddyChatPageSnackBarErrorEn {
	_TranslationsBuddyChatPageSnackBarErrorKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get failedRecieveMessage => '답변 수신에 실패했습니다. 잠시 후 다시 시도해주세요.';
	@override String get failedCompleteCreatePlan => '플랜 생성에 실패했습니다. 잠시 후 다시 시도해주세요.';
}

// Path: createPlanPage.snackBar.error
class _TranslationsCreatePlanPageSnackBarErrorKo implements TranslationsCreatePlanPageSnackBarErrorEn {
	_TranslationsCreatePlanPageSnackBarErrorKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get foundUnSelectedField => '선택되지 않은 항목이 있습니다. 모든 항목을 선택해주세요.';
	@override String get invalidDateRange => '시작일은 종료일보다 이전으로 설정해야 합니다.';
}

// Path: editProfilePage.snackBar.error
class _TranslationsEditProfilePageSnackBarErrorKo implements TranslationsEditProfilePageSnackBarErrorEn {
	_TranslationsEditProfilePageSnackBarErrorKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get noChange => '변경 사항이 없습니다.';
	@override String get failedToUpdate => '업데이트에 실패했습니다. 잠시 후 다시 시도해주세요.';
	@override String get failedToPickImage => '이미지 선택에 실패했습니다. 잠시 후 다시 시도해주세요.';
}

// Path: billDetailsPage.pricingPlan.columns
class _TranslationsBillDetailsPagePricingPlanColumnsKo implements TranslationsBillDetailsPagePricingPlanColumnsEn {
	_TranslationsBillDetailsPagePricingPlanColumnsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get standard => '스탠다드';
	@override String get premium => '프리미엄';
}

// Path: billDetailsPage.pricingPlan.details
class _TranslationsBillDetailsPagePricingPlanDetailsKo implements TranslationsBillDetailsPagePricingPlanDetailsEn {
	_TranslationsBillDetailsPagePricingPlanDetailsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get free => '무료 🎉';
	@override late final _TranslationsBillDetailsPagePricingPlanDetailsPremiumPriceKo premiumPrice = _TranslationsBillDetailsPagePricingPlanDetailsPremiumPriceKo._(_root);
}

// Path: billDetailsPage.features.rows
class _TranslationsBillDetailsPageFeaturesRowsKo implements TranslationsBillDetailsPageFeaturesRowsEn {
	_TranslationsBillDetailsPageFeaturesRowsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get planCreationLimit => '플랜 생성 가능 횟수';
	@override String get chatLimit => '플랜 생성 중 채팅 가능 횟수';
	@override String get timelineAccess => '모든 플랜 목록 타임라인 열람';
	@override String get adFree => '광고 비표시';
	@override String get exclusiveFeatures => '플랜 인증 기능';
}

// Path: billDetailsPage.features.columns
class _TranslationsBillDetailsPageFeaturesColumnsKo implements TranslationsBillDetailsPageFeaturesColumnsEn {
	_TranslationsBillDetailsPageFeaturesColumnsKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override late final _TranslationsBillDetailsPageFeaturesColumnsStandardKo standard = _TranslationsBillDetailsPageFeaturesColumnsStandardKo._(_root);
	@override late final _TranslationsBillDetailsPageFeaturesColumnsPremiumKo premium = _TranslationsBillDetailsPageFeaturesColumnsPremiumKo._(_root);
}

// Path: billDetailsPage.pricingOptions.oneDay
class _TranslationsBillDetailsPagePricingOptionsOneDayKo implements TranslationsBillDetailsPagePricingOptionsOneDayEn {
	_TranslationsBillDetailsPagePricingOptionsOneDayKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get duration => '1일';
	@override String get discount => '';
	@override String get price => '300원';
}

// Path: billDetailsPage.pricingOptions.threeDays
class _TranslationsBillDetailsPagePricingOptionsThreeDaysKo implements TranslationsBillDetailsPagePricingOptionsThreeDaysEn {
	_TranslationsBillDetailsPagePricingOptionsThreeDaysKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get duration => '3일';
	@override String get discount => '-5%';
	@override String get price => '890원';
}

// Path: billDetailsPage.pricingOptions.fiveDays
class _TranslationsBillDetailsPagePricingOptionsFiveDaysKo implements TranslationsBillDetailsPagePricingOptionsFiveDaysEn {
	_TranslationsBillDetailsPagePricingOptionsFiveDaysKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get duration => '5일';
	@override String get discount => '-7.5%';
	@override String get price => '1,387원';
}

// Path: billDetailsPage.pricingOptions.sevenDays
class _TranslationsBillDetailsPagePricingOptionsSevenDaysKo implements TranslationsBillDetailsPagePricingOptionsSevenDaysEn {
	_TranslationsBillDetailsPagePricingOptionsSevenDaysKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get duration => '7일';
	@override String get discount => '-10%';
	@override String get price => '2,070원';
}

// Path: billDetailsPage.pricingOptions.unlimited
class _TranslationsBillDetailsPagePricingOptionsUnlimitedKo implements TranslationsBillDetailsPagePricingOptionsUnlimitedEn {
	_TranslationsBillDetailsPagePricingOptionsUnlimitedKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get duration => '무제한';
	@override String get discount => '-20%';
	@override String get price => '25,800원';
}

// Path: billDetailsPage.snackBar.error
class _TranslationsBillDetailsPageSnackBarErrorKo implements TranslationsBillDetailsPageSnackBarErrorEn {
	_TranslationsBillDetailsPageSnackBarErrorKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get failedToPurchase => '구매에 실패했습니다. 잠시 후 다시 시도해주세요.';
	@override String get PurchaseHistoryNotFound => '구매 기록이 없습니다.';
	@override String get failedToRestorePurchase => '구매 복원에 실패했습니다. 잠시 후 다시 시도해주세요.';
}

// Path: planDetailsPage.snackBar.error
class _TranslationsPlanDetailsPageSnackBarErrorKo implements TranslationsPlanDetailsPageSnackBarErrorEn {
	_TranslationsPlanDetailsPageSnackBarErrorKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get failedToUpdateBookmark => '북마크 업데이트에 실패했습니다. 잠시 후 다시 시도해주세요.';
}

// Path: authentication.emailVerificationPage.snackBar.error
class _TranslationsAuthenticationEmailVerificationPageSnackBarErrorKo implements TranslationsAuthenticationEmailVerificationPageSnackBarErrorEn {
	_TranslationsAuthenticationEmailVerificationPageSnackBarErrorKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get unexpected => '오류가 발생했습니다. 잠시 후 다시 시도하세요.';
}

// Path: authentication.registerProfilePage.snackBar.error
class _TranslationsAuthenticationRegisterProfilePageSnackBarErrorKo implements TranslationsAuthenticationRegisterProfilePageSnackBarErrorEn {
	_TranslationsAuthenticationRegisterProfilePageSnackBarErrorKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get submitIfAllEmpty => '입력해주세요.';
	@override String get unexpected => '오류가 발생했습니다. 잠시 후 다시 시도하세요.';
}

// Path: billDetailsPage.pricingPlan.details.premiumPrice
class _TranslationsBillDetailsPagePricingPlanDetailsPremiumPriceKo implements TranslationsBillDetailsPagePricingPlanDetailsPremiumPriceEn {
	_TranslationsBillDetailsPagePricingPlanDetailsPremiumPriceKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get days => '일별 구매';
	@override String daily({required Object price}) => '・1일 ${price}';
	@override String threeDays({required Object price}) => '・3일 ${price}';
	@override String fiveDays({required Object price}) => '・5일 ${price}';
	@override String sevenDays({required Object price}) => '・7일 ${price}';
	@override String get or => '또는';
	@override String get unlimited => '무제한';
	@override String unlimitedPrice({required Object price}) => '${price}';
}

// Path: billDetailsPage.features.columns.standard
class _TranslationsBillDetailsPageFeaturesColumnsStandardKo implements TranslationsBillDetailsPageFeaturesColumnsStandardEn {
	_TranslationsBillDetailsPageFeaturesColumnsStandardKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get label => '스탠다드';
	@override String get planCreationLimit => '2회';
	@override String get chatLimit => '2회';
}

// Path: billDetailsPage.features.columns.premium
class _TranslationsBillDetailsPageFeaturesColumnsPremiumKo implements TranslationsBillDetailsPageFeaturesColumnsPremiumEn {
	_TranslationsBillDetailsPageFeaturesColumnsPremiumKo._(this._root);

	final TranslationsKo _root; // ignore: unused_field

	// Translations
	@override String get label => '프리미엄';
	@override String get planCreationLimit => '무제한';
	@override String get chatLimit => '무제한';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsKo {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'navigationBar.items.home': return '홈';
			case 'navigationBar.items.myPlan': return '내 플랜';
			case 'navigationBar.items.myPage': return '마이페이지';
			case 'homePage.popularPlans.title': return '인기 플랜';
			case 'homePage.popularTopics.title': return '인기 주제';
			case 'homePage.popularTopics.numberOfTopics': return ({required Object number}) => '${number}개';
			case 'homePage.recentPlans.title': return '최근 생성된 플랜';
			case 'accountPage.title': return '계정 관리';
			case 'accountPage.items.signOut': return '로그아웃';
			case 'accountPage.items.linkedWithGoogle': return 'Google 계정 연동';
			case 'accountPage.items.linkedWithApple': return 'Apple 계정 연동';
			case 'accountPage.items.alreadyLinkedGoogle': return 'Google 연동 완료';
			case 'accountPage.items.alreadyLinkedApple': return 'Apple 연동 완료';
			case 'accountPage.items.deleteAccount': return '계정 삭제';
			case 'accountPage.snackBar.signOut': return '로그아웃되었습니다.';
			case 'accountPage.snackBar.signOutFailure': return '로그아웃 처리 중 오류가 발생했습니다.';
			case 'accountPage.snackBar.successfulLinkage': return '계정 연동이 완료되었습니다.';
			case 'accountPage.snackBar.linkageFailure': return '계정 연동에 실패했습니다.';
			case 'accountPage.snackBar.providerAlreadyLinked': return '이미 연동된 계정입니다.';
			case 'accountPage.snackBar.accountDeactivation': return '계정 연동이 해제되었습니다.';
			case 'accountPage.snackBar.invalidCredential': return '다시 로그인해 주세요.';
			case 'accountPage.snackBar.linkageCancelled': return '계정 연동이 취소되었습니다.';
			case 'accountPage.snackBar.unlinkageFailure': return '계정 연동 해제를 실패했습니다.';
			case 'accountPage.snackBar.operationNotAllowed': return '해당 서비스가 비활성화되었습니다. 개발자에게 문의해 주세요.';
			case 'accountPage.snackBar.unknownError': return '알 수 없는 오류가 발생했습니다.';
			case 'accountPage.snackBar.deleteAccount': return '계정이 삭제되었습니다.';
			case 'accountPage.snackBar.deleteAccountFailure': return '계정 삭제를 실패했습니다.';
			case 'accountPage.diaLog.yes': return '예';
			case 'accountPage.diaLog.no': return '아니오';
			case 'accountPage.diaLog.title': return '계정 연동 해제 확인';
			case 'accountPage.diaLog.googleText': return 'Google 계정 연동을 해제하시겠습니까?';
			case 'accountPage.diaLog.appleText': return 'Apple 계정 연동을 해제하시겠습니까?';
			case 'accountPage.diaLog.signOut': return '로그아웃 하시겠습니까?';
			case 'accountPage.diaLog.signOutText': return '다시 로그인해야 서비스를 이용하실 수 있습니다.';
			case 'accountPage.diaLog.deleteAccount': return '정말 계정을 삭제하시겠습니까?';
			case 'accountPage.diaLog.deleteAccountText': return '삭제 시 모든 데이터가 영구적으로 삭제됩니다.';
			case 'authentication.authenticationPage.title': return '로그인 / 회원가입';
			case 'authentication.authenticationPage.optionText': return ' 또는 ';
			case 'authentication.authenticationPage.textFields.email': return '이메일 주소';
			case 'authentication.authenticationPage.textFields.password': return '비밀번호';
			case 'authentication.authenticationPage.buttons.signIn': return '로그인';
			case 'authentication.authenticationPage.buttons.signUp': return '회원가입';
			case 'authentication.authenticationPage.buttons.resetPassword': return '비밀번호를 잊으셨나요?';
			case 'authentication.authenticationPage.buttons.appleSignIn': return 'Apple로 로그인';
			case 'authentication.authenticationPage.buttons.googleSignIn': return 'Google로 로그인';
			case 'authentication.authenticationPage.buttons.signInAfter': return '나중에 가입';
			case 'authentication.authenticationPage.changeLanguageDialog.title': return '언어 선택';
			case 'authentication.authenticationPage.changeLanguageDialog.button': return '닫기';
			case 'authentication.resetPasswordPage.title': return '비밀번호 재설정';
			case 'authentication.resetPasswordPage.description': return '입력한 이메일 주소로 비밀번호 재설정 이메일을 발송합니다.';
			case 'authentication.resetPasswordPage.textFields.email': return '이메일 주소';
			case 'authentication.resetPasswordPage.buttons.submit': return '발송';
			case 'authentication.emailVerificationPage.title': return '이메일 주소 확인';
			case 'authentication.emailVerificationPage.descriptionForDestination': return ({required Object email}) => '입력된 ${email}로 확인 이메일을 보냈습니다';
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
			case 'authentication.phoneNumberInputPage.title': return '전화번호 입력';
			case 'authentication.phoneNumberInputPage.discription.receive': return 'SMS 코드를 받으려면';
			case 'authentication.phoneNumberInputPage.discription.internationalFormat': return '국제 전화번호 형식으로';
			case 'authentication.phoneNumberInputPage.discription.input': return '전화번호를 입력해주세요';
			case 'authentication.phoneNumberInputPage.discription.purposeForPhoneNumber': return '전화번호는 SMS 인증 코드 발송 외 다른 용도로 사용되지 않습니다';
			case 'authentication.phoneNumberInputPage.phoneNumber': return '전화번호';
			case 'authentication.phoneNumberInputPage.sendSmsCode': return 'SMS 코드 보내기';
			case 'authentication.phoneNumberInputPage.scaffoldMessenger.empty': return '전화번호를 입력해주세요';
			case 'authentication.phoneNumberInputPage.scaffoldMessenger.invalidPhoneNumber': return '전화번호 형식이 올바르지 않습니다';
			case 'authentication.phoneNumberInputPage.scaffoldMessenger.success': return 'SMS 코드가 전송되었습니다';
			case 'authentication.phoneNumberInputPage.scaffoldMessenger.error': return 'SMS 코드 전송에 실패했습니다. 전화번호를 확인하고 다시 시도해주세요.';
			case 'authentication.phoneNumberInputPage.scaffoldMessenger.unexpectedError': return '예기치 못한 오류가 발생했습니다:';
			case 'authentication.phoneNumberInputPage.scaffoldMessenger.phoneNumberVerificaiton': return '전화번호 인증이 완료되지 않았습니다.';
			case 'authentication.smsVerificationPage.title': return 'SMS 인증';
			case 'authentication.smsVerificationPage.sendSms': return '다음 전화번호로 SMS 코드를 보냈습니다:';
			case 'authentication.smsVerificationPage.pleaseInputCode': return '코드를 입력하여 전화번호 인증을 완료하세요.';
			case 'authentication.smsVerificationPage.resend.title': return '재전송';
			case 'authentication.smsVerificationPage.resend.untilRetransmissionPossible': return '재전송 가능 시간까지';
			case 'authentication.smsVerificationPage.resend.second': return '초';
			case 'authentication.smsVerificationPage.smsCode': return 'SMS 코드';
			case 'authentication.smsVerificationPage.verify': return '인증';
			case 'authentication.smsVerificationPage.fixPhoneNumber': return '전화번호 수정';
			case 'authentication.smsVerificationPage.scaffoldMessenger.empty': return 'SMS 코드를 입력해주세요';
			case 'authentication.smsVerificationPage.scaffoldMessenger.success': return '인증에 성공했습니다';
			case 'authentication.smsVerificationPage.scaffoldMessenger.error': return '인증에 실패했습니다. SMS 코드를 확인하고 다시 시도해주세요.';
			case 'authentication.smsVerificationPage.scaffoldMessenger.unexpectedError': return '예기치 못한 오류가 발생했습니다:';
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
			case 'changeLanguagePage.items.japanese': return '日本語';
			case 'changeLanguagePage.items.english': return 'English';
			case 'changeLanguagePage.items.simplifiedChinese': return '中文（简体）';
			case 'changeLanguagePage.items.traditionalChinese': return '中文(繁体字)';
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
			case 'createPlanPage.snackBar.error.invalidDateRange': return '시작일은 종료일보다 이전으로 설정해야 합니다.';
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
			case 'billDetailsPage.title.chat': return '무제한 채팅을 사용해 보시겠습니까?';
			case 'billDetailsPage.description': return '프리미엄 플랜으로 더욱 편리한 시부야 여행을 계획해 보세요.';
			case 'billDetailsPage.pricingPlan.title': return '요금제';
			case 'billDetailsPage.pricingPlan.columns.standard': return '스탠다드';
			case 'billDetailsPage.pricingPlan.columns.premium': return '프리미엄';
			case 'billDetailsPage.pricingPlan.details.free': return '무료 🎉';
			case 'billDetailsPage.pricingPlan.details.premiumPrice.days': return '일별 구매';
			case 'billDetailsPage.pricingPlan.details.premiumPrice.daily': return ({required Object price}) => '・1일 ${price}';
			case 'billDetailsPage.pricingPlan.details.premiumPrice.threeDays': return ({required Object price}) => '・3일 ${price}';
			case 'billDetailsPage.pricingPlan.details.premiumPrice.fiveDays': return ({required Object price}) => '・5일 ${price}';
			case 'billDetailsPage.pricingPlan.details.premiumPrice.sevenDays': return ({required Object price}) => '・7일 ${price}';
			case 'billDetailsPage.pricingPlan.details.premiumPrice.or': return '또는';
			case 'billDetailsPage.pricingPlan.details.premiumPrice.unlimited': return '무제한';
			case 'billDetailsPage.pricingPlan.details.premiumPrice.unlimitedPrice': return ({required Object price}) => '${price}';
			case 'billDetailsPage.features.title': return '등급별 기능';
			case 'billDetailsPage.features.rows.planCreationLimit': return '플랜 생성 가능 횟수';
			case 'billDetailsPage.features.rows.chatLimit': return '플랜 생성 중 채팅 가능 횟수';
			case 'billDetailsPage.features.rows.timelineAccess': return '모든 플랜 목록 타임라인 열람';
			case 'billDetailsPage.features.rows.adFree': return '광고 비표시';
			case 'billDetailsPage.features.rows.exclusiveFeatures': return '플랜 인증 기능';
			case 'billDetailsPage.features.columns.standard.label': return '스탠다드';
			case 'billDetailsPage.features.columns.standard.planCreationLimit': return '2회';
			case 'billDetailsPage.features.columns.standard.chatLimit': return '2회';
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
			case 'billDetailsPage.pricingOptions.unlimited.duration': return '무제한';
			case 'billDetailsPage.pricingOptions.unlimited.discount': return '-20%';
			case 'billDetailsPage.pricingOptions.unlimited.price': return '25,800원';
			case 'billDetailsPage.restorePurchaseSection.button': return '구매 복원';
			case 'billDetailsPage.restorePurchaseSection.textButton': return '구매 복원이란?';
			case 'billDetailsPage.upgradeButton': return '프리미엄으로 업그레이드';
			case 'billDetailsPage.snackBar.error.failedToPurchase': return '구매에 실패했습니다. 잠시 후 다시 시도해주세요.';
			case 'billDetailsPage.snackBar.error.PurchaseHistoryNotFound': return '구매 기록이 없습니다.';
			case 'billDetailsPage.snackBar.error.failedToRestorePurchase': return '구매 복원에 실패했습니다. 잠시 후 다시 시도해주세요.';
			case 'planDetailsPage.dateTime.createOn': return ({required Object date}) => '${date}에 생성된 플랜';
			case 'planDetailsPage.dateTime.dateFormat': return 'yyyy년 MM월 dd일';
			case 'planDetailsPage.item.viewOnMap': return '지도에서 보기';
			case 'planDetailsPage.haveUsedPlan': return '이 플랜을 사용했습니다';
			case 'planDetailsPage.dialog.title': return 'Q. 어떻게 플랜을 사용했음을 증명할 수 있나요?';
			case 'planDetailsPage.dialog.description': return 'A. 플랜에 포함된 장소를 방문하셨습니다.\n 위치 정보를 이용해 판단하지만, 이 기능 외에는 정보가 사용되지 않습니다.';
			case 'planDetailsPage.dialog.button': return '닫기';
			case 'planDetailsPage.snackBar.error.failedToUpdateBookmark': return '북마크 업데이트에 실패했습니다. 잠시 후 다시 시도해주세요.';
			case 'createLoadingPage.items.loadingText1': return 'Buddy가 여행 계획을 몰래 짜고 있어요...';
			case 'createLoadingPage.items.loadingText2': return '최고의 여행을 계획 중...Buddy도 설렘 가득!';
			case 'createLoadingPage.items.loadingText3': return '여행의 미래, 잠시만 기다려주세요~';
			case 'createLoadingPage.items.loadingText4': return '로딩 시간에 여행 상상 어때요?';
			case 'createLoadingPage.items.loadingText5': return '늦잠 계획은 없어요! (아마도)';
			case 'createLoadingPage.items.loadingText6': return '맛있는 식사 계획도 완벽해요!';
			case 'createLoadingPage.items.loadingText7': return '길 잃지 않는 계획 작성 중...아마도.';
			case 'createLoadingPage.items.loadingText8': return '깜짝 서프라이즈가 숨어있을지도?';
			case 'createLoadingPage.items.loadingText9': return 'Buddy, 완벽한 여행을 위해 고군분투 중!';
			case 'createLoadingPage.items.loadingText10': return '즐거운 여행 준비 착착 진행 중!';
			case 'createLoadingPage.items.loadingText11': return '여행 안내서를 몰래 만들고 있어요.';
			case 'createLoadingPage.items.loadingText12': return '길을 잃어도 Buddy가 어떻게든...할걸요!';
			case 'createLoadingPage.items.loadingText13': return '기념품 리스트, 만들어드릴까요?';
			case 'createLoadingPage.items.loadingText14': return '최고의 추억이 기다리고 있어요...아마도.';
			case 'createLoadingPage.items.loadingText15': return '설렘 지수 120%의 여행 준비 중!';
			case 'createLoadingPage.items.loadingText16': return '숨겨진 명소도 찾아보고 있어요.';
			case 'createLoadingPage.items.loadingText17': return 'Buddy가 최적 루트를 몰래 계산 중.';
			case 'createLoadingPage.items.loadingText18': return '당신의 여행, Buddy가 몰래 응원!';
			case 'createLoadingPage.items.loadingText19': return '문제 방지 계획도 준비 중!';
			case 'createLoadingPage.items.loadingText20': return '즐거운 여행의 프롤로그 작성 중!';
			case 'createLoadingPage.items.loadingText21': return '절대 길 잃지 않는 루트...아마도!';
			case 'createLoadingPage.items.loadingText22': return '이 텍스트는 Buddy가 생각하고 있어요';
			case 'createLoadingPage.items.loadingText23': return '오늘 생일인 분 축하드려요!';
			case 'createLoadingPage.items.loadingText24': return '여행의 꿈을 짜는 중...!';
			case 'createLoadingPage.items.loadingText25': return '여행의 소원을 담는 중...!';
			case 'createLoadingPage.items.loadingText26': return '여행의 기적을 기다리는 중...!';
			case 'createLoadingPage.items.loadingText27': return '여행의 만남을 기대하는 중...!';
			case 'createLoadingPage.items.loadingText28': return '예상치 못한 만남을 위해 0.1% 남겨두기';
			case 'createLoadingPage.items.loadingText29': return '현지인만 아는 숨은 명소 탐험 중';
			case 'createLoadingPage.items.loadingText30': return 'Buddy가 계획 작성 중...커피 한잔 하면서 기다려요';
			case 'createLoadingPage.items.loadingText31': return '길치 방지용 지도도 준비 중이에요';
			case 'createLoadingPage.items.loadingText32': return '비행기 구름보다 빠르게 계획 완성!';
			case 'createLoadingPage.items.loadingText33': return '인생샷 스팟 탐색 중';
			case 'createLoadingPage.items.loadingText34': return '간식 타임과 함께 계획 중';
			case 'createLoadingPage.items.loadingText35': return '토픽에서 마음에 드는 플랜을 찾아보세요!';
			case 'createLoadingPage.items.loadingText36': return '프로필은 언제든지 수정할 수 있어요!';
			case 'createLoadingPage.items.loadingText37': return '앱 리뷰 기다리고 있어요!';
			case 'createLoadingPage.items.loadingText38': return '강아지파 고양이파? 저는 고양이파예요';
			case 'createLoadingPage.items.loadingText39': return '관광에서 좋은 일만 가득하길!';
			case 'createLoadingPage.items.loadingText40': return '오늘은 분명 좋은 일이 있을 거예요!';
			case 'locales.en': return '영어';
			case 'locales.ja': return '일본어';
			case 'locales.zh': return '중국어';
			case 'locales.ko': return '한국어';
			case 'errorPage.title': return '오류가 발생했습니다...';
			case 'errorPage.message': return '통신 환경을 확인하고 다시 시도해주세요.';
			case 'errorPage.retryButton': return '다시 불러오기';
			case 'mapPage.title': return '지도';
			default: return null;
		}
	}
}

