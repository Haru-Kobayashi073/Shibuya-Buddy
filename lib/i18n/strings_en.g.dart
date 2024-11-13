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
	late final TranslationsChangeLanguageEn ChangeLanguage = TranslationsChangeLanguageEn._(_root);
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

// Path: ChangeLanguage
class TranslationsChangeLanguageEn {
	TranslationsChangeLanguageEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	late final TranslationsChangeLanguageItemsEn items = TranslationsChangeLanguageItemsEn._(_root);
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

// Path: ChangeLanguage.items
class TranslationsChangeLanguageItemsEn {
	TranslationsChangeLanguageItemsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations
	String get japanese => 'Japanese';
	String get english => 'English';
	String get chinese_simplified => 'Chinese (Simplified)';
	String get chinese_traditional => 'Chinese (Traditional)';
	String get language => 'Language';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on Translations {
	dynamic _flatMapFunction(String path) {
		switch (path) {
			case 'NavigationBar.items.home': return 'Home';
			case 'NavigationBar.items.myPlan': return 'My Plan';
			case 'NavigationBar.items.myPage': return 'My Page';
			case 'ChangeLanguage.items.japanese': return 'Japanese';
			case 'ChangeLanguage.items.english': return 'English';
			case 'ChangeLanguage.items.chinese_simplified': return 'Chinese (Simplified)';
			case 'ChangeLanguage.items.chinese_traditional': return 'Chinese (Traditional)';
			case 'ChangeLanguage.items.language': return 'Language';
			case 'locales.en': return 'English';
			case 'locales.ja': return 'Japanese';
			case 'locales.zh': return 'Chinese';
			default: return null;
		}
	}
}

