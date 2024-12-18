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
  TranslationsZhHans(
      {Map<String, Node>? overrides,
      PluralResolver? cardinalResolver,
      PluralResolver? ordinalResolver})
      : assert(overrides == null,
            'Set "translation_overrides: true" in order to enable this feature.'),
        $meta = TranslationMetadata(
          locale: AppLocale.zhHans,
          overrides: overrides ?? {},
          cardinalResolver: cardinalResolver,
          ordinalResolver: ordinalResolver,
        ) {
    $meta.setFlatMapFunction(_flatMapFunction);
  }

  /// Metadata for the translations of <zh-Hans>.
  @override
  final TranslationMetadata<AppLocale, Translations> $meta;

  /// Access flat map
  @override
  dynamic operator [](String key) => $meta.getTranslation(key);

  late final TranslationsZhHans _root = this; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsNavigationBarZhHans navigationBar =
      _TranslationsNavigationBarZhHans._(_root);
  @override
  late final _TranslationsHomePageZhHans homePage =
      _TranslationsHomePageZhHans._(_root);
  @override
  late final _TranslationsAccountPageZhHans accountPage =
      _TranslationsAccountPageZhHans._(_root);
  @override
  late final _TranslationsAuthenticationZhHans authentication =
      _TranslationsAuthenticationZhHans._(_root);
  @override
  late final _TranslationsValidationZhHans validation =
      _TranslationsValidationZhHans._(_root);
  @override
  late final _TranslationsMyPageZhHans myPage =
      _TranslationsMyPageZhHans._(_root);
  @override
  late final _TranslationsChangeLanguagePageZhHans changeLanguagePage =
      _TranslationsChangeLanguagePageZhHans._(_root);
  @override
  late final _TranslationsChangeThemePageZhHans changeThemePage =
      _TranslationsChangeThemePageZhHans._(_root);
  @override
  late final _TranslationsMyPlanPageZhHans myPlanPage =
      _TranslationsMyPlanPageZhHans._(_root);
  @override
  late final _TranslationsPopularTopicsZhHans popularTopics =
      _TranslationsPopularTopicsZhHans._(_root);
  @override
  Map<String, String> get locales => {
        'en': '英语',
        'ja': '日语',
        'zh': '中文',
      };
}

// Path: navigationBar
class _TranslationsNavigationBarZhHans implements TranslationsNavigationBarEn {
  _TranslationsNavigationBarZhHans._(this._root);

  final TranslationsZhHans _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsNavigationBarItemsZhHans items =
      _TranslationsNavigationBarItemsZhHans._(_root);
}

// Path: homePage
class _TranslationsHomePageZhHans implements TranslationsHomePageEn {
  _TranslationsHomePageZhHans._(this._root);

  final TranslationsZhHans _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsHomePagePopularPlansZhHans popularPlans =
      _TranslationsHomePagePopularPlansZhHans._(_root);
  @override
  late final _TranslationsHomePagePopularTopicsZhHans popularTopics =
      _TranslationsHomePagePopularTopicsZhHans._(_root);
  @override
  late final _TranslationsHomePageRecentPlansZhHans recentPlans =
      _TranslationsHomePageRecentPlansZhHans._(_root);
}

// Path: accountPage
class _TranslationsAccountPageZhHans implements TranslationsAccountPageEn {
  _TranslationsAccountPageZhHans._(this._root);

  final TranslationsZhHans _root; // ignore: unused_field

  // Translations
  @override
  String get title => '账户';
  @override
  late final _TranslationsAccountPageItemsZhHans items =
      _TranslationsAccountPageItemsZhHans._(_root);
  @override
  late final _TranslationsAccountPageSnackBarZhHans snackBar =
      _TranslationsAccountPageSnackBarZhHans._(_root);
  @override
  late final _TranslationsAccountPageDiaLogZhHans diaLog =
      _TranslationsAccountPageDiaLogZhHans._(_root);
}

// Path: authentication
class _TranslationsAuthenticationZhHans
    implements TranslationsAuthenticationEn {
  _TranslationsAuthenticationZhHans._(this._root);

  final TranslationsZhHans _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsAuthenticationSignInPageZhHans signInPage =
      _TranslationsAuthenticationSignInPageZhHans._(_root);
  @override
  late final _TranslationsAuthenticationFirebaseAuthZhHans firebaseAuth =
      _TranslationsAuthenticationFirebaseAuthZhHans._(_root);
  @override
  late final _TranslationsAuthenticationResetPasswordPageZhHans
      resetPasswordPage =
      _TranslationsAuthenticationResetPasswordPageZhHans._(_root);
  @override
  late final _TranslationsAuthenticationSignUpPageZhHans signUpPage =
      _TranslationsAuthenticationSignUpPageZhHans._(_root);
  @override
  late final _TranslationsAuthenticationEmailVerificationPageZhHans
      emailVerificationPage =
      _TranslationsAuthenticationEmailVerificationPageZhHans._(_root);
  @override
  late final _TranslationsAuthenticationRegisterProfilePageZhHans
      registerProfilePage =
      _TranslationsAuthenticationRegisterProfilePageZhHans._(_root);
  @override
  late final _TranslationsAuthenticationCompleteSendEmailPageZhHans
      completeSendEmailPage =
      _TranslationsAuthenticationCompleteSendEmailPageZhHans._(_root);
}

// Path: validation
class _TranslationsValidationZhHans implements TranslationsValidationEn {
  _TranslationsValidationZhHans._(this._root);

  final TranslationsZhHans _root; // ignore: unused_field

  // Translations
  @override
  String get emailRequired => '请输入电子邮件地址';
  @override
  String get emailInvalid => '电子邮件地址格式不正确';
  @override
  String get passwordRequired => '请输入密码';
  @override
  String get passwordShort => '密码至少需要8个字符';
  @override
  String get passwordWeak => '密码应包含字母和数字的组合';
  @override
  String get passwordMatch => '密码不匹配';
  @override
  String get informationRequired => '请输入信息';
  @override
  String get urlInvalid => 'URL格式不正确';
}

// Path: myPage
class _TranslationsMyPageZhHans implements TranslationsMyPageEn {
  _TranslationsMyPageZhHans._(this._root);

  final TranslationsZhHans _root; // ignore: unused_field

  // Translations
  @override
  String get unregisteredUserName => '未注册';
  @override
  String get aboutAIFunction => '关于AI功能';
  @override
  String get details => '详细';
  @override
  String get settings => '设置';
  @override
  String get account => '账户';
  @override
  String get language => '语言';
  @override
  String get theme => '主题';
  @override
  String get termsOfUsePrivacyPolicy => '使用条款和隐私政策';
  @override
  String get aboutThisApp => '关于本应用';
  @override
  String get aboutTheDeveloper => '关于开发者';
}

// Path: changeLanguagePage
class _TranslationsChangeLanguagePageZhHans
    implements TranslationsChangeLanguagePageEn {
  _TranslationsChangeLanguagePageZhHans._(this._root);

  final TranslationsZhHans _root; // ignore: unused_field

  // Translations
  @override
  String get title => '语言';
  @override
  late final _TranslationsChangeLanguagePageItemsZhHans items =
      _TranslationsChangeLanguagePageItemsZhHans._(_root);
}

// Path: changeThemePage
class _TranslationsChangeThemePageZhHans
    implements TranslationsChangeThemePageEn {
  _TranslationsChangeThemePageZhHans._(this._root);

  final TranslationsZhHans _root; // ignore: unused_field

  // Translations
  @override
  String get title => '主题';
  @override
  late final _TranslationsChangeThemePageItemsZhHans items =
      _TranslationsChangeThemePageItemsZhHans._(_root);
}

// Path: myPlanPage
class _TranslationsMyPlanPageZhHans implements TranslationsMyPlanPageEn {
  _TranslationsMyPlanPageZhHans._(this._root);

  final TranslationsZhHans _root; // ignore: unused_field

  // Translations
  @override
  String get title => '我的计划';
  @override
  late final _TranslationsMyPlanPageTabsZhHans tabs =
      _TranslationsMyPlanPageTabsZhHans._(_root);
}

// Path: popularTopics
class _TranslationsPopularTopicsZhHans implements TranslationsPopularTopicsEn {
  _TranslationsPopularTopicsZhHans._(this._root);

  final TranslationsZhHans _root; // ignore: unused_field

  // Translations
  @override
  String get sectionName => '热门话题';
}

// Path: navigationBar.items
class _TranslationsNavigationBarItemsZhHans
    implements TranslationsNavigationBarItemsEn {
  _TranslationsNavigationBarItemsZhHans._(this._root);

  final TranslationsZhHans _root; // ignore: unused_field

  // Translations
  @override
  String get home => '首页';
  @override
  String get myPlan => '我的计划';
  @override
  String get myPage => '我的页面';
}

// Path: homePage.popularPlans
class _TranslationsHomePagePopularPlansZhHans
    implements TranslationsHomePagePopularPlansEn {
  _TranslationsHomePagePopularPlansZhHans._(this._root);

  final TranslationsZhHans _root; // ignore: unused_field

  // Translations
  @override
  String get title => '热门计划';
}

// Path: homePage.popularTopics
class _TranslationsHomePagePopularTopicsZhHans
    implements TranslationsHomePagePopularTopicsEn {
  _TranslationsHomePagePopularTopicsZhHans._(this._root);

  final TranslationsZhHans _root; // ignore: unused_field

  // Translations
  @override
  String get title => '热门话题';
  @override
  String numberOfTopics({required Object number}) => '${number}件~';
}

// Path: homePage.recentPlans
class _TranslationsHomePageRecentPlansZhHans
    implements TranslationsHomePageRecentPlansEn {
  _TranslationsHomePageRecentPlansZhHans._(this._root);

  final TranslationsZhHans _root; // ignore: unused_field

  // Translations
  @override
  String get title => '最近创建的计划';
}

// Path: accountPage.items
class _TranslationsAccountPageItemsZhHans
    implements TranslationsAccountPageItemsEn {
  _TranslationsAccountPageItemsZhHans._(this._root);

  final TranslationsZhHans _root; // ignore: unused_field

  // Translations
  @override
  String get signOut => '退出登录';
  @override
  String get linkedWithGoogle => '与Google连接';
  @override
  String get linkedWithApple => '与Apple连接';
  @override
  String get alreadyLinkedGoogle => '已与Google连接';
  @override
  String get alreadyLinkedApple => '已与Apple连接';
}

// Path: accountPage.snackBar
class _TranslationsAccountPageSnackBarZhHans
    implements TranslationsAccountPageSnackBarEn {
  _TranslationsAccountPageSnackBarZhHans._(this._root);

  final TranslationsZhHans _root; // ignore: unused_field

  // Translations
  @override
  String get loggedOut => '已成功退出登录。';
  @override
  String get successfulLinkage => '账户关联成功。';
  @override
  String get linkageFailure => '账户关联失败。';
  @override
  String get providerAlreadyLinked => '此账户已经关联。';
  @override
  String get accountDeactivation => '已解除账户关联。';
  @override
  String get invalidCredential => '请重新登录。';
  @override
  String get linkageCancelled => '账户关联已取消。';
  @override
  String get unlinkageFailure => '解除账户关联失败。';
  @override
  String get operationNotAllowed => '提供者无效。请联系开发者。';
  @override
  String get unknownError => '发生未知错误。';
}

// Path: accountPage.diaLog
class _TranslationsAccountPageDiaLogZhHans
    implements TranslationsAccountPageDiaLogEn {
  _TranslationsAccountPageDiaLogZhHans._(this._root);

  final TranslationsZhHans _root; // ignore: unused_field

  // Translations
  @override
  String get yes => '是';
  @override
  String get no => '否';
  @override
  String get title => '确认解除账户连接';
  @override
  String get google_text => '是否要解除当前账户与Google账户的连接？';
  @override
  String get apple_text => '是否要解除当前账户与Apple账户的连接？';
}

// Path: authentication.signInPage
class _TranslationsAuthenticationSignInPageZhHans
    implements TranslationsAuthenticationSignInPageEn {
  _TranslationsAuthenticationSignInPageZhHans._(this._root);

  final TranslationsZhHans _root; // ignore: unused_field

  // Translations
  @override
  String get title => '登录';
  @override
  String get optionText => ' 或 ';
  @override
  late final _TranslationsAuthenticationSignInPageTextFieldsZhHans textFields =
      _TranslationsAuthenticationSignInPageTextFieldsZhHans._(_root);
  @override
  late final _TranslationsAuthenticationSignInPageButtonsZhHans buttons =
      _TranslationsAuthenticationSignInPageButtonsZhHans._(_root);
}

// Path: authentication.firebaseAuth
class _TranslationsAuthenticationFirebaseAuthZhHans
    implements TranslationsAuthenticationFirebaseAuthEn {
  _TranslationsAuthenticationFirebaseAuthZhHans._(this._root);

  final TranslationsZhHans _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsAuthenticationFirebaseAuthErrorZhHans error =
      _TranslationsAuthenticationFirebaseAuthErrorZhHans._(_root);
}

// Path: authentication.resetPasswordPage
class _TranslationsAuthenticationResetPasswordPageZhHans
    implements TranslationsAuthenticationResetPasswordPageEn {
  _TranslationsAuthenticationResetPasswordPageZhHans._(this._root);

  final TranslationsZhHans _root; // ignore: unused_field

  // Translations
  @override
  String get title => '重置密码';
  @override
  String get description => '将向输入的电子邮件地址发送密码重置邮件';
  @override
  late final _TranslationsAuthenticationResetPasswordPageTextFieldsZhHans
      textFields =
      _TranslationsAuthenticationResetPasswordPageTextFieldsZhHans._(_root);
  @override
  late final _TranslationsAuthenticationResetPasswordPageButtonsZhHans buttons =
      _TranslationsAuthenticationResetPasswordPageButtonsZhHans._(_root);
}

// Path: authentication.signUpPage
class _TranslationsAuthenticationSignUpPageZhHans
    implements TranslationsAuthenticationSignUpPageEn {
  _TranslationsAuthenticationSignUpPageZhHans._(this._root);

  final TranslationsZhHans _root; // ignore: unused_field

  // Translations
  @override
  String get title => '注册';
  @override
  late final _TranslationsAuthenticationSignUpPageTextFieldsZhHans textFields =
      _TranslationsAuthenticationSignUpPageTextFieldsZhHans._(_root);
  @override
  String get button => '注册';
}

// Path: authentication.emailVerificationPage
class _TranslationsAuthenticationEmailVerificationPageZhHans
    implements TranslationsAuthenticationEmailVerificationPageEn {
  _TranslationsAuthenticationEmailVerificationPageZhHans._(this._root);

  final TranslationsZhHans _root; // ignore: unused_field

  // Translations
  @override
  String get title => '邮箱地址验证';
  @override
  String descriptionForDestination({required Object email}) =>
      '将向输入的${email}发送确认邮件。';
  @override
  String get descriptionForCoolDown => '确认邮件每60秒只能重新发送一次。';
  @override
  late final _TranslationsAuthenticationEmailVerificationPageButtonsZhHans
      buttons =
      _TranslationsAuthenticationEmailVerificationPageButtonsZhHans._(_root);
  @override
  late final _TranslationsAuthenticationEmailVerificationPageSnackBarZhHans
      snackBar =
      _TranslationsAuthenticationEmailVerificationPageSnackBarZhHans._(_root);
}

// Path: authentication.registerProfilePage
class _TranslationsAuthenticationRegisterProfilePageZhHans
    implements TranslationsAuthenticationRegisterProfilePageEn {
  _TranslationsAuthenticationRegisterProfilePageZhHans._(this._root);

  final TranslationsZhHans _root; // ignore: unused_field

  // Translations
  @override
  String get title => '注册个人信息';
  @override
  String get textFields => '姓名';
  @override
  late final _TranslationsAuthenticationRegisterProfilePageButtonsZhHans
      buttons =
      _TranslationsAuthenticationRegisterProfilePageButtonsZhHans._(_root);
  @override
  late final _TranslationsAuthenticationRegisterProfilePageSnackBarZhHans
      snackBar =
      _TranslationsAuthenticationRegisterProfilePageSnackBarZhHans._(_root);
}

// Path: authentication.completeSendEmailPage
class _TranslationsAuthenticationCompleteSendEmailPageZhHans
    implements TranslationsAuthenticationCompleteSendEmailPageEn {
  _TranslationsAuthenticationCompleteSendEmailPageZhHans._(this._root);

  final TranslationsZhHans _root; // ignore: unused_field

  // Translations
  @override
  String get title => '发送完成';
  @override
  String description({required Object email}) =>
      '密码重置邮件已发送到${email} \n 重置后请从登录页面登录';
  @override
  String get successResendEmail => '确认邮件已重新发送';
  @override
  late final _TranslationsAuthenticationCompleteSendEmailPageButtonsZhHans
      buttons =
      _TranslationsAuthenticationCompleteSendEmailPageButtonsZhHans._(_root);
}

// Path: changeLanguagePage.items
class _TranslationsChangeLanguagePageItemsZhHans
    implements TranslationsChangeLanguagePageItemsEn {
  _TranslationsChangeLanguagePageItemsZhHans._(this._root);

  final TranslationsZhHans _root; // ignore: unused_field

  // Translations
  @override
  String get japanese => '日本人';
  @override
  String get english => '英语';
  @override
  String get simplifiedChinese => '中文（简体）';
  @override
  String get traditionalChinese => '中文（繁体）';
}

// Path: changeThemePage.items
class _TranslationsChangeThemePageItemsZhHans
    implements TranslationsChangeThemePageItemsEn {
  _TranslationsChangeThemePageItemsZhHans._(this._root);

  final TranslationsZhHans _root; // ignore: unused_field

  // Translations
  @override
  String get system => '系统';
  @override
  String get light => '光';
  @override
  String get dark => '暗处';
}

// Path: myPlanPage.tabs
class _TranslationsMyPlanPageTabsZhHans
    implements TranslationsMyPlanPageTabsEn {
  _TranslationsMyPlanPageTabsZhHans._(this._root);

  final TranslationsZhHans _root; // ignore: unused_field

  // Translations
  @override
  String get createdPlans => '已创建的计划';
  @override
  String get bookmark => '收藏夹';
}

// Path: authentication.signInPage.textFields
class _TranslationsAuthenticationSignInPageTextFieldsZhHans
    implements TranslationsAuthenticationSignInPageTextFieldsEn {
  _TranslationsAuthenticationSignInPageTextFieldsZhHans._(this._root);

  final TranslationsZhHans _root; // ignore: unused_field

  // Translations
  @override
  String get email => '电子邮件地址';
  @override
  String get password => '密码';
}

// Path: authentication.signInPage.buttons
class _TranslationsAuthenticationSignInPageButtonsZhHans
    implements TranslationsAuthenticationSignInPageButtonsEn {
  _TranslationsAuthenticationSignInPageButtonsZhHans._(this._root);

  final TranslationsZhHans _root; // ignore: unused_field

  // Translations
  @override
  String get signIn => '登录';
  @override
  String get signUp => '注册';
  @override
  String get resetPassword => '忘记密码？';
  @override
  String get appleSignIn => '使用Apple登录';
  @override
  String get googleSignIn => '使用Google登录';
  @override
  String get signInAfter => '稍后注册';
}

// Path: authentication.firebaseAuth.error
class _TranslationsAuthenticationFirebaseAuthErrorZhHans
    implements TranslationsAuthenticationFirebaseAuthErrorEn {
  _TranslationsAuthenticationFirebaseAuthErrorZhHans._(this._root);

  final TranslationsZhHans _root; // ignore: unused_field

  // Translations
  @override
  String get networkRequestFailed => '请在良好的网络环境中重试';
  @override
  String get weakPassword => '密码太短。请输入6个字符或更多';
  @override
  String get invalidEmail => '电子邮件地址格式不正确';
  @override
  String get userNotFound => '找不到帐户';
  @override
  String get wrongPassword => '密码错误';
  @override
  String get emailAlreadyInUse => '电子邮件地址已在使用中。请使用其他电子邮件地址登录或创建';
  @override
  String get unexpected => '发生错误。请在良好的网络环境中重试';
}

// Path: authentication.resetPasswordPage.textFields
class _TranslationsAuthenticationResetPasswordPageTextFieldsZhHans
    implements TranslationsAuthenticationResetPasswordPageTextFieldsEn {
  _TranslationsAuthenticationResetPasswordPageTextFieldsZhHans._(this._root);

  final TranslationsZhHans _root; // ignore: unused_field

  // Translations
  @override
  String get email => '电子邮件地址';
}

// Path: authentication.resetPasswordPage.buttons
class _TranslationsAuthenticationResetPasswordPageButtonsZhHans
    implements TranslationsAuthenticationResetPasswordPageButtonsEn {
  _TranslationsAuthenticationResetPasswordPageButtonsZhHans._(this._root);

  final TranslationsZhHans _root; // ignore: unused_field

  // Translations
  @override
  String get submit => '发送';
}

// Path: authentication.signUpPage.textFields
class _TranslationsAuthenticationSignUpPageTextFieldsZhHans
    implements TranslationsAuthenticationSignUpPageTextFieldsEn {
  _TranslationsAuthenticationSignUpPageTextFieldsZhHans._(this._root);

  final TranslationsZhHans _root; // ignore: unused_field

  // Translations
  @override
  String get email => '邮箱地址';
  @override
  String get password => '密码';
}

// Path: authentication.emailVerificationPage.buttons
class _TranslationsAuthenticationEmailVerificationPageButtonsZhHans
    implements TranslationsAuthenticationEmailVerificationPageButtonsEn {
  _TranslationsAuthenticationEmailVerificationPageButtonsZhHans._(this._root);

  final TranslationsZhHans _root; // ignore: unused_field

  // Translations
  @override
  String get sendEmail => '发送确认邮件';
  @override
  String get resendEmail => '重新发送确认邮件';
  @override
  String get toNext => '下一步';
  @override
  String get retypeEmail => '修改邮箱地址';
}

// Path: authentication.emailVerificationPage.snackBar
class _TranslationsAuthenticationEmailVerificationPageSnackBarZhHans
    implements TranslationsAuthenticationEmailVerificationPageSnackBarEn {
  _TranslationsAuthenticationEmailVerificationPageSnackBarZhHans._(this._root);

  final TranslationsZhHans _root; // ignore: unused_field

  // Translations
  @override
  String get success => '发送成功';
  @override
  late final _TranslationsAuthenticationEmailVerificationPageSnackBarErrorZhHans
      error =
      _TranslationsAuthenticationEmailVerificationPageSnackBarErrorZhHans._(
          _root);
}

// Path: authentication.registerProfilePage.buttons
class _TranslationsAuthenticationRegisterProfilePageButtonsZhHans
    implements TranslationsAuthenticationRegisterProfilePageButtonsEn {
  _TranslationsAuthenticationRegisterProfilePageButtonsZhHans._(this._root);

  final TranslationsZhHans _root; // ignore: unused_field

  // Translations
  @override
  String get submit => '完成';
  @override
  String get skip => '跳过';
}

// Path: authentication.registerProfilePage.snackBar
class _TranslationsAuthenticationRegisterProfilePageSnackBarZhHans
    implements TranslationsAuthenticationRegisterProfilePageSnackBarEn {
  _TranslationsAuthenticationRegisterProfilePageSnackBarZhHans._(this._root);

  final TranslationsZhHans _root; // ignore: unused_field

  // Translations
  @override
  late final _TranslationsAuthenticationRegisterProfilePageSnackBarErrorZhHans
      error =
      _TranslationsAuthenticationRegisterProfilePageSnackBarErrorZhHans._(
          _root);
}

// Path: authentication.completeSendEmailPage.buttons
class _TranslationsAuthenticationCompleteSendEmailPageButtonsZhHans
    implements TranslationsAuthenticationCompleteSendEmailPageButtonsEn {
  _TranslationsAuthenticationCompleteSendEmailPageButtonsZhHans._(this._root);

  final TranslationsZhHans _root; // ignore: unused_field

  // Translations
  @override
  String get toSignIn => '前往登录页面';
  @override
  String get resendEmail => '重新发送确认邮件';
  @override
  String get changeEmail => '更改电子邮件地址';
}

// Path: authentication.emailVerificationPage.snackBar.error
class _TranslationsAuthenticationEmailVerificationPageSnackBarErrorZhHans
    implements TranslationsAuthenticationEmailVerificationPageSnackBarErrorEn {
  _TranslationsAuthenticationEmailVerificationPageSnackBarErrorZhHans._(
      this._root);

  final TranslationsZhHans _root; // ignore: unused_field

  // Translations
  @override
  String get unexpected => '发生错误，请稍后再试。';
}

// Path: authentication.registerProfilePage.snackBar.error
class _TranslationsAuthenticationRegisterProfilePageSnackBarErrorZhHans
    implements TranslationsAuthenticationRegisterProfilePageSnackBarErrorEn {
  _TranslationsAuthenticationRegisterProfilePageSnackBarErrorZhHans._(
      this._root);

  final TranslationsZhHans _root; // ignore: unused_field

  // Translations
  @override
  String get submitIfAllEmpty => '请输入信息';
  @override
  String get unexpected => '发生错误，请稍后再试。';
}

/// Flat map(s) containing all translations.
/// Only for edge cases! For simple maps, use the map function of this library.
extension on TranslationsZhHans {
  dynamic _flatMapFunction(String path) {
    switch (path) {
      case 'navigationBar.items.home':
        return '首页';
      case 'navigationBar.items.myPlan':
        return '我的计划';
      case 'navigationBar.items.myPage':
        return '我的页面';
      case 'homePage.popularPlans.title':
        return '热门计划';
      case 'homePage.popularTopics.title':
        return '热门话题';
      case 'homePage.popularTopics.numberOfTopics':
        return ({required Object number}) => '${number}件~';
      case 'homePage.recentPlans.title':
        return '最近创建的计划';
      case 'accountPage.title':
        return '账户';
      case 'accountPage.items.signOut':
        return '退出登录';
      case 'accountPage.items.linkedWithGoogle':
        return '与Google连接';
      case 'accountPage.items.linkedWithApple':
        return '与Apple连接';
      case 'accountPage.items.alreadyLinkedGoogle':
        return '已与Google连接';
      case 'accountPage.items.alreadyLinkedApple':
        return '已与Apple连接';
      case 'accountPage.snackBar.loggedOut':
        return '已成功退出登录。';
      case 'accountPage.snackBar.successfulLinkage':
        return '账户关联成功。';
      case 'accountPage.snackBar.linkageFailure':
        return '账户关联失败。';
      case 'accountPage.snackBar.providerAlreadyLinked':
        return '此账户已经关联。';
      case 'accountPage.snackBar.accountDeactivation':
        return '已解除账户关联。';
      case 'accountPage.snackBar.invalidCredential':
        return '请重新登录。';
      case 'accountPage.snackBar.linkageCancelled':
        return '账户关联已取消。';
      case 'accountPage.snackBar.unlinkageFailure':
        return '解除账户关联失败。';
      case 'accountPage.snackBar.operationNotAllowed':
        return '提供者无效。请联系开发者。';
      case 'accountPage.snackBar.unknownError':
        return '发生未知错误。';
      case 'accountPage.diaLog.yes':
        return '是';
      case 'accountPage.diaLog.no':
        return '否';
      case 'accountPage.diaLog.title':
        return '确认解除账户连接';
      case 'accountPage.diaLog.google_text':
        return '是否要解除当前账户与Google账户的连接？';
      case 'accountPage.diaLog.apple_text':
        return '是否要解除当前账户与Apple账户的连接？';
      case 'authentication.signInPage.title':
        return '登录';
      case 'authentication.signInPage.optionText':
        return ' 或 ';
      case 'authentication.signInPage.textFields.email':
        return '电子邮件地址';
      case 'authentication.signInPage.textFields.password':
        return '密码';
      case 'authentication.signInPage.buttons.signIn':
        return '登录';
      case 'authentication.signInPage.buttons.signUp':
        return '注册';
      case 'authentication.signInPage.buttons.resetPassword':
        return '忘记密码？';
      case 'authentication.signInPage.buttons.appleSignIn':
        return '使用Apple登录';
      case 'authentication.signInPage.buttons.googleSignIn':
        return '使用Google登录';
      case 'authentication.signInPage.buttons.signInAfter':
        return '稍后注册';
      case 'authentication.firebaseAuth.error.networkRequestFailed':
        return '请在良好的网络环境中重试';
      case 'authentication.firebaseAuth.error.weakPassword':
        return '密码太短。请输入6个字符或更多';
      case 'authentication.firebaseAuth.error.invalidEmail':
        return '电子邮件地址格式不正确';
      case 'authentication.firebaseAuth.error.userNotFound':
        return '找不到帐户';
      case 'authentication.firebaseAuth.error.wrongPassword':
        return '密码错误';
      case 'authentication.firebaseAuth.error.emailAlreadyInUse':
        return '电子邮件地址已在使用中。请使用其他电子邮件地址登录或创建';
      case 'authentication.firebaseAuth.error.unexpected':
        return '发生错误。请在良好的网络环境中重试';
      case 'authentication.resetPasswordPage.title':
        return '重置密码';
      case 'authentication.resetPasswordPage.description':
        return '将向输入的电子邮件地址发送密码重置邮件';
      case 'authentication.resetPasswordPage.textFields.email':
        return '电子邮件地址';
      case 'authentication.resetPasswordPage.buttons.submit':
        return '发送';
      case 'authentication.signUpPage.title':
        return '注册';
      case 'authentication.signUpPage.textFields.email':
        return '邮箱地址';
      case 'authentication.signUpPage.textFields.password':
        return '密码';
      case 'authentication.signUpPage.button':
        return '注册';
      case 'authentication.emailVerificationPage.title':
        return '邮箱地址验证';
      case 'authentication.emailVerificationPage.descriptionForDestination':
        return ({required Object email}) => '将向输入的${email}发送确认邮件。';
      case 'authentication.emailVerificationPage.descriptionForCoolDown':
        return '确认邮件每60秒只能重新发送一次。';
      case 'authentication.emailVerificationPage.buttons.sendEmail':
        return '发送确认邮件';
      case 'authentication.emailVerificationPage.buttons.resendEmail':
        return '重新发送确认邮件';
      case 'authentication.emailVerificationPage.buttons.toNext':
        return '下一步';
      case 'authentication.emailVerificationPage.buttons.retypeEmail':
        return '修改邮箱地址';
      case 'authentication.emailVerificationPage.snackBar.success':
        return '发送成功';
      case 'authentication.emailVerificationPage.snackBar.error.unexpected':
        return '发生错误，请稍后再试。';
      case 'authentication.registerProfilePage.title':
        return '注册个人信息';
      case 'authentication.registerProfilePage.textFields':
        return '姓名';
      case 'authentication.registerProfilePage.buttons.submit':
        return '完成';
      case 'authentication.registerProfilePage.buttons.skip':
        return '跳过';
      case 'authentication.registerProfilePage.snackBar.error.submitIfAllEmpty':
        return '请输入信息';
      case 'authentication.registerProfilePage.snackBar.error.unexpected':
        return '发生错误，请稍后再试。';
      case 'authentication.completeSendEmailPage.title':
        return '发送完成';
      case 'authentication.completeSendEmailPage.description':
        return ({required Object email}) => '密码重置邮件已发送到${email} \n 重置后请从登录页面登录';
      case 'authentication.completeSendEmailPage.successResendEmail':
        return '确认邮件已重新发送';
      case 'authentication.completeSendEmailPage.buttons.toSignIn':
        return '前往登录页面';
      case 'authentication.completeSendEmailPage.buttons.resendEmail':
        return '重新发送确认邮件';
      case 'authentication.completeSendEmailPage.buttons.changeEmail':
        return '更改电子邮件地址';
      case 'validation.emailRequired':
        return '请输入电子邮件地址';
      case 'validation.emailInvalid':
        return '电子邮件地址格式不正确';
      case 'validation.passwordRequired':
        return '请输入密码';
      case 'validation.passwordShort':
        return '密码至少需要8个字符';
      case 'validation.passwordWeak':
        return '密码应包含字母和数字的组合';
      case 'validation.passwordMatch':
        return '密码不匹配';
      case 'validation.informationRequired':
        return '请输入信息';
      case 'validation.urlInvalid':
        return 'URL格式不正确';
      case 'myPage.unregisteredUserName':
        return '未注册';
      case 'myPage.aboutAIFunction':
        return '关于AI功能';
      case 'myPage.details':
        return '详细';
      case 'myPage.settings':
        return '设置';
      case 'myPage.account':
        return '账户';
      case 'myPage.language':
        return '语言';
      case 'myPage.theme':
        return '主题';
      case 'myPage.termsOfUsePrivacyPolicy':
        return '使用条款和隐私政策';
      case 'myPage.aboutThisApp':
        return '关于本应用';
      case 'myPage.aboutTheDeveloper':
        return '关于开发者';
      case 'changeLanguagePage.title':
        return '语言';
      case 'changeLanguagePage.items.japanese':
        return '日本人';
      case 'changeLanguagePage.items.english':
        return '英语';
      case 'changeLanguagePage.items.simplifiedChinese':
        return '中文（简体）';
      case 'changeLanguagePage.items.traditionalChinese':
        return '中文（繁体）';
      case 'changeThemePage.title':
        return '主题';
      case 'changeThemePage.items.system':
        return '系统';
      case 'changeThemePage.items.light':
        return '光';
      case 'changeThemePage.items.dark':
        return '暗处';
      case 'myPlanPage.title':
        return '我的计划';
      case 'myPlanPage.tabs.createdPlans':
        return '已创建的计划';
      case 'myPlanPage.tabs.bookmark':
        return '收藏夹';
      case 'popularTopics.sectionName':
        return '热门话题';
      case 'locales.en':
        return '英语';
      case 'locales.ja':
        return '日语';
      case 'locales.zh':
        return '中文';
      default:
        return null;
    }
  }
}
