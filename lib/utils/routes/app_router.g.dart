// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $appShellRouteData,
      $startUpPageRouteData,
      $homeScreenRouteData,
      $myPlanPageRouteData,
      $myPageRouteData,
      $signInPageRouteData,
      $registerProfilePageRouteData,
    ];

RouteBase get $appShellRouteData => StatefulShellRouteData.$route(
      factory: $AppShellRouteDataExtension._fromState,
      branches: [
        StatefulShellBranchData.$branch(
          navigatorKey: HomeBranch.$navigatorKey,
          routes: [
            GoRouteData.$route(
              path: '/home',
              factory: $HomeScreenRouteDataExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          navigatorKey: MyPlanBranch.$navigatorKey,
          routes: [
            GoRouteData.$route(
              path: '/myPlan',
              factory: $MyPlanPageRouteDataExtension._fromState,
            ),
          ],
        ),
        StatefulShellBranchData.$branch(
          navigatorKey: MyPageBranch.$navigatorKey,
          routes: [
            GoRouteData.$route(
              path: '/myPage',
              factory: $MyPageRouteDataExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $AppShellRouteDataExtension on AppShellRouteData {
  static AppShellRouteData _fromState(GoRouterState state) =>
      const AppShellRouteData();
}

extension $HomeScreenRouteDataExtension on HomeScreenRouteData {
  static HomeScreenRouteData _fromState(GoRouterState state) =>
      const HomeScreenRouteData();

  String get location => GoRouteData.$location(
        '/home',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $MyPlanPageRouteDataExtension on MyPlanPageRouteData {
  static MyPlanPageRouteData _fromState(GoRouterState state) =>
      const MyPlanPageRouteData();

  String get location => GoRouteData.$location(
        '/myPlan',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $MyPageRouteDataExtension on MyPageRouteData {
  static MyPageRouteData _fromState(GoRouterState state) =>
      const MyPageRouteData();

  String get location => GoRouteData.$location(
        '/myPage',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $startUpPageRouteData => GoRouteData.$route(
      path: '/',
      factory: $StartUpPageRouteDataExtension._fromState,
    );

extension $StartUpPageRouteDataExtension on StartUpPageRouteData {
  static StartUpPageRouteData _fromState(GoRouterState state) =>
      const StartUpPageRouteData();

  String get location => GoRouteData.$location(
        '/',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $homeScreenRouteData => GoRouteData.$route(
      path: '/home',
      factory: $HomeScreenRouteDataExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'createPlan',
          factory: $CreatePlanPageRouteDataExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'popularTopicsPage',
          factory: $PopularTopicsPageRouteDataExtension._fromState,
        ),
      ],
    );

extension $CreatePlanPageRouteDataExtension on CreatePlanPageRouteData {
  static CreatePlanPageRouteData _fromState(GoRouterState state) =>
      const CreatePlanPageRouteData();

  String get location => GoRouteData.$location(
        '/home/createPlan',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $PopularTopicsPageRouteDataExtension on PopularTopicsPageRouteData {
  static PopularTopicsPageRouteData _fromState(GoRouterState state) =>
      const PopularTopicsPageRouteData();

  String get location => GoRouteData.$location(
        '/home/popularTopicsPage',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $myPlanPageRouteData => GoRouteData.$route(
      path: '/myPlan',
      factory: $MyPlanPageRouteDataExtension._fromState,
    );

RouteBase get $myPageRouteData => GoRouteData.$route(
      path: '/myPage',
      factory: $MyPageRouteDataExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'aboutApp',
          factory: $AboutAppPageRouteDataExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'aboutDev',
          factory: $AboutDevPageRouteDataExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'account',
          factory: $AccountPageRouteDataExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'aiFunctionsDetail',
          factory: $AiFunctionsDetailPageRouteDataExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'changeLanguage',
          factory: $ChangeLanguagePageRouteDataExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'termsOfUsePrivacyPolicy',
          factory: $TermsofUsePrivacyPolicyPageRouteDataExtension._fromState,
        ),
        GoRouteData.$route(
          path: 'changeTheme',
          factory: $ChangeThemePageRouteDataExtension._fromState,
        ),
      ],
    );

extension $AboutAppPageRouteDataExtension on AboutAppPageRouteData {
  static AboutAppPageRouteData _fromState(GoRouterState state) =>
      const AboutAppPageRouteData();

  String get location => GoRouteData.$location(
        '/myPage/aboutApp',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AboutDevPageRouteDataExtension on AboutDevPageRouteData {
  static AboutDevPageRouteData _fromState(GoRouterState state) =>
      const AboutDevPageRouteData();

  String get location => GoRouteData.$location(
        '/myPage/aboutDev',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AccountPageRouteDataExtension on AccountPageRouteData {
  static AccountPageRouteData _fromState(GoRouterState state) =>
      const AccountPageRouteData();

  String get location => GoRouteData.$location(
        '/myPage/account',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AiFunctionsDetailPageRouteDataExtension
    on AiFunctionsDetailPageRouteData {
  static AiFunctionsDetailPageRouteData _fromState(GoRouterState state) =>
      const AiFunctionsDetailPageRouteData();

  String get location => GoRouteData.$location(
        '/myPage/aiFunctionsDetail',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ChangeLanguagePageRouteDataExtension on ChangeLanguagePageRouteData {
  static ChangeLanguagePageRouteData _fromState(GoRouterState state) =>
      const ChangeLanguagePageRouteData();

  String get location => GoRouteData.$location(
        '/myPage/changeLanguage',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $TermsofUsePrivacyPolicyPageRouteDataExtension
    on TermsofUsePrivacyPolicyPageRouteData {
  static TermsofUsePrivacyPolicyPageRouteData _fromState(GoRouterState state) =>
      const TermsofUsePrivacyPolicyPageRouteData();

  String get location => GoRouteData.$location(
        '/myPage/termsOfUsePrivacyPolicy',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ChangeThemePageRouteDataExtension on ChangeThemePageRouteData {
  static ChangeThemePageRouteData _fromState(GoRouterState state) =>
      const ChangeThemePageRouteData();

  String get location => GoRouteData.$location(
        '/myPage/changeTheme',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $signInPageRouteData => GoRouteData.$route(
      path: '/signIn',
      factory: $SignInPageRouteDataExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: 'resetPassword',
          factory: $ResetPasswordPageRouteDataExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'completeSendEmail',
              factory: $CompleteSendEmailPageRouteDataExtension._fromState,
            ),
          ],
        ),
        GoRouteData.$route(
          path: 'signUp',
          factory: $SignUpPageRouteDataExtension._fromState,
          routes: [
            GoRouteData.$route(
              path: 'emailVerification',
              factory: $EmailVerificationPageRouteDataExtension._fromState,
            ),
          ],
        ),
      ],
    );

extension $SignInPageRouteDataExtension on SignInPageRouteData {
  static SignInPageRouteData _fromState(GoRouterState state) =>
      const SignInPageRouteData();

  String get location => GoRouteData.$location(
        '/signIn',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ResetPasswordPageRouteDataExtension on ResetPasswordPageRouteData {
  static ResetPasswordPageRouteData _fromState(GoRouterState state) =>
      const ResetPasswordPageRouteData();

  String get location => GoRouteData.$location(
        '/signIn/resetPassword',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $CompleteSendEmailPageRouteDataExtension
    on CompleteSendEmailPageRouteData {
  static CompleteSendEmailPageRouteData _fromState(GoRouterState state) =>
      CompleteSendEmailPageRouteData(
        email: state.uri.queryParameters['email']!,
      );

  String get location => GoRouteData.$location(
        '/signIn/resetPassword/completeSendEmail',
        queryParams: {
          'email': email,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $SignUpPageRouteDataExtension on SignUpPageRouteData {
  static SignUpPageRouteData _fromState(GoRouterState state) =>
      const SignUpPageRouteData();

  String get location => GoRouteData.$location(
        '/signIn/signUp',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $EmailVerificationPageRouteDataExtension
    on EmailVerificationPageRouteData {
  static EmailVerificationPageRouteData _fromState(GoRouterState state) =>
      EmailVerificationPageRouteData(
        email: state.uri.queryParameters['email']!,
      );

  String get location => GoRouteData.$location(
        '/signIn/signUp/emailVerification',
        queryParams: {
          'email': email,
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $registerProfilePageRouteData => GoRouteData.$route(
      path: '/registerProfile',
      factory: $RegisterProfilePageRouteDataExtension._fromState,
    );

extension $RegisterProfilePageRouteDataExtension
    on RegisterProfilePageRouteData {
  static RegisterProfilePageRouteData _fromState(GoRouterState state) =>
      const RegisterProfilePageRouteData();

  String get location => GoRouteData.$location(
        '/registerProfile',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$goRouterHash() => r'e148b1d63206522af40a7c9eb863e898adfd2825';

/// See also [goRouter].
@ProviderFor(goRouter)
final goRouterProvider = Provider<GoRouter>.internal(
  goRouter,
  name: r'goRouterProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$goRouterHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GoRouterRef = ProviderRef<GoRouter>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
