///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
class Translations implements BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	// Translations
	late final TranslationsNavigationBarEn navigationBar = TranslationsNavigationBarEn._(_root);
	late final TranslationsHomePageEn homePage = TranslationsHomePageEn._(_root);
	late final TranslationsAccountPageEn accountPage = TranslationsAccountPageEn._(_root);
	late final TranslationsAuthenticationEn authentication = TranslationsAuthenticationEn._(_root);
	late final TranslationsValidationEn validation = TranslationsValidationEn._(_root);
	late final TranslationsMyPageEn myPage = TranslationsMyPageEn._(_root);
	late final TranslationsChangeLanguagePageEn changeLanguagePage = TranslationsChangeLanguagePageEn._(_root);
	late final TranslationsChangeThemePageEn changeThemePage = TranslationsChangeThemePageEn._(_root);
	late final TranslationsMyPlanPageEn myPlanPage = TranslationsMyPlanPageEn._(_root);
	late final TranslationsBuddyChatPageEn buddyChatPage = TranslationsBuddyChatPageEn._(_root);
	late final TranslationsPopularTopicsEn popularTopics = TranslationsPopularTopicsEn._(_root);
	late final TranslationsCreatePlanPageEn createPlanPage = TranslationsCreatePlanPageEn._(_root);
	late final TranslationsEditProfilePageEn editProfilePage = TranslationsEditProfilePageEn._(_root);
	late final TranslationsConfirmDialogEn confirmDialog = TranslationsConfirmDialogEn._(_root);
	late final TranslationsPromptEn prompt = TranslationsPromptEn._(_root);
	late final TranslationsBillDetailsPageEn billDetailsPage = TranslationsBillDetailsPageEn._(_root);
	late final TranslationsPlanDetailsPageEn planDetailsPage = TranslationsPlanDetailsPageEn._(_root);
	late final TranslationsCreateLoadingPageEn createLoadingPage = TranslationsCreateLoadingPageEn._(_root);
	Map<String, String> get locales => {
		'en': 'English',
		'ja': 'Japanese',
		'zh': 'Chinese',
		'ko': 'Korean',
	};
	late final TranslationsErrorPageEn errorPage = TranslationsErrorPageEn._(_root);
	late final TranslationsMapPageEn mapPage = TranslationsMapPageEn._(_root);
}

// Path: navigationBar
class TranslationsNavigationBarEn {
	TranslationsNavigationBarEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsNavigationBarItemsEn items = TranslationsNavigationBarItemsEn._(_root);
}

// Path: homePage
class TranslationsHomePageEn {
	TranslationsHomePageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsHomePagePopularPlansEn popularPlans = TranslationsHomePagePopularPlansEn._(_root);
	late final TranslationsHomePagePopularTopicsEn popularTopics = TranslationsHomePagePopularTopicsEn._(_root);
	late final TranslationsHomePageRecentPlansEn recentPlans = TranslationsHomePageRecentPlansEn._(_root);
}

// Path: accountPage
class TranslationsAccountPageEn {
	TranslationsAccountPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Account';
	late final TranslationsAccountPageItemsEn items = TranslationsAccountPageItemsEn._(_root);
	late final TranslationsAccountPageSnackBarEn snackBar = TranslationsAccountPageSnackBarEn._(_root);
	late final TranslationsAccountPageDiaLogEn diaLog = TranslationsAccountPageDiaLogEn._(_root);
}

// Path: authentication
class TranslationsAuthenticationEn {
	TranslationsAuthenticationEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsAuthenticationSignInPageEn signInPage = TranslationsAuthenticationSignInPageEn._(_root);
	late final TranslationsAuthenticationFirebaseAuthEn firebaseAuth = TranslationsAuthenticationFirebaseAuthEn._(_root);
	late final TranslationsAuthenticationResetPasswordPageEn resetPasswordPage = TranslationsAuthenticationResetPasswordPageEn._(_root);
	late final TranslationsAuthenticationSignUpPageEn signUpPage = TranslationsAuthenticationSignUpPageEn._(_root);
	late final TranslationsAuthenticationEmailVerificationPageEn emailVerificationPage = TranslationsAuthenticationEmailVerificationPageEn._(_root);
	late final TranslationsAuthenticationRegisterProfilePageEn registerProfilePage = TranslationsAuthenticationRegisterProfilePageEn._(_root);
	late final TranslationsAuthenticationCompleteSendEmailPageEn completeSendEmailPage = TranslationsAuthenticationCompleteSendEmailPageEn._(_root);
	late final TranslationsAuthenticationPhoneNumberInputPageEn phoneNumberInputPage = TranslationsAuthenticationPhoneNumberInputPageEn._(_root);
	late final TranslationsAuthenticationSmsVerificationPageEn smsVerificationPage = TranslationsAuthenticationSmsVerificationPageEn._(_root);
}

// Path: validation
class TranslationsValidationEn {
	TranslationsValidationEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get emailRequired => 'Please enter your email address';
	String get emailInvalid => 'The email address format is incorrect';
	String get passwordRequired => 'Please enter your password';
	String get passwordShort => 'The password must be at least 8 characters long';
	String get passwordWeak => 'Please combine alphanumeric characters for the password';
	String get passwordMatch => 'Passwords do not match';
	String get informationRequired => 'Please enter the information';
	String get urlInvalid => 'The URL format is incorrect';
	String get usernameRequired => 'Please enter your username';
	String get usernameMaxLength => 'The username must be 16 characters or fewer';
}

// Path: myPage
class TranslationsMyPageEn {
	TranslationsMyPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get unregisteredUserName => 'Unregistered';
	String get editProfile => 'Edit Profile';
	String get premiumPlan => 'Premium Plan';
	String get details => 'Details';
	String get settings => 'Settings';
	String get account => 'Account';
	String get language => 'Language';
	String get theme => 'Theme';
	String get termsOfUsePrivacyPolicy => 'Terms of Use & Privacy Policy';
	String get aboutThisApp => 'About This App';
	String get aboutTheDeveloper => 'About the Developer';
	late final TranslationsMyPageAccountStatusEn accountStatus = TranslationsMyPageAccountStatusEn._(_root);
}

// Path: changeLanguagePage
class TranslationsChangeLanguagePageEn {
	TranslationsChangeLanguagePageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Language';
	late final TranslationsChangeLanguagePageItemsEn items = TranslationsChangeLanguagePageItemsEn._(_root);
}

// Path: changeThemePage
class TranslationsChangeThemePageEn {
	TranslationsChangeThemePageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Theme';
	late final TranslationsChangeThemePageItemsEn items = TranslationsChangeThemePageItemsEn._(_root);
}

// Path: myPlanPage
class TranslationsMyPlanPageEn {
	TranslationsMyPlanPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'My Plans';
	late final TranslationsMyPlanPageTabsEn tabs = TranslationsMyPlanPageTabsEn._(_root);
	late final TranslationsMyPlanPageBookmarkItemsEn bookmarkItems = TranslationsMyPlanPageBookmarkItemsEn._(_root);
	late final TranslationsMyPlanPageCreatedPlansItemsEn createdPlansItems = TranslationsMyPlanPageCreatedPlansItemsEn._(_root);
	late final TranslationsMyPlanPageErrorEn error = TranslationsMyPlanPageErrorEn._(_root);
}

// Path: buddyChatPage
class TranslationsBuddyChatPageEn {
	TranslationsBuddyChatPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Buddy Suggestions';
	String possibleChatCount({required Object possibleChatCount}) => 'You can send ${possibleChatCount} more messages';
	late final TranslationsBuddyChatPageTextFieldsEn textFields = TranslationsBuddyChatPageTextFieldsEn._(_root);
	late final TranslationsBuddyChatPageButtonsEn buttons = TranslationsBuddyChatPageButtonsEn._(_root);
	late final TranslationsBuddyChatPagePlaceCardEn placeCard = TranslationsBuddyChatPagePlaceCardEn._(_root);
	late final TranslationsBuddyChatPageSnackBarEn snackBar = TranslationsBuddyChatPageSnackBarEn._(_root);
}

// Path: popularTopics
class TranslationsPopularTopicsEn {
	TranslationsPopularTopicsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get sectionName => 'Popular Topics';
}

// Path: createPlanPage
class TranslationsCreatePlanPageEn {
	TranslationsCreatePlanPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Create Plan';
	late final TranslationsCreatePlanPageLabelEn label = TranslationsCreatePlanPageLabelEn._(_root);
	late final TranslationsCreatePlanPageHintTextEn hintText = TranslationsCreatePlanPageHintTextEn._(_root);
	late final TranslationsCreatePlanPageModalEn modal = TranslationsCreatePlanPageModalEn._(_root);
	List<String> get numberOfPeopleOptions => [
		'1 person',
		'2 people',
		'3 people',
		'4 people',
		'5 people',
		'6 or more',
	];
	List<String> get transportOptions => [
		'Train',
		'Walking',
		'Car',
		'Bus',
	];
	List<String> get categoryOptions => [
		'Family-Friendly',
		'Adult',
		'Entertainment',
		'Activity',
		'History',
	];
	List<String> get defaultTopics => [
		'Gourmet',
		'Shopping',
		'Activities',
		'Movies',
	];
	String get submitButton => 'Submit Plan to AI';
	late final TranslationsCreatePlanPageSnackBarEn snackBar = TranslationsCreatePlanPageSnackBarEn._(_root);
}

// Path: editProfilePage
class TranslationsEditProfilePageEn {
	TranslationsEditProfilePageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Edit Profile';
	late final TranslationsEditProfilePageTextFieldsEn textFields = TranslationsEditProfilePageTextFieldsEn._(_root);
	late final TranslationsEditProfilePageButtonsEn buttons = TranslationsEditProfilePageButtonsEn._(_root);
	late final TranslationsEditProfilePageSnackBarEn snackBar = TranslationsEditProfilePageSnackBarEn._(_root);
}

// Path: confirmDialog
class TranslationsConfirmDialogEn {
	TranslationsConfirmDialogEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsConfirmDialogAnswersEn answers = TranslationsConfirmDialogAnswersEn._(_root);
	late final TranslationsConfirmDialogPopPageEn popPage = TranslationsConfirmDialogPopPageEn._(_root);
	late final TranslationsConfirmDialogCompleteCreatePlanEn completeCreatePlan = TranslationsConfirmDialogCompleteCreatePlanEn._(_root);
}

// Path: prompt
class TranslationsPromptEn {
	TranslationsPromptEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get planProposalMessage => 'I’ve come up with this plan! What do you think?';
}

// Path: billDetailsPage
class TranslationsBillDetailsPageEn {
	TranslationsBillDetailsPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsBillDetailsPageTitleEn title = TranslationsBillDetailsPageTitleEn._(_root);
	String get description => 'By subscribing to the Premium Plan, you can enjoy a more comfortable sightseeing experience in Shibuya.';
	late final TranslationsBillDetailsPagePricingPlanEn pricingPlan = TranslationsBillDetailsPagePricingPlanEn._(_root);
	late final TranslationsBillDetailsPageFeaturesEn features = TranslationsBillDetailsPageFeaturesEn._(_root);
	late final TranslationsBillDetailsPagePricingOptionsEn pricingOptions = TranslationsBillDetailsPagePricingOptionsEn._(_root);
	late final TranslationsBillDetailsPageRestorePurchaseSectionEn restorePurchaseSection = TranslationsBillDetailsPageRestorePurchaseSectionEn._(_root);
	String get upgradeButton => 'Upgrade to Premium';
	late final TranslationsBillDetailsPageSnackBarEn snackBar = TranslationsBillDetailsPageSnackBarEn._(_root);
}

// Path: planDetailsPage
class TranslationsPlanDetailsPageEn {
	TranslationsPlanDetailsPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsPlanDetailsPageDateTimeEn dateTime = TranslationsPlanDetailsPageDateTimeEn._(_root);
	late final TranslationsPlanDetailsPageItemEn item = TranslationsPlanDetailsPageItemEn._(_root);
	late final TranslationsPlanDetailsPageSnackBarEn snackBar = TranslationsPlanDetailsPageSnackBarEn._(_root);
}

// Path: createLoadingPage
class TranslationsCreateLoadingPageEn {
	TranslationsCreateLoadingPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsCreateLoadingPageItemsEn items = TranslationsCreateLoadingPageItemsEn._(_root);
}

// Path: errorPage
class TranslationsErrorPageEn {
	TranslationsErrorPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'An error occurred...';
	String get message => 'Please check your network connection and try again.';
	String get retryButton => 'Retry';
}

// Path: mapPage
class TranslationsMapPageEn {
	TranslationsMapPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Map';
}

// Path: navigationBar.items
class TranslationsNavigationBarItemsEn {
	TranslationsNavigationBarItemsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get home => 'Home';
	String get myPlan => 'My Plan';
	String get myPage => 'My Page';
}

// Path: homePage.popularPlans
class TranslationsHomePagePopularPlansEn {
	TranslationsHomePagePopularPlansEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Popular Plans';
}

// Path: homePage.popularTopics
class TranslationsHomePagePopularTopicsEn {
	TranslationsHomePagePopularTopicsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Popular Topics';
	String numberOfTopics({required Object number}) => '${number} items~';
}

// Path: homePage.recentPlans
class TranslationsHomePageRecentPlansEn {
	TranslationsHomePageRecentPlansEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Recently Created Plans';
}

// Path: accountPage.items
class TranslationsAccountPageItemsEn {
	TranslationsAccountPageItemsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get signOut => 'Sign Out';
	String get linkedWithGoogle => 'Linked with Google';
	String get linkedWithApple => 'Linked with Apple';
	String get alreadyLinkedGoogle => 'Already Linked with Google';
	String get alreadyLinkedApple => 'Already Linked with Apple';
	String get deleteAccount => 'Delete Account';
}

// Path: accountPage.snackBar
class TranslationsAccountPageSnackBarEn {
	TranslationsAccountPageSnackBarEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get signOut => 'You have been logged out.';
	String get signOutFailure => 'An error occurred while signing out.';
	String get successfulLinkage => 'Account linked successfully.';
	String get linkageFailure => 'Failed to link account.';
	String get providerAlreadyLinked => 'This account has already been linked.';
	String get accountDeactivation => 'Account linkage has been removed.';
	String get invalidCredential => 'Please try logging in again.';
	String get linkageCancelled => 'Account linking was cancelled.';
	String get unlinkageFailure => 'Failed to remove account linkage.';
	String get operationNotAllowed => 'Provider is invalid. Please contact the developer.';
	String get unknownError => 'An unknown error occurred.';
	String get deleteAccount => 'Your account has been deleted.';
	String get deleteAccountFailure => 'Failed to delete your account.';
}

// Path: accountPage.diaLog
class TranslationsAccountPageDiaLogEn {
	TranslationsAccountPageDiaLogEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get yes => 'Yes';
	String get no => 'No';
	String get title => 'Confirm Account Unlinking';
	String get googleText => 'Do you want to unlink the current account from your Google account?';
	String get appleText => 'Do you want to unlink the current account from your Apple account?';
	String get signOut => 'Do you want to sign out?';
	String get signOutText => 'Re-login is required to use the app\'s features.';
	String get deleteAccount => 'Do you want to delete your account?';
	String get deleteAccountText => 'Deleting your account will remove all data.';
}

// Path: authentication.signInPage
class TranslationsAuthenticationSignInPageEn {
	TranslationsAuthenticationSignInPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Sign In';
	String get optionText => ' or ';
	late final TranslationsAuthenticationSignInPageTextFieldsEn textFields = TranslationsAuthenticationSignInPageTextFieldsEn._(_root);
	late final TranslationsAuthenticationSignInPageButtonsEn buttons = TranslationsAuthenticationSignInPageButtonsEn._(_root);
	late final TranslationsAuthenticationSignInPageChangeLanguageDialogEn changeLanguageDialog = TranslationsAuthenticationSignInPageChangeLanguageDialogEn._(_root);
}

// Path: authentication.firebaseAuth
class TranslationsAuthenticationFirebaseAuthEn {
	TranslationsAuthenticationFirebaseAuthEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsAuthenticationFirebaseAuthErrorEn error = TranslationsAuthenticationFirebaseAuthErrorEn._(_root);
}

// Path: authentication.resetPasswordPage
class TranslationsAuthenticationResetPasswordPageEn {
	TranslationsAuthenticationResetPasswordPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Reset Password';
	String get description => 'A password reset email will be sent to the entered email address';
	late final TranslationsAuthenticationResetPasswordPageTextFieldsEn textFields = TranslationsAuthenticationResetPasswordPageTextFieldsEn._(_root);
	late final TranslationsAuthenticationResetPasswordPageButtonsEn buttons = TranslationsAuthenticationResetPasswordPageButtonsEn._(_root);
}

// Path: authentication.signUpPage
class TranslationsAuthenticationSignUpPageEn {
	TranslationsAuthenticationSignUpPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsAuthenticationSignUpPageTitleEn title = TranslationsAuthenticationSignUpPageTitleEn._(_root);
	late final TranslationsAuthenticationSignUpPageTextFieldsEn textFields = TranslationsAuthenticationSignUpPageTextFieldsEn._(_root);
	late final TranslationsAuthenticationSignUpPageButtonEn button = TranslationsAuthenticationSignUpPageButtonEn._(_root);
}

// Path: authentication.emailVerificationPage
class TranslationsAuthenticationEmailVerificationPageEn {
	TranslationsAuthenticationEmailVerificationPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Email Address Verification';
	String descriptionForDestination({required Object email}) => 'A verification email has been sent to the entered ${email}';
	String get descriptionForCoolDown => 'You can resend the verification email once every 60 seconds.';
	late final TranslationsAuthenticationEmailVerificationPageButtonsEn buttons = TranslationsAuthenticationEmailVerificationPageButtonsEn._(_root);
	late final TranslationsAuthenticationEmailVerificationPageSnackBarEn snackBar = TranslationsAuthenticationEmailVerificationPageSnackBarEn._(_root);
}

// Path: authentication.registerProfilePage
class TranslationsAuthenticationRegisterProfilePageEn {
	TranslationsAuthenticationRegisterProfilePageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Profile Registration';
	String get textFields => 'Name';
	late final TranslationsAuthenticationRegisterProfilePageButtonsEn buttons = TranslationsAuthenticationRegisterProfilePageButtonsEn._(_root);
	late final TranslationsAuthenticationRegisterProfilePageSnackBarEn snackBar = TranslationsAuthenticationRegisterProfilePageSnackBarEn._(_root);
}

// Path: authentication.completeSendEmailPage
class TranslationsAuthenticationCompleteSendEmailPageEn {
	TranslationsAuthenticationCompleteSendEmailPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Send Complete';
	String description({required Object email}) => 'A password reset email has been sent to ${email} \n Please log in from the login screen after resetting';
	String get successResendEmail => 'Confirmation email has been resent';
	late final TranslationsAuthenticationCompleteSendEmailPageButtonsEn buttons = TranslationsAuthenticationCompleteSendEmailPageButtonsEn._(_root);
}

// Path: authentication.phoneNumberInputPage
class TranslationsAuthenticationPhoneNumberInputPageEn {
	TranslationsAuthenticationPhoneNumberInputPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Enter Phone Number';
	late final TranslationsAuthenticationPhoneNumberInputPageDiscriptionEn discription = TranslationsAuthenticationPhoneNumberInputPageDiscriptionEn._(_root);
	String get phoneNumber => 'Phone Number';
	String get sendSmsCode => 'Send SMS Code';
	late final TranslationsAuthenticationPhoneNumberInputPageScaffoldMessengerEn scaffoldMessenger = TranslationsAuthenticationPhoneNumberInputPageScaffoldMessengerEn._(_root);
}

// Path: authentication.smsVerificationPage
class TranslationsAuthenticationSmsVerificationPageEn {
	TranslationsAuthenticationSmsVerificationPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'SMS Verification';
	String get sendSms => 'SMS code has been sent to the following phone number:';
	String get pleaseInputCode => 'Please enter the code to complete phone number verification.';
	late final TranslationsAuthenticationSmsVerificationPageResendEn resend = TranslationsAuthenticationSmsVerificationPageResendEn._(_root);
	String get smsCode => 'SMS Code';
	String get verify => 'Verify';
	String get fixPhoneNumber => 'Edit Phone Number';
	late final TranslationsAuthenticationSmsVerificationPageScaffoldMessengerEn scaffoldMessenger = TranslationsAuthenticationSmsVerificationPageScaffoldMessengerEn._(_root);
}

// Path: myPage.accountStatus
class TranslationsMyPageAccountStatusEn {
	TranslationsMyPageAccountStatusEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsMyPageAccountStatusDateTimeEn dateTime = TranslationsMyPageAccountStatusDateTimeEn._(_root);
	String get premium => 'Premium Member';
	String get standard => 'Standard Member';
}

// Path: changeLanguagePage.items
class TranslationsChangeLanguagePageItemsEn {
	TranslationsChangeLanguagePageItemsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get japanese => 'Japanese';
	String get english => 'English';
	String get simplifiedChinese => 'Chinese (Simplified)';
	String get traditionalChinese => 'Chinese (Traditional)';
	String get korean => 'korean';
}

// Path: changeThemePage.items
class TranslationsChangeThemePageItemsEn {
	TranslationsChangeThemePageItemsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get system => 'System';
	String get light => 'Light';
	String get dark => 'Dark';
}

// Path: myPlanPage.tabs
class TranslationsMyPlanPageTabsEn {
	TranslationsMyPlanPageTabsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get createdPlans => 'Created Plans';
	String get bookmark => 'Bookmarks';
}

// Path: myPlanPage.bookmarkItems
class TranslationsMyPlanPageBookmarkItemsEn {
	TranslationsMyPlanPageBookmarkItemsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get nondata => 'No bookmarked plans yet.';
	String get reloading => 'Reload';
}

// Path: myPlanPage.createdPlansItems
class TranslationsMyPlanPageCreatedPlansItemsEn {
	TranslationsMyPlanPageCreatedPlansItemsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get nondata => 'Let\'s create a plan!';
	String get createaplan => 'Create a Plan';
}

// Path: myPlanPage.error
class TranslationsMyPlanPageErrorEn {
	TranslationsMyPlanPageErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get displayError => 'An error occurred while displaying the plan.';
	String get failedGetId => 'Failed to retrieve plan ID.';
	String get failedGetPlanData => 'An error occurred while retrieving plan data.';
	String get failedUnBookmark => 'Failed to remove bookmark.';
}

// Path: buddyChatPage.textFields
class TranslationsBuddyChatPageTextFieldsEn {
	TranslationsBuddyChatPageTextFieldsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get message => 'Enter message';
}

// Path: buddyChatPage.buttons
class TranslationsBuddyChatPageButtonsEn {
	TranslationsBuddyChatPageButtonsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get send => 'Done';
}

// Path: buddyChatPage.placeCard
class TranslationsBuddyChatPagePlaceCardEn {
	TranslationsBuddyChatPagePlaceCardEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get openingHours => 'Opening Hours';
	String get averageAmount => 'Average Budget';
	String get website => 'Website';
}

// Path: buddyChatPage.snackBar
class TranslationsBuddyChatPageSnackBarEn {
	TranslationsBuddyChatPageSnackBarEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsBuddyChatPageSnackBarErrorEn error = TranslationsBuddyChatPageSnackBarErrorEn._(_root);
}

// Path: createPlanPage.label
class TranslationsCreatePlanPageLabelEn {
	TranslationsCreatePlanPageLabelEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get location => 'Destination';
	String get scheduleStart => 'Start Date';
	String get scheduleEnd => 'End Date';
	String get numberOfPeople => 'Number of People';
	String get transport => 'Transportation';
	String get category => 'Category';
	String get topics => 'Travel Topics';
}

// Path: createPlanPage.hintText
class TranslationsCreatePlanPageHintTextEn {
	TranslationsCreatePlanPageHintTextEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get location => 'Shibuya';
}

// Path: createPlanPage.modal
class TranslationsCreatePlanPageModalEn {
	TranslationsCreatePlanPageModalEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Select a date';
}

// Path: createPlanPage.snackBar
class TranslationsCreatePlanPageSnackBarEn {
	TranslationsCreatePlanPageSnackBarEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsCreatePlanPageSnackBarErrorEn error = TranslationsCreatePlanPageSnackBarErrorEn._(_root);
}

// Path: editProfilePage.textFields
class TranslationsEditProfilePageTextFieldsEn {
	TranslationsEditProfilePageTextFieldsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get name => 'Name';
}

// Path: editProfilePage.buttons
class TranslationsEditProfilePageButtonsEn {
	TranslationsEditProfilePageButtonsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get submit => 'Save';
}

// Path: editProfilePage.snackBar
class TranslationsEditProfilePageSnackBarEn {
	TranslationsEditProfilePageSnackBarEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get success => 'Updated successfully';
	late final TranslationsEditProfilePageSnackBarErrorEn error = TranslationsEditProfilePageSnackBarErrorEn._(_root);
}

// Path: confirmDialog.answers
class TranslationsConfirmDialogAnswersEn {
	TranslationsConfirmDialogAnswersEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get yes => 'Yes';
	String get no => 'No';
}

// Path: confirmDialog.popPage
class TranslationsConfirmDialogPopPageEn {
	TranslationsConfirmDialogPopPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Return to the previous page?';
	String get description => 'Current content will not be saved.';
}

// Path: confirmDialog.completeCreatePlan
class TranslationsConfirmDialogCompleteCreatePlanEn {
	TranslationsConfirmDialogCompleteCreatePlanEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Confirm the plan?';
	String get description => 'The plan in the last message will be saved.';
}

// Path: billDetailsPage.title
class TranslationsBillDetailsPageTitleEn {
	TranslationsBillDetailsPageTitleEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get defaultTitle => 'Premium Plan';
	String get createPlan => 'Do you want to enable unlimited plan creation?';
	String get chat => 'Do you want to enjoy unlimited chatting?';
}

// Path: billDetailsPage.pricingPlan
class TranslationsBillDetailsPagePricingPlanEn {
	TranslationsBillDetailsPagePricingPlanEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Pricing Plan';
	late final TranslationsBillDetailsPagePricingPlanColumnsEn columns = TranslationsBillDetailsPagePricingPlanColumnsEn._(_root);
	late final TranslationsBillDetailsPagePricingPlanDetailsEn details = TranslationsBillDetailsPagePricingPlanDetailsEn._(_root);
}

// Path: billDetailsPage.features
class TranslationsBillDetailsPageFeaturesEn {
	TranslationsBillDetailsPageFeaturesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Features by Grade';
	late final TranslationsBillDetailsPageFeaturesRowsEn rows = TranslationsBillDetailsPageFeaturesRowsEn._(_root);
	late final TranslationsBillDetailsPageFeaturesColumnsEn columns = TranslationsBillDetailsPageFeaturesColumnsEn._(_root);
}

// Path: billDetailsPage.pricingOptions
class TranslationsBillDetailsPagePricingOptionsEn {
	TranslationsBillDetailsPagePricingOptionsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsBillDetailsPagePricingOptionsOneDayEn oneDay = TranslationsBillDetailsPagePricingOptionsOneDayEn._(_root);
	late final TranslationsBillDetailsPagePricingOptionsThreeDaysEn threeDays = TranslationsBillDetailsPagePricingOptionsThreeDaysEn._(_root);
	late final TranslationsBillDetailsPagePricingOptionsFiveDaysEn fiveDays = TranslationsBillDetailsPagePricingOptionsFiveDaysEn._(_root);
	late final TranslationsBillDetailsPagePricingOptionsSevenDaysEn sevenDays = TranslationsBillDetailsPagePricingOptionsSevenDaysEn._(_root);
	late final TranslationsBillDetailsPagePricingOptionsUnlimitedEn unlimited = TranslationsBillDetailsPagePricingOptionsUnlimitedEn._(_root);
}

// Path: billDetailsPage.restorePurchaseSection
class TranslationsBillDetailsPageRestorePurchaseSectionEn {
	TranslationsBillDetailsPageRestorePurchaseSectionEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get button => 'Restore Purchase';
	String get textButton => 'What is Restore Purchase?';
}

// Path: billDetailsPage.snackBar
class TranslationsBillDetailsPageSnackBarEn {
	TranslationsBillDetailsPageSnackBarEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsBillDetailsPageSnackBarErrorEn error = TranslationsBillDetailsPageSnackBarErrorEn._(_root);
}

// Path: planDetailsPage.dateTime
class TranslationsPlanDetailsPageDateTimeEn {
	TranslationsPlanDetailsPageDateTimeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String createOn({required Object date}) => 'Plan created on${date}';
	String get dateFormat => 'MM/dd/yyyy';
}

// Path: planDetailsPage.item
class TranslationsPlanDetailsPageItemEn {
	TranslationsPlanDetailsPageItemEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get viewOnMap => 'View on Map';
}

// Path: planDetailsPage.snackBar
class TranslationsPlanDetailsPageSnackBarEn {
	TranslationsPlanDetailsPageSnackBarEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsPlanDetailsPageSnackBarErrorEn error = TranslationsPlanDetailsPageSnackBarErrorEn._(_root);
}

// Path: createLoadingPage.items
class TranslationsCreateLoadingPageItemsEn {
	TranslationsCreateLoadingPageItemsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get loadingText1 => 'Buddy\'s secretly crafting your travel plans... Shh!';
	String get loadingText2 => 'Planning the best trip ever... Buddy\'s excited too!';
	String get loadingText3 => 'Hold onto your passport, adventure loading...';
	String get loadingText4 => 'Perfect time to daydream about your destination!';
	String get loadingText5 => 'No snooze button on this adventure!';
	String get loadingText6 => 'Searching for the best food spots... yum!';
	String get loadingText7 => 'Creating a no-getting-lost plan... probably.';
	String get loadingText8 => 'Maybe adding a surprise or two...';
	String get loadingText9 => 'Buddy\'s working overtime for your perfect trip!';
	String get loadingText10 => 'Your adventure is brewing...';
	String get loadingText11 => 'Crafting your travel guide with extra care!';
	String get loadingText12 => 'Lost? Don\'t worry, Buddy\'s got your back!';
	String get loadingText13 => 'Shall we make a souvenir shopping list?';
	String get loadingText14 => 'Amazing memories loading... 99%';
	String get loadingText15 => 'Excitement level: Over 9000!';
	String get loadingText16 => 'Hunting for hidden gems just for you...';
	String get loadingText17 => 'Buddy\'s calculating the best routes... with math!';
	String get loadingText18 => 'Your personal travel cheerleader at work!';
	String get loadingText19 => 'Preparing Plan B, C, and maybe Z...';
	String get loadingText20 => 'Writing the prologue to your adventure!';
	String get loadingText21 => 'Creating an un-lose-able route... hopefully!';
	String get loadingText22 => 'Buddy\'s brain is working hard right now';
	String get loadingText23 => 'Happy birthday to someone, somewhere!';
	String get loadingText24 => 'Weaving travel dreams...';
	String get loadingText25 => 'Sprinkling travel wishes...';
	String get loadingText26 => 'Waiting for travel miracles...';
	String get loadingText27 => 'Expecting unexpected encounters...';
	String get loadingText28 => 'Leaving 0.1% room for serendipity';
	String get loadingText29 => 'Finding spots only locals know about';
	String get loadingText30 => 'Buddy\'s working... grab a coffee!';
	String get loadingText31 => 'Preparing anti-lost maps...';
	String get loadingText32 => 'Faster than a disappearing contrail!';
	String get loadingText33 => 'Scouting Instagram-worthy photo spots';
	String get loadingText34 => 'Taking a snack break while planning';
	String get loadingText35 => 'Find your perfect plan in Topics!';
	String get loadingText36 => 'Profile updates welcome anytime!';
	String get loadingText37 => 'Reviews appreciated, high-fives welcome!';
	String get loadingText38 => 'Team Cat or Team Dog? Meow all the way!';
	String get loadingText39 => 'May your sightseeing be blessed!';
	String get loadingText40 => 'Today\'s gonna be pawsome!';
}

// Path: authentication.signInPage.textFields
class TranslationsAuthenticationSignInPageTextFieldsEn {
	TranslationsAuthenticationSignInPageTextFieldsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get email => 'Email Address';
	String get password => 'Password';
}

// Path: authentication.signInPage.buttons
class TranslationsAuthenticationSignInPageButtonsEn {
	TranslationsAuthenticationSignInPageButtonsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get signIn => 'Sign In';
	String get signUp => 'Sign Up';
	String get resetPassword => 'Forgot Password?';
	String get appleSignIn => 'Sign in with Apple';
	String get googleSignIn => 'Sign in with Google';
	String get signInAfter => 'Register Later';
}

// Path: authentication.signInPage.changeLanguageDialog
class TranslationsAuthenticationSignInPageChangeLanguageDialogEn {
	TranslationsAuthenticationSignInPageChangeLanguageDialogEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Select Language';
	String get button => 'Close';
}

// Path: authentication.firebaseAuth.error
class TranslationsAuthenticationFirebaseAuthErrorEn {
	TranslationsAuthenticationFirebaseAuthErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get networkRequestFailed => 'Please try again in a good network environment';
	String get weakPassword => 'Password is too short. Please enter 6 characters or more';
	String get invalidEmail => 'Email address is not in the correct format';
	String get userNotFound => 'Account not found';
	String get wrongPassword => 'Password is incorrect';
	String get emailAlreadyInUse => 'Email address is already in use. Please log in or create with another email address';
	String get unexpected => 'An error occurred. Please try again in a good network environment';
}

// Path: authentication.resetPasswordPage.textFields
class TranslationsAuthenticationResetPasswordPageTextFieldsEn {
	TranslationsAuthenticationResetPasswordPageTextFieldsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get email => 'Email Address';
}

// Path: authentication.resetPasswordPage.buttons
class TranslationsAuthenticationResetPasswordPageButtonsEn {
	TranslationsAuthenticationResetPasswordPageButtonsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get submit => 'Submit';
}

// Path: authentication.signUpPage.title
class TranslationsAuthenticationSignUpPageTitleEn {
	TranslationsAuthenticationSignUpPageTitleEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get defaultText => 'Sign Up';
	String get modifyEmail => 'Change Email Address';
}

// Path: authentication.signUpPage.textFields
class TranslationsAuthenticationSignUpPageTextFieldsEn {
	TranslationsAuthenticationSignUpPageTextFieldsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get email => 'Email Address';
	String get password => 'Password';
}

// Path: authentication.signUpPage.button
class TranslationsAuthenticationSignUpPageButtonEn {
	TranslationsAuthenticationSignUpPageButtonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get defaultText => 'Sign Up';
	String get modifyEmail => 'Change Email Address';
}

// Path: authentication.emailVerificationPage.buttons
class TranslationsAuthenticationEmailVerificationPageButtonsEn {
	TranslationsAuthenticationEmailVerificationPageButtonsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get sendEmail => 'Send Verification Email';
	String get resendEmail => 'Resend Verification Email';
	String get toNext => 'Next';
	String get retypeEmail => 'Edit Email Address';
}

// Path: authentication.emailVerificationPage.snackBar
class TranslationsAuthenticationEmailVerificationPageSnackBarEn {
	TranslationsAuthenticationEmailVerificationPageSnackBarEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get success => 'Email sent successfully';
	String get emailVerification => 'Email address is not verified.';
	late final TranslationsAuthenticationEmailVerificationPageSnackBarErrorEn error = TranslationsAuthenticationEmailVerificationPageSnackBarErrorEn._(_root);
}

// Path: authentication.registerProfilePage.buttons
class TranslationsAuthenticationRegisterProfilePageButtonsEn {
	TranslationsAuthenticationRegisterProfilePageButtonsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get submit => 'Complete';
	String get skip => 'Skip';
}

// Path: authentication.registerProfilePage.snackBar
class TranslationsAuthenticationRegisterProfilePageSnackBarEn {
	TranslationsAuthenticationRegisterProfilePageSnackBarEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsAuthenticationRegisterProfilePageSnackBarErrorEn error = TranslationsAuthenticationRegisterProfilePageSnackBarErrorEn._(_root);
}

// Path: authentication.completeSendEmailPage.buttons
class TranslationsAuthenticationCompleteSendEmailPageButtonsEn {
	TranslationsAuthenticationCompleteSendEmailPageButtonsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get toSignIn => 'To Login Screen';
	String get resendEmail => 'Resend Confirmation Email';
	String get changeEmail => 'Change Email Address';
}

// Path: authentication.phoneNumberInputPage.discription
class TranslationsAuthenticationPhoneNumberInputPageDiscriptionEn {
	TranslationsAuthenticationPhoneNumberInputPageDiscriptionEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get receive => 'Please enter your phone number';
	String get internationalFormat => 'in international format';
	String get input => 'to receive the SMS code';
	String get purposeForPhoneNumber => 'Your phone number will only be used to send an SMS verification code and will not be used for any other purpose';
}

// Path: authentication.phoneNumberInputPage.scaffoldMessenger
class TranslationsAuthenticationPhoneNumberInputPageScaffoldMessengerEn {
	TranslationsAuthenticationPhoneNumberInputPageScaffoldMessengerEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get empty => 'Please enter your phone number';
	String get invalidPhoneNumber => 'The phone number format is incorrect';
	String get success => 'SMS code has been sent';
	String get error => 'Failed to send SMS code. Please check your phone number and try again.';
	String get unexpectedError => 'An unexpected error occurred:';
	String get phoneNumberVerificaiton => 'Phone number verification is not completed.';
}

// Path: authentication.smsVerificationPage.resend
class TranslationsAuthenticationSmsVerificationPageResendEn {
	TranslationsAuthenticationSmsVerificationPageResendEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Resend';
	String get untilRetransmissionPossible => 'Until retransmission possible';
	String get second => 'seconds';
}

// Path: authentication.smsVerificationPage.scaffoldMessenger
class TranslationsAuthenticationSmsVerificationPageScaffoldMessengerEn {
	TranslationsAuthenticationSmsVerificationPageScaffoldMessengerEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get empty => 'Please enter the SMS code';
	String get success => 'Verification successful';
	String get error => 'Verification failed. Please check the SMS code and try again.';
	String get unexpectedError => 'An unexpected error occurred:';
}

// Path: myPage.accountStatus.dateTime
class TranslationsMyPageAccountStatusDateTimeEn {
	TranslationsMyPageAccountStatusDateTimeEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String registeredOn({required Object date}) => 'Registered on ${date}';
	String get registeredOnFormat => 'MM/dd/yyyy';
	String validUntil({required Object date}) => 'Valid until${date}';
	String get validUntilFormat => 'MM/dd/yyyy hh:mm';
}

// Path: buddyChatPage.snackBar.error
class TranslationsBuddyChatPageSnackBarErrorEn {
	TranslationsBuddyChatPageSnackBarErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get failedRecieveMessage => 'Failed to receive the reply. Please try again later.';
	String get failedCompleteCreatePlan => 'Failed to complete plan creation. Please try again later.';
}

// Path: createPlanPage.snackBar.error
class TranslationsCreatePlanPageSnackBarErrorEn {
	TranslationsCreatePlanPageSnackBarErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get foundUnSelectedField => 'There are unselected items. Please select all items.';
	String get invalidDateRange => 'The start date must be set before the end date.';
}

// Path: editProfilePage.snackBar.error
class TranslationsEditProfilePageSnackBarErrorEn {
	TranslationsEditProfilePageSnackBarErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get noChange => 'No changes detected';
	String get failedToUpdate => 'Failed to update. Please try again later.';
	String get failedToPickImage => 'Failed to select image. Please try again later.';
}

// Path: billDetailsPage.pricingPlan.columns
class TranslationsBillDetailsPagePricingPlanColumnsEn {
	TranslationsBillDetailsPagePricingPlanColumnsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get standard => 'Standard';
	String get premium => 'Premium';
}

// Path: billDetailsPage.pricingPlan.details
class TranslationsBillDetailsPagePricingPlanDetailsEn {
	TranslationsBillDetailsPagePricingPlanDetailsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get free => 'Free 🎉';
	late final TranslationsBillDetailsPagePricingPlanDetailsPremiumPriceEn premiumPrice = TranslationsBillDetailsPagePricingPlanDetailsPremiumPriceEn._(_root);
}

// Path: billDetailsPage.features.rows
class TranslationsBillDetailsPageFeaturesRowsEn {
	TranslationsBillDetailsPageFeaturesRowsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get planCreationLimit => 'Number of plans that can be created';
	String get chatLimit => 'Number of chats available during plan creation';
	String get timelineAccess => 'Access to all plan timelines';
	String get adFree => 'Ad-free';
	String get exclusiveFeatures => 'Plan authentication features';
}

// Path: billDetailsPage.features.columns
class TranslationsBillDetailsPageFeaturesColumnsEn {
	TranslationsBillDetailsPageFeaturesColumnsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsBillDetailsPageFeaturesColumnsStandardEn standard = TranslationsBillDetailsPageFeaturesColumnsStandardEn._(_root);
	late final TranslationsBillDetailsPageFeaturesColumnsPremiumEn premium = TranslationsBillDetailsPageFeaturesColumnsPremiumEn._(_root);
}

// Path: billDetailsPage.pricingOptions.oneDay
class TranslationsBillDetailsPagePricingOptionsOneDayEn {
	TranslationsBillDetailsPagePricingOptionsOneDayEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get duration => '1 day';
	String get discount => '';
	String get price => '300 yen';
}

// Path: billDetailsPage.pricingOptions.threeDays
class TranslationsBillDetailsPagePricingOptionsThreeDaysEn {
	TranslationsBillDetailsPagePricingOptionsThreeDaysEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get duration => '3 days';
	String get discount => '-5%';
	String get price => '890 yen';
}

// Path: billDetailsPage.pricingOptions.fiveDays
class TranslationsBillDetailsPagePricingOptionsFiveDaysEn {
	TranslationsBillDetailsPagePricingOptionsFiveDaysEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get duration => '5 days';
	String get discount => '-7.5%';
	String get price => '1,387 yen';
}

// Path: billDetailsPage.pricingOptions.sevenDays
class TranslationsBillDetailsPagePricingOptionsSevenDaysEn {
	TranslationsBillDetailsPagePricingOptionsSevenDaysEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get duration => '7 days';
	String get discount => '-10%';
	String get price => '2,070 yen';
}

// Path: billDetailsPage.pricingOptions.unlimited
class TranslationsBillDetailsPagePricingOptionsUnlimitedEn {
	TranslationsBillDetailsPagePricingOptionsUnlimitedEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get duration => 'Unlimited';
	String get discount => '-20%';
	String get price => '25,800 yen';
}

// Path: billDetailsPage.snackBar.error
class TranslationsBillDetailsPageSnackBarErrorEn {
	TranslationsBillDetailsPageSnackBarErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get failedToPurchase => 'Purchase failed. Please try again later.';
	String get PurchaseHistoryNotFound => 'No purchase history found.';
	String get failedToRestorePurchase => 'Failed to restore purchase. Please try again later.';
}

// Path: planDetailsPage.snackBar.error
class TranslationsPlanDetailsPageSnackBarErrorEn {
	TranslationsPlanDetailsPageSnackBarErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get failedToUpdateBookmark => 'Failed to update the bookmark. Please try again later.';
}

// Path: authentication.emailVerificationPage.snackBar.error
class TranslationsAuthenticationEmailVerificationPageSnackBarErrorEn {
	TranslationsAuthenticationEmailVerificationPageSnackBarErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get unexpected => 'An error occurred. Please try again later.';
}

// Path: authentication.registerProfilePage.snackBar.error
class TranslationsAuthenticationRegisterProfilePageSnackBarErrorEn {
	TranslationsAuthenticationRegisterProfilePageSnackBarErrorEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get submitIfAllEmpty => 'Please enter the information';
	String get unexpected => 'An error occurred. Please try again later.';
}

// Path: billDetailsPage.pricingPlan.details.premiumPrice
class TranslationsBillDetailsPagePricingPlanDetailsPremiumPriceEn {
	TranslationsBillDetailsPagePricingPlanDetailsPremiumPriceEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get days => 'Purchase by days';
	String daily({required Object price}) => '・1 day ${price}';
	String threeDays({required Object price}) => '・3 days ${price}';
	String fiveDays({required Object price}) => '・5 days ${price}';
	String sevenDays({required Object price}) => '・7 days ${price}';
	String get or => 'or';
	String get unlimited => 'Unlimited';
	String unlimitedPrice({required Object price}) => '${price}';
}

// Path: billDetailsPage.features.columns.standard
class TranslationsBillDetailsPageFeaturesColumnsStandardEn {
	TranslationsBillDetailsPageFeaturesColumnsStandardEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Standard';
	String get planCreationLimit => '2 times';
	String get chatLimit => '2 times';
}

// Path: billDetailsPage.features.columns.premium
class TranslationsBillDetailsPageFeaturesColumnsPremiumEn {
	TranslationsBillDetailsPageFeaturesColumnsPremiumEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get label => 'Premium';
	String get planCreationLimit => 'Unlimited';
	String get chatLimit => 'Unlimited';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'navigationBar.items.home': return 'Home';
			case 'navigationBar.items.myPlan': return 'My Plan';
			case 'navigationBar.items.myPage': return 'My Page';
			case 'homePage.popularPlans.title': return 'Popular Plans';
			case 'homePage.popularTopics.title': return 'Popular Topics';
			case 'homePage.popularTopics.numberOfTopics': return ({required Object number}) => '${number} items~';
			case 'homePage.recentPlans.title': return 'Recently Created Plans';
			case 'accountPage.title': return 'Account';
			case 'accountPage.items.signOut': return 'Sign Out';
			case 'accountPage.items.linkedWithGoogle': return 'Linked with Google';
			case 'accountPage.items.linkedWithApple': return 'Linked with Apple';
			case 'accountPage.items.alreadyLinkedGoogle': return 'Already Linked with Google';
			case 'accountPage.items.alreadyLinkedApple': return 'Already Linked with Apple';
			case 'accountPage.items.deleteAccount': return 'Delete Account';
			case 'accountPage.snackBar.signOut': return 'You have been logged out.';
			case 'accountPage.snackBar.signOutFailure': return 'An error occurred while signing out.';
			case 'accountPage.snackBar.successfulLinkage': return 'Account linked successfully.';
			case 'accountPage.snackBar.linkageFailure': return 'Failed to link account.';
			case 'accountPage.snackBar.providerAlreadyLinked': return 'This account has already been linked.';
			case 'accountPage.snackBar.accountDeactivation': return 'Account linkage has been removed.';
			case 'accountPage.snackBar.invalidCredential': return 'Please try logging in again.';
			case 'accountPage.snackBar.linkageCancelled': return 'Account linking was cancelled.';
			case 'accountPage.snackBar.unlinkageFailure': return 'Failed to remove account linkage.';
			case 'accountPage.snackBar.operationNotAllowed': return 'Provider is invalid. Please contact the developer.';
			case 'accountPage.snackBar.unknownError': return 'An unknown error occurred.';
			case 'accountPage.snackBar.deleteAccount': return 'Your account has been deleted.';
			case 'accountPage.snackBar.deleteAccountFailure': return 'Failed to delete your account.';
			case 'accountPage.diaLog.yes': return 'Yes';
			case 'accountPage.diaLog.no': return 'No';
			case 'accountPage.diaLog.title': return 'Confirm Account Unlinking';
			case 'accountPage.diaLog.googleText': return 'Do you want to unlink the current account from your Google account?';
			case 'accountPage.diaLog.appleText': return 'Do you want to unlink the current account from your Apple account?';
			case 'accountPage.diaLog.signOut': return 'Do you want to sign out?';
			case 'accountPage.diaLog.signOutText': return 'Re-login is required to use the app\'s features.';
			case 'accountPage.diaLog.deleteAccount': return 'Do you want to delete your account?';
			case 'accountPage.diaLog.deleteAccountText': return 'Deleting your account will remove all data.';
			case 'authentication.signInPage.title': return 'Sign In';
			case 'authentication.signInPage.optionText': return ' or ';
			case 'authentication.signInPage.textFields.email': return 'Email Address';
			case 'authentication.signInPage.textFields.password': return 'Password';
			case 'authentication.signInPage.buttons.signIn': return 'Sign In';
			case 'authentication.signInPage.buttons.signUp': return 'Sign Up';
			case 'authentication.signInPage.buttons.resetPassword': return 'Forgot Password?';
			case 'authentication.signInPage.buttons.appleSignIn': return 'Sign in with Apple';
			case 'authentication.signInPage.buttons.googleSignIn': return 'Sign in with Google';
			case 'authentication.signInPage.buttons.signInAfter': return 'Register Later';
			case 'authentication.signInPage.changeLanguageDialog.title': return 'Select Language';
			case 'authentication.signInPage.changeLanguageDialog.button': return 'Close';
			case 'authentication.firebaseAuth.error.networkRequestFailed': return 'Please try again in a good network environment';
			case 'authentication.firebaseAuth.error.weakPassword': return 'Password is too short. Please enter 6 characters or more';
			case 'authentication.firebaseAuth.error.invalidEmail': return 'Email address is not in the correct format';
			case 'authentication.firebaseAuth.error.userNotFound': return 'Account not found';
			case 'authentication.firebaseAuth.error.wrongPassword': return 'Password is incorrect';
			case 'authentication.firebaseAuth.error.emailAlreadyInUse': return 'Email address is already in use. Please log in or create with another email address';
			case 'authentication.firebaseAuth.error.unexpected': return 'An error occurred. Please try again in a good network environment';
			case 'authentication.resetPasswordPage.title': return 'Reset Password';
			case 'authentication.resetPasswordPage.description': return 'A password reset email will be sent to the entered email address';
			case 'authentication.resetPasswordPage.textFields.email': return 'Email Address';
			case 'authentication.resetPasswordPage.buttons.submit': return 'Submit';
			case 'authentication.signUpPage.title.defaultText': return 'Sign Up';
			case 'authentication.signUpPage.title.modifyEmail': return 'Change Email Address';
			case 'authentication.signUpPage.textFields.email': return 'Email Address';
			case 'authentication.signUpPage.textFields.password': return 'Password';
			case 'authentication.signUpPage.button.defaultText': return 'Sign Up';
			case 'authentication.signUpPage.button.modifyEmail': return 'Change Email Address';
			case 'authentication.emailVerificationPage.title': return 'Email Address Verification';
			case 'authentication.emailVerificationPage.descriptionForDestination': return ({required Object email}) => 'A verification email has been sent to the entered ${email}';
			case 'authentication.emailVerificationPage.descriptionForCoolDown': return 'You can resend the verification email once every 60 seconds.';
			case 'authentication.emailVerificationPage.buttons.sendEmail': return 'Send Verification Email';
			case 'authentication.emailVerificationPage.buttons.resendEmail': return 'Resend Verification Email';
			case 'authentication.emailVerificationPage.buttons.toNext': return 'Next';
			case 'authentication.emailVerificationPage.buttons.retypeEmail': return 'Edit Email Address';
			case 'authentication.emailVerificationPage.snackBar.success': return 'Email sent successfully';
			case 'authentication.emailVerificationPage.snackBar.emailVerification': return 'Email address is not verified.';
			case 'authentication.emailVerificationPage.snackBar.error.unexpected': return 'An error occurred. Please try again later.';
			case 'authentication.registerProfilePage.title': return 'Profile Registration';
			case 'authentication.registerProfilePage.textFields': return 'Name';
			case 'authentication.registerProfilePage.buttons.submit': return 'Complete';
			case 'authentication.registerProfilePage.buttons.skip': return 'Skip';
			case 'authentication.registerProfilePage.snackBar.error.submitIfAllEmpty': return 'Please enter the information';
			case 'authentication.registerProfilePage.snackBar.error.unexpected': return 'An error occurred. Please try again later.';
			case 'authentication.completeSendEmailPage.title': return 'Send Complete';
			case 'authentication.completeSendEmailPage.description': return ({required Object email}) => 'A password reset email has been sent to ${email} \n Please log in from the login screen after resetting';
			case 'authentication.completeSendEmailPage.successResendEmail': return 'Confirmation email has been resent';
			case 'authentication.completeSendEmailPage.buttons.toSignIn': return 'To Login Screen';
			case 'authentication.completeSendEmailPage.buttons.resendEmail': return 'Resend Confirmation Email';
			case 'authentication.completeSendEmailPage.buttons.changeEmail': return 'Change Email Address';
			case 'authentication.phoneNumberInputPage.title': return 'Enter Phone Number';
			case 'authentication.phoneNumberInputPage.discription.receive': return 'Please enter your phone number';
			case 'authentication.phoneNumberInputPage.discription.internationalFormat': return 'in international format';
			case 'authentication.phoneNumberInputPage.discription.input': return 'to receive the SMS code';
			case 'authentication.phoneNumberInputPage.discription.purposeForPhoneNumber': return 'Your phone number will only be used to send an SMS verification code and will not be used for any other purpose';
			case 'authentication.phoneNumberInputPage.phoneNumber': return 'Phone Number';
			case 'authentication.phoneNumberInputPage.sendSmsCode': return 'Send SMS Code';
			case 'authentication.phoneNumberInputPage.scaffoldMessenger.empty': return 'Please enter your phone number';
			case 'authentication.phoneNumberInputPage.scaffoldMessenger.invalidPhoneNumber': return 'The phone number format is incorrect';
			case 'authentication.phoneNumberInputPage.scaffoldMessenger.success': return 'SMS code has been sent';
			case 'authentication.phoneNumberInputPage.scaffoldMessenger.error': return 'Failed to send SMS code. Please check your phone number and try again.';
			case 'authentication.phoneNumberInputPage.scaffoldMessenger.unexpectedError': return 'An unexpected error occurred:';
			case 'authentication.phoneNumberInputPage.scaffoldMessenger.phoneNumberVerificaiton': return 'Phone number verification is not completed.';
			case 'authentication.smsVerificationPage.title': return 'SMS Verification';
			case 'authentication.smsVerificationPage.sendSms': return 'SMS code has been sent to the following phone number:';
			case 'authentication.smsVerificationPage.pleaseInputCode': return 'Please enter the code to complete phone number verification.';
			case 'authentication.smsVerificationPage.resend.title': return 'Resend';
			case 'authentication.smsVerificationPage.resend.untilRetransmissionPossible': return 'Until retransmission possible';
			case 'authentication.smsVerificationPage.resend.second': return 'seconds';
			case 'authentication.smsVerificationPage.smsCode': return 'SMS Code';
			case 'authentication.smsVerificationPage.verify': return 'Verify';
			case 'authentication.smsVerificationPage.fixPhoneNumber': return 'Edit Phone Number';
			case 'authentication.smsVerificationPage.scaffoldMessenger.empty': return 'Please enter the SMS code';
			case 'authentication.smsVerificationPage.scaffoldMessenger.success': return 'Verification successful';
			case 'authentication.smsVerificationPage.scaffoldMessenger.error': return 'Verification failed. Please check the SMS code and try again.';
			case 'authentication.smsVerificationPage.scaffoldMessenger.unexpectedError': return 'An unexpected error occurred:';
			case 'validation.emailRequired': return 'Please enter your email address';
			case 'validation.emailInvalid': return 'The email address format is incorrect';
			case 'validation.passwordRequired': return 'Please enter your password';
			case 'validation.passwordShort': return 'The password must be at least 8 characters long';
			case 'validation.passwordWeak': return 'Please combine alphanumeric characters for the password';
			case 'validation.passwordMatch': return 'Passwords do not match';
			case 'validation.informationRequired': return 'Please enter the information';
			case 'validation.urlInvalid': return 'The URL format is incorrect';
			case 'validation.usernameRequired': return 'Please enter your username';
			case 'validation.usernameMaxLength': return 'The username must be 16 characters or fewer';
			case 'myPage.unregisteredUserName': return 'Unregistered';
			case 'myPage.editProfile': return 'Edit Profile';
			case 'myPage.premiumPlan': return 'Premium Plan';
			case 'myPage.details': return 'Details';
			case 'myPage.settings': return 'Settings';
			case 'myPage.account': return 'Account';
			case 'myPage.language': return 'Language';
			case 'myPage.theme': return 'Theme';
			case 'myPage.termsOfUsePrivacyPolicy': return 'Terms of Use & Privacy Policy';
			case 'myPage.aboutThisApp': return 'About This App';
			case 'myPage.aboutTheDeveloper': return 'About the Developer';
			case 'myPage.accountStatus.dateTime.registeredOn': return ({required Object date}) => 'Registered on ${date}';
			case 'myPage.accountStatus.dateTime.registeredOnFormat': return 'MM/dd/yyyy';
			case 'myPage.accountStatus.dateTime.validUntil': return ({required Object date}) => 'Valid until${date}';
			case 'myPage.accountStatus.dateTime.validUntilFormat': return 'MM/dd/yyyy hh:mm';
			case 'myPage.accountStatus.premium': return 'Premium Member';
			case 'myPage.accountStatus.standard': return 'Standard Member';
			case 'changeLanguagePage.title': return 'Language';
			case 'changeLanguagePage.items.japanese': return 'Japanese';
			case 'changeLanguagePage.items.english': return 'English';
			case 'changeLanguagePage.items.simplifiedChinese': return 'Chinese (Simplified)';
			case 'changeLanguagePage.items.traditionalChinese': return 'Chinese (Traditional)';
			case 'changeLanguagePage.items.korean': return 'korean';
			case 'changeThemePage.title': return 'Theme';
			case 'changeThemePage.items.system': return 'System';
			case 'changeThemePage.items.light': return 'Light';
			case 'changeThemePage.items.dark': return 'Dark';
			case 'myPlanPage.title': return 'My Plans';
			case 'myPlanPage.tabs.createdPlans': return 'Created Plans';
			case 'myPlanPage.tabs.bookmark': return 'Bookmarks';
			case 'myPlanPage.bookmarkItems.nondata': return 'No bookmarked plans yet.';
			case 'myPlanPage.bookmarkItems.reloading': return 'Reload';
			case 'myPlanPage.createdPlansItems.nondata': return 'Let\'s create a plan!';
			case 'myPlanPage.createdPlansItems.createaplan': return 'Create a Plan';
			case 'myPlanPage.error.displayError': return 'An error occurred while displaying the plan.';
			case 'myPlanPage.error.failedGetId': return 'Failed to retrieve plan ID.';
			case 'myPlanPage.error.failedGetPlanData': return 'An error occurred while retrieving plan data.';
			case 'myPlanPage.error.failedUnBookmark': return 'Failed to remove bookmark.';
			case 'buddyChatPage.title': return 'Buddy Suggestions';
			case 'buddyChatPage.possibleChatCount': return ({required Object possibleChatCount}) => 'You can send ${possibleChatCount} more messages';
			case 'buddyChatPage.textFields.message': return 'Enter message';
			case 'buddyChatPage.buttons.send': return 'Done';
			case 'buddyChatPage.placeCard.openingHours': return 'Opening Hours';
			case 'buddyChatPage.placeCard.averageAmount': return 'Average Budget';
			case 'buddyChatPage.placeCard.website': return 'Website';
			case 'buddyChatPage.snackBar.error.failedRecieveMessage': return 'Failed to receive the reply. Please try again later.';
			case 'buddyChatPage.snackBar.error.failedCompleteCreatePlan': return 'Failed to complete plan creation. Please try again later.';
			case 'popularTopics.sectionName': return 'Popular Topics';
			case 'createPlanPage.title': return 'Create Plan';
			case 'createPlanPage.label.location': return 'Destination';
			case 'createPlanPage.label.scheduleStart': return 'Start Date';
			case 'createPlanPage.label.scheduleEnd': return 'End Date';
			case 'createPlanPage.label.numberOfPeople': return 'Number of People';
			case 'createPlanPage.label.transport': return 'Transportation';
			case 'createPlanPage.label.category': return 'Category';
			case 'createPlanPage.label.topics': return 'Travel Topics';
			case 'createPlanPage.hintText.location': return 'Shibuya';
			case 'createPlanPage.modal.title': return 'Select a date';
			case 'createPlanPage.numberOfPeopleOptions.0': return '1 person';
			case 'createPlanPage.numberOfPeopleOptions.1': return '2 people';
			case 'createPlanPage.numberOfPeopleOptions.2': return '3 people';
			case 'createPlanPage.numberOfPeopleOptions.3': return '4 people';
			case 'createPlanPage.numberOfPeopleOptions.4': return '5 people';
			case 'createPlanPage.numberOfPeopleOptions.5': return '6 or more';
			case 'createPlanPage.transportOptions.0': return 'Train';
			case 'createPlanPage.transportOptions.1': return 'Walking';
			case 'createPlanPage.transportOptions.2': return 'Car';
			case 'createPlanPage.transportOptions.3': return 'Bus';
			case 'createPlanPage.categoryOptions.0': return 'Family-Friendly';
			case 'createPlanPage.categoryOptions.1': return 'Adult';
			case 'createPlanPage.categoryOptions.2': return 'Entertainment';
			case 'createPlanPage.categoryOptions.3': return 'Activity';
			case 'createPlanPage.categoryOptions.4': return 'History';
			case 'createPlanPage.defaultTopics.0': return 'Gourmet';
			case 'createPlanPage.defaultTopics.1': return 'Shopping';
			case 'createPlanPage.defaultTopics.2': return 'Activities';
			case 'createPlanPage.defaultTopics.3': return 'Movies';
			case 'createPlanPage.submitButton': return 'Submit Plan to AI';
			case 'createPlanPage.snackBar.error.foundUnSelectedField': return 'There are unselected items. Please select all items.';
			case 'createPlanPage.snackBar.error.invalidDateRange': return 'The start date must be set before the end date.';
			case 'editProfilePage.title': return 'Edit Profile';
			case 'editProfilePage.textFields.name': return 'Name';
			case 'editProfilePage.buttons.submit': return 'Save';
			case 'editProfilePage.snackBar.success': return 'Updated successfully';
			case 'editProfilePage.snackBar.error.noChange': return 'No changes detected';
			case 'editProfilePage.snackBar.error.failedToUpdate': return 'Failed to update. Please try again later.';
			case 'editProfilePage.snackBar.error.failedToPickImage': return 'Failed to select image. Please try again later.';
			case 'confirmDialog.answers.yes': return 'Yes';
			case 'confirmDialog.answers.no': return 'No';
			case 'confirmDialog.popPage.title': return 'Return to the previous page?';
			case 'confirmDialog.popPage.description': return 'Current content will not be saved.';
			case 'confirmDialog.completeCreatePlan.title': return 'Confirm the plan?';
			case 'confirmDialog.completeCreatePlan.description': return 'The plan in the last message will be saved.';
			case 'prompt.planProposalMessage': return 'I’ve come up with this plan! What do you think?';
			case 'billDetailsPage.title.defaultTitle': return 'Premium Plan';
			case 'billDetailsPage.title.createPlan': return 'Do you want to enable unlimited plan creation?';
			case 'billDetailsPage.title.chat': return 'Do you want to enjoy unlimited chatting?';
			case 'billDetailsPage.description': return 'By subscribing to the Premium Plan, you can enjoy a more comfortable sightseeing experience in Shibuya.';
			case 'billDetailsPage.pricingPlan.title': return 'Pricing Plan';
			case 'billDetailsPage.pricingPlan.columns.standard': return 'Standard';
			case 'billDetailsPage.pricingPlan.columns.premium': return 'Premium';
			case 'billDetailsPage.pricingPlan.details.free': return 'Free 🎉';
			case 'billDetailsPage.pricingPlan.details.premiumPrice.days': return 'Purchase by days';
			case 'billDetailsPage.pricingPlan.details.premiumPrice.daily': return ({required Object price}) => '・1 day ${price}';
			case 'billDetailsPage.pricingPlan.details.premiumPrice.threeDays': return ({required Object price}) => '・3 days ${price}';
			case 'billDetailsPage.pricingPlan.details.premiumPrice.fiveDays': return ({required Object price}) => '・5 days ${price}';
			case 'billDetailsPage.pricingPlan.details.premiumPrice.sevenDays': return ({required Object price}) => '・7 days ${price}';
			case 'billDetailsPage.pricingPlan.details.premiumPrice.or': return 'or';
			case 'billDetailsPage.pricingPlan.details.premiumPrice.unlimited': return 'Unlimited';
			case 'billDetailsPage.pricingPlan.details.premiumPrice.unlimitedPrice': return ({required Object price}) => '${price}';
			case 'billDetailsPage.features.title': return 'Features by Grade';
			case 'billDetailsPage.features.rows.planCreationLimit': return 'Number of plans that can be created';
			case 'billDetailsPage.features.rows.chatLimit': return 'Number of chats available during plan creation';
			case 'billDetailsPage.features.rows.timelineAccess': return 'Access to all plan timelines';
			case 'billDetailsPage.features.rows.adFree': return 'Ad-free';
			case 'billDetailsPage.features.rows.exclusiveFeatures': return 'Plan authentication features';
			case 'billDetailsPage.features.columns.standard.label': return 'Standard';
			case 'billDetailsPage.features.columns.standard.planCreationLimit': return '2 times';
			case 'billDetailsPage.features.columns.standard.chatLimit': return '2 times';
			case 'billDetailsPage.features.columns.premium.label': return 'Premium';
			case 'billDetailsPage.features.columns.premium.planCreationLimit': return 'Unlimited';
			case 'billDetailsPage.features.columns.premium.chatLimit': return 'Unlimited';
			case 'billDetailsPage.pricingOptions.oneDay.duration': return '1 day';
			case 'billDetailsPage.pricingOptions.oneDay.discount': return '';
			case 'billDetailsPage.pricingOptions.oneDay.price': return '300 yen';
			case 'billDetailsPage.pricingOptions.threeDays.duration': return '3 days';
			case 'billDetailsPage.pricingOptions.threeDays.discount': return '-5%';
			case 'billDetailsPage.pricingOptions.threeDays.price': return '890 yen';
			case 'billDetailsPage.pricingOptions.fiveDays.duration': return '5 days';
			case 'billDetailsPage.pricingOptions.fiveDays.discount': return '-7.5%';
			case 'billDetailsPage.pricingOptions.fiveDays.price': return '1,387 yen';
			case 'billDetailsPage.pricingOptions.sevenDays.duration': return '7 days';
			case 'billDetailsPage.pricingOptions.sevenDays.discount': return '-10%';
			case 'billDetailsPage.pricingOptions.sevenDays.price': return '2,070 yen';
			case 'billDetailsPage.pricingOptions.unlimited.duration': return 'Unlimited';
			case 'billDetailsPage.pricingOptions.unlimited.discount': return '-20%';
			case 'billDetailsPage.pricingOptions.unlimited.price': return '25,800 yen';
			case 'billDetailsPage.restorePurchaseSection.button': return 'Restore Purchase';
			case 'billDetailsPage.restorePurchaseSection.textButton': return 'What is Restore Purchase?';
			case 'billDetailsPage.upgradeButton': return 'Upgrade to Premium';
			case 'billDetailsPage.snackBar.error.failedToPurchase': return 'Purchase failed. Please try again later.';
			case 'billDetailsPage.snackBar.error.PurchaseHistoryNotFound': return 'No purchase history found.';
			case 'billDetailsPage.snackBar.error.failedToRestorePurchase': return 'Failed to restore purchase. Please try again later.';
			case 'planDetailsPage.dateTime.createOn': return ({required Object date}) => 'Plan created on${date}';
			case 'planDetailsPage.dateTime.dateFormat': return 'MM/dd/yyyy';
			case 'planDetailsPage.item.viewOnMap': return 'View on Map';
			case 'planDetailsPage.snackBar.error.failedToUpdateBookmark': return 'Failed to update the bookmark. Please try again later.';
			case 'createLoadingPage.items.loadingText1': return 'Buddy\'s secretly crafting your travel plans... Shh!';
			case 'createLoadingPage.items.loadingText2': return 'Planning the best trip ever... Buddy\'s excited too!';
			case 'createLoadingPage.items.loadingText3': return 'Hold onto your passport, adventure loading...';
			case 'createLoadingPage.items.loadingText4': return 'Perfect time to daydream about your destination!';
			case 'createLoadingPage.items.loadingText5': return 'No snooze button on this adventure!';
			case 'createLoadingPage.items.loadingText6': return 'Searching for the best food spots... yum!';
			case 'createLoadingPage.items.loadingText7': return 'Creating a no-getting-lost plan... probably.';
			case 'createLoadingPage.items.loadingText8': return 'Maybe adding a surprise or two...';
			case 'createLoadingPage.items.loadingText9': return 'Buddy\'s working overtime for your perfect trip!';
			case 'createLoadingPage.items.loadingText10': return 'Your adventure is brewing...';
			case 'createLoadingPage.items.loadingText11': return 'Crafting your travel guide with extra care!';
			case 'createLoadingPage.items.loadingText12': return 'Lost? Don\'t worry, Buddy\'s got your back!';
			case 'createLoadingPage.items.loadingText13': return 'Shall we make a souvenir shopping list?';
			case 'createLoadingPage.items.loadingText14': return 'Amazing memories loading... 99%';
			case 'createLoadingPage.items.loadingText15': return 'Excitement level: Over 9000!';
			case 'createLoadingPage.items.loadingText16': return 'Hunting for hidden gems just for you...';
			case 'createLoadingPage.items.loadingText17': return 'Buddy\'s calculating the best routes... with math!';
			case 'createLoadingPage.items.loadingText18': return 'Your personal travel cheerleader at work!';
			case 'createLoadingPage.items.loadingText19': return 'Preparing Plan B, C, and maybe Z...';
			case 'createLoadingPage.items.loadingText20': return 'Writing the prologue to your adventure!';
			case 'createLoadingPage.items.loadingText21': return 'Creating an un-lose-able route... hopefully!';
			case 'createLoadingPage.items.loadingText22': return 'Buddy\'s brain is working hard right now';
			case 'createLoadingPage.items.loadingText23': return 'Happy birthday to someone, somewhere!';
			case 'createLoadingPage.items.loadingText24': return 'Weaving travel dreams...';
			case 'createLoadingPage.items.loadingText25': return 'Sprinkling travel wishes...';
			case 'createLoadingPage.items.loadingText26': return 'Waiting for travel miracles...';
			case 'createLoadingPage.items.loadingText27': return 'Expecting unexpected encounters...';
			case 'createLoadingPage.items.loadingText28': return 'Leaving 0.1% room for serendipity';
			case 'createLoadingPage.items.loadingText29': return 'Finding spots only locals know about';
			case 'createLoadingPage.items.loadingText30': return 'Buddy\'s working... grab a coffee!';
			case 'createLoadingPage.items.loadingText31': return 'Preparing anti-lost maps...';
			case 'createLoadingPage.items.loadingText32': return 'Faster than a disappearing contrail!';
			case 'createLoadingPage.items.loadingText33': return 'Scouting Instagram-worthy photo spots';
			case 'createLoadingPage.items.loadingText34': return 'Taking a snack break while planning';
			case 'createLoadingPage.items.loadingText35': return 'Find your perfect plan in Topics!';
			case 'createLoadingPage.items.loadingText36': return 'Profile updates welcome anytime!';
			case 'createLoadingPage.items.loadingText37': return 'Reviews appreciated, high-fives welcome!';
			case 'createLoadingPage.items.loadingText38': return 'Team Cat or Team Dog? Meow all the way!';
			case 'createLoadingPage.items.loadingText39': return 'May your sightseeing be blessed!';
			case 'createLoadingPage.items.loadingText40': return 'Today\'s gonna be pawsome!';
			case 'locales.en': return 'English';
			case 'locales.ja': return 'Japanese';
			case 'locales.zh': return 'Chinese';
			case 'locales.ko': return 'Korean';
			case 'errorPage.title': return 'An error occurred...';
			case 'errorPage.message': return 'Please check your network connection and try again.';
			case 'errorPage.retryButton': return 'Retry';
			case 'mapPage.title': return 'Map';
			default: return null;
		}
	}
}

