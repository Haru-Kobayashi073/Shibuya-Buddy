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
	late final TranslationsPopularTopicsEn popularTopics = TranslationsPopularTopicsEn._(_root);
	Map<String, String> get locales => {
		'en': 'English',
		'ja': 'Japanese',
		'zh': 'Chinese',
	};
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
}

// Path: myPage
class TranslationsMyPageEn {
	TranslationsMyPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get unregisteredUserName => 'Unregistered';
	String get aboutAIFunction => 'About AI Features';
	String get details => 'Details';
	String get settings => 'Settings';
	String get account => 'Account';
	String get language => 'Language';
	String get theme => 'Theme';
	String get termsOfUsePrivacyPolicy => 'Terms of Use & Privacy Policy';
	String get aboutThisApp => 'About This App';
	String get aboutTheDeveloper => 'About the Developer';
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
}

// Path: popularTopics
class TranslationsPopularTopicsEn {
	TranslationsPopularTopicsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get sectionName => 'Popular Topics';
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
}

// Path: accountPage.snackBar
class TranslationsAccountPageSnackBarEn {
	TranslationsAccountPageSnackBarEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get loggedOut => 'Logged out successfully.';
	String get successfulLinkage => 'Account linkage successful.';
	String get linkageFailure => 'Account linkage failed.';
	String get accountLinked => 'This account is already linked.';
	String get accountDeactivation => 'Account linkage has been removed.';
	String get nvalidCredential => 'Invalid Link';
	String get linkageCancelled => 'Account linkage cancelled.';
	String get unlinkageFailure => 'Failed to unlink account.';
}

// Path: accountPage.diaLog
class TranslationsAccountPageDiaLogEn {
	TranslationsAccountPageDiaLogEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get ok => 'Yes';
	String get cancel => 'No';
	String get title => 'Confirm Account Unlinking';
	String get text => 'Do you want to unlink the current account from your Google account?';
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
	String get title => 'Sign Up';
	late final TranslationsAuthenticationSignUpPageTextFieldsEn textFields = TranslationsAuthenticationSignUpPageTextFieldsEn._(_root);
	String get button => 'Sign Up';
}

// Path: authentication.emailVerificationPage
class TranslationsAuthenticationEmailVerificationPageEn {
	TranslationsAuthenticationEmailVerificationPageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Email Address Verification';
	String descriptionForDestination({required Object email}) => 'A verification email will be sent to the entered ${email}.';
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

// Path: changeLanguagePage.items
class TranslationsChangeLanguagePageItemsEn {
	TranslationsChangeLanguagePageItemsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get japanese => 'Japanese';
	String get english => 'English';
	String get simplifiedChinese => 'Chinese (Simplified)';
	String get traditionalChinese => 'Chinese (Traditional)';
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

// Path: authentication.signUpPage.textFields
class TranslationsAuthenticationSignUpPageTextFieldsEn {
	TranslationsAuthenticationSignUpPageTextFieldsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get email => 'Email Address';
	String get password => 'Password';
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
			case 'accountPage.snackBar.loggedOut': return 'Logged out successfully.';
			case 'accountPage.snackBar.successfulLinkage': return 'Account linkage successful.';
			case 'accountPage.snackBar.linkageFailure': return 'Account linkage failed.';
			case 'accountPage.snackBar.accountLinked': return 'This account is already linked.';
			case 'accountPage.snackBar.accountDeactivation': return 'Account linkage has been removed.';
			case 'accountPage.snackBar.nvalidCredential': return 'Invalid Link';
			case 'accountPage.snackBar.linkageCancelled': return 'Account linkage cancelled.';
			case 'accountPage.snackBar.unlinkageFailure': return 'Failed to unlink account.';
			case 'accountPage.diaLog.ok': return 'Yes';
			case 'accountPage.diaLog.cancel': return 'No';
			case 'accountPage.diaLog.title': return 'Confirm Account Unlinking';
			case 'accountPage.diaLog.text': return 'Do you want to unlink the current account from your Google account?';
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
			case 'authentication.signUpPage.title': return 'Sign Up';
			case 'authentication.signUpPage.textFields.email': return 'Email Address';
			case 'authentication.signUpPage.textFields.password': return 'Password';
			case 'authentication.signUpPage.button': return 'Sign Up';
			case 'authentication.emailVerificationPage.title': return 'Email Address Verification';
			case 'authentication.emailVerificationPage.descriptionForDestination': return ({required Object email}) => 'A verification email will be sent to the entered ${email}.';
			case 'authentication.emailVerificationPage.descriptionForCoolDown': return 'You can resend the verification email once every 60 seconds.';
			case 'authentication.emailVerificationPage.buttons.sendEmail': return 'Send Verification Email';
			case 'authentication.emailVerificationPage.buttons.resendEmail': return 'Resend Verification Email';
			case 'authentication.emailVerificationPage.buttons.toNext': return 'Next';
			case 'authentication.emailVerificationPage.buttons.retypeEmail': return 'Edit Email Address';
			case 'authentication.emailVerificationPage.snackBar.success': return 'Email sent successfully';
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
			case 'validation.emailRequired': return 'Please enter your email address';
			case 'validation.emailInvalid': return 'The email address format is incorrect';
			case 'validation.passwordRequired': return 'Please enter your password';
			case 'validation.passwordShort': return 'The password must be at least 8 characters long';
			case 'validation.passwordWeak': return 'Please combine alphanumeric characters for the password';
			case 'validation.passwordMatch': return 'Passwords do not match';
			case 'validation.informationRequired': return 'Please enter the information';
			case 'validation.urlInvalid': return 'The URL format is incorrect';
			case 'myPage.unregisteredUserName': return 'Unregistered';
			case 'myPage.aboutAIFunction': return 'About AI Features';
			case 'myPage.details': return 'Details';
			case 'myPage.settings': return 'Settings';
			case 'myPage.account': return 'Account';
			case 'myPage.language': return 'Language';
			case 'myPage.theme': return 'Theme';
			case 'myPage.termsOfUsePrivacyPolicy': return 'Terms of Use & Privacy Policy';
			case 'myPage.aboutThisApp': return 'About This App';
			case 'myPage.aboutTheDeveloper': return 'About the Developer';
			case 'changeLanguagePage.title': return 'Language';
			case 'changeLanguagePage.items.japanese': return 'Japanese';
			case 'changeLanguagePage.items.english': return 'English';
			case 'changeLanguagePage.items.simplifiedChinese': return 'Chinese (Simplified)';
			case 'changeLanguagePage.items.traditionalChinese': return 'Chinese (Traditional)';
			case 'changeThemePage.title': return 'Theme';
			case 'changeThemePage.items.system': return 'System';
			case 'changeThemePage.items.light': return 'Light';
			case 'changeThemePage.items.dark': return 'Dark';
			case 'myPlanPage.title': return 'My Plans';
			case 'myPlanPage.tabs.createdPlans': return 'Created Plans';
			case 'myPlanPage.tabs.bookmark': return 'Bookmarks';
			case 'popularTopics.sectionName': return 'Popular Topics';
			case 'locales.en': return 'English';
			case 'locales.ja': return 'Japanese';
			case 'locales.zh': return 'Chinese';
			default: return null;
		}
	}
}

