// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_router.dart';

// **************************************************************************
// GoRouterGenerator
// **************************************************************************

List<RouteBase> get $appRoutes => [
      $appShellRouteData,
      $homeScreenRouteData,
      $myPlanPageRouteData,
      $myPageRouteData,
      $aboutAppRoute,
      $aboutDevRoute,
      $accountRoute,
      $aiFunctionsDetailRoute,
      $changeLanguagePageRoute,
      $termsofUsePrivacyPolicyRoute,
      $themeRoute,
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

RouteBase get $homeScreenRouteData => GoRouteData.$route(
      path: '/home',
      factory: $HomeScreenRouteDataExtension._fromState,
    );

RouteBase get $myPlanPageRouteData => GoRouteData.$route(
      path: '/myPlan',
      factory: $MyPlanPageRouteDataExtension._fromState,
    );

RouteBase get $myPageRouteData => GoRouteData.$route(
      path: '/myPage',
      factory: $MyPageRouteDataExtension._fromState,
      routes: [
        GoRouteData.$route(
          path: '/aboutApp',
          factory: $AboutAppRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/aboutDev',
          factory: $AboutDevRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/account',
          factory: $AccountRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/aiFunctionsDetail',
          factory: $AiFunctionsDetailRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/changeLanguage',
          factory: $ChangeLanguagePageRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/termsOfUsePrivacyPolicy',
          factory: $TermsofUsePrivacyPolicyRouteExtension._fromState,
        ),
        GoRouteData.$route(
          path: '/theme',
          factory: $ThemeRouteExtension._fromState,
        ),
      ],
    );

extension $AboutAppRouteExtension on AboutAppRoute {
  static AboutAppRoute _fromState(GoRouterState state) => const AboutAppRoute();

  String get location => GoRouteData.$location(
        '/aboutApp',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AboutDevRouteExtension on AboutDevRoute {
  static AboutDevRoute _fromState(GoRouterState state) => const AboutDevRoute();

  String get location => GoRouteData.$location(
        '/aboutDev',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AccountRouteExtension on AccountRoute {
  static AccountRoute _fromState(GoRouterState state) => const AccountRoute();

  String get location => GoRouteData.$location(
        '/account',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $AiFunctionsDetailRouteExtension on AiFunctionsDetailRoute {
  static AiFunctionsDetailRoute _fromState(GoRouterState state) =>
      const AiFunctionsDetailRoute();

  String get location => GoRouteData.$location(
        '/aiFunctionsDetail',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ChangeLanguagePageRouteExtension on ChangeLanguagePageRoute {
  static ChangeLanguagePageRoute _fromState(GoRouterState state) =>
      const ChangeLanguagePageRoute();

  String get location => GoRouteData.$location(
        '/changeLanguage',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $TermsofUsePrivacyPolicyRouteExtension
    on TermsofUsePrivacyPolicyRoute {
  static TermsofUsePrivacyPolicyRoute _fromState(GoRouterState state) =>
      const TermsofUsePrivacyPolicyRoute();

  String get location => GoRouteData.$location(
        '/termsOfUsePrivacyPolicy',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

extension $ThemeRouteExtension on ThemeRoute {
  static ThemeRoute _fromState(GoRouterState state) => const ThemeRoute();

  String get location => GoRouteData.$location(
        '/theme',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $aboutAppRoute => GoRouteData.$route(
      path: '/aboutApp',
      factory: $AboutAppRouteExtension._fromState,
    );

RouteBase get $aboutDevRoute => GoRouteData.$route(
      path: '/aboutDev',
      factory: $AboutDevRouteExtension._fromState,
    );

RouteBase get $accountRoute => GoRouteData.$route(
      path: '/account',
      factory: $AccountRouteExtension._fromState,
    );

RouteBase get $aiFunctionsDetailRoute => GoRouteData.$route(
      path: '/aiFunctionsDetail',
      factory: $AiFunctionsDetailRouteExtension._fromState,
    );

RouteBase get $changeLanguagePageRoute => GoRouteData.$route(
      path: '/changeLanguage',
      factory: $ChangeLanguagePageRouteExtension._fromState,
    );

RouteBase get $termsofUsePrivacyPolicyRoute => GoRouteData.$route(
      path: '/termsOfUsePrivacyPolicy',
      factory: $TermsofUsePrivacyPolicyRouteExtension._fromState,
    );

RouteBase get $themeRoute => GoRouteData.$route(
      path: '/theme',
      factory: $ThemeRouteExtension._fromState,
    );

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$goRouterHash() => r'50c112ac3e4eef1afe66ec59300cf2ba58f6d8ab';

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
