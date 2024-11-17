import 'package:email_validator/email_validator.dart';

import '../i18n/strings.g.dart';
import 'routes/app_router.dart';

class Validator {
  Validator._();

  static TranslationsValidationEn get _i18nValidation =>
      Translations.of(rootNavigatorKey.currentContext!).validation;

  /// 認証情報で扱う、emailのバリデーション
  static String? email(String? value) {
    if (value == null || value.isEmpty) {
      return _i18nValidation.emailRequired;
    }
    if (!EmailValidator.validate(value)) {
      return _i18nValidation.emailInvalid;
    }
    return null;
  }

  /// 認証情報で扱う、passwordのバリデーション
  static String? password(String? value) {
    if (value == null || value.isEmpty) {
      return _i18nValidation.passwordRequired;
    }

    // パスワードが8文字以上であることを確認
    if (value.length < 8) {
      return _i18nValidation.passwordShort;
    }

    // 大文字、小文字、数字、特殊文字が含まれているか確認
    // if (!RegExp(r'^(?=.*[A-Z])(?=.*[a-z])(?=.*\d).*$').hasMatch(value)) {
    if (!RegExp(r'^(?=.*[0-9])(?=.*[a-zA-Z]).*$').hasMatch(value)) {
      return _i18nValidation.passwordWeak;
    }

    return null; // バリデーション成功
  }

  /// 認証情報で扱う、確認用のpasswordのバリデーション
  static String? passwordConfirmation(String? value, String? password) {
    if (value == null || value.isEmpty) {
      return _i18nValidation.passwordRequired;
    } else if (value != password) {
      return _i18nValidation.passwordMatch;
    }
    return null;
  }

  /// 通常情報入力時のバリデーション
  static String? common(String? value) {
    if (value == null || value.isEmpty) {
      return _i18nValidation.informationRequired;
    }
    return null;
  }

  /// URL情報入力時のバリデーション
  static String? url(String? value) {
    if (value == null || value.isEmpty) {
      return null;
    }
    if (!Uri.tryParse(value)!.hasAbsolutePath) {
      return _i18nValidation.urlInvalid;
    }
    return null;
  }
}
