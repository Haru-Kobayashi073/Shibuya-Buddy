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
	late final TranslationsNavigationBarEn NavigationBar = TranslationsNavigationBarEn._(_root);
	late final TranslationsAuthenticationEn authentication = TranslationsAuthenticationEn._(_root);
	late final TranslationsValidationEn validation = TranslationsValidationEn._(_root);
	late final TranslationsChangeLanguagePageEn ChangeLanguagePage = TranslationsChangeLanguagePageEn._(_root);
	Map<String, String> get locales => {
		'en': 'English',
		'ja': 'Japanese',
		'zh': 'Chinese',
	};
}

// Path: NavigationBar
class TranslationsNavigationBarEn {
	TranslationsNavigationBarEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsNavigationBarItemsEn items = TranslationsNavigationBarItemsEn._(_root);
}

// Path: authentication
class TranslationsAuthenticationEn {
	TranslationsAuthenticationEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsAuthenticationSignInPageEn signInPage = TranslationsAuthenticationSignInPageEn._(_root);
	late final TranslationsAuthenticationFirebaseAuthEn firebaseAuth = TranslationsAuthenticationFirebaseAuthEn._(_root);
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

// Path: ChangeLanguagePage
class TranslationsChangeLanguagePageEn {
	TranslationsChangeLanguagePageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get title => 'Language';
	late final TranslationsChangeLanguagePageItemsEn items = TranslationsChangeLanguagePageItemsEn._(_root);
}

// Path: NavigationBar.items
class TranslationsNavigationBarItemsEn {
	TranslationsNavigationBarItemsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get home => 'Home';
	String get myPlan => 'My Plan';
	String get myPage => 'My Page';
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

// Path: ChangeLanguagePage.items
class TranslationsChangeLanguagePageItemsEn {
	TranslationsChangeLanguagePageItemsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get japanese => 'Japanese';
	String get english => 'English';
	String get chinese_simplified => 'Chinese (Simplified)';
	String get chinese_traditional => 'Chinese (Traditional)';
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

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'NavigationBar.items.home': return 'Home';
			case 'NavigationBar.items.myPlan': return 'My Plan';
			case 'NavigationBar.items.myPage': return 'My Page';
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
			case 'validation.emailRequired': return 'Please enter your email address';
			case 'validation.emailInvalid': return 'The email address format is incorrect';
			case 'validation.passwordRequired': return 'Please enter your password';
			case 'validation.passwordShort': return 'The password must be at least 8 characters long';
			case 'validation.passwordWeak': return 'Please combine alphanumeric characters for the password';
			case 'validation.passwordMatch': return 'Passwords do not match';
			case 'validation.informationRequired': return 'Please enter the information';
			case 'validation.urlInvalid': return 'The URL format is incorrect';
			case 'ChangeLanguagePage.title': return 'Language';
			case 'ChangeLanguagePage.items.japanese': return 'Japanese';
			case 'ChangeLanguagePage.items.english': return 'English';
			case 'ChangeLanguagePage.items.chinese_simplified': return 'Chinese (Simplified)';
			case 'ChangeLanguagePage.items.chinese_traditional': return 'Chinese (Traditional)';
			case 'locales.en': return 'English';
			case 'locales.ja': return 'Japanese';
			case 'locales.zh': return 'Chinese';
			default: return null;
		}
	}
}

