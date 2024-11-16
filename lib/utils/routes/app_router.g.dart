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
      $editProfileRoute,
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
    );

RouteBase get $aboutAppRoute => GoRouteData.$route(
      path: '/aboutApp',
      factory: $AboutAppRouteExtension._fromState,
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

RouteBase get $aboutDevRoute => GoRouteData.$route(
      path: '/aboutDev',
      factory: $AboutDevRouteExtension._fromState,
    );

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

RouteBase get $accountRoute => GoRouteData.$route(
      path: '/acount',
      factory: $AccountRouteExtension._fromState,
    );

extension $AccountRouteExtension on AccountRoute {
  static AccountRoute _fromState(GoRouterState state) => const AccountRoute();

  String get location => GoRouteData.$location(
        '/acount',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $aiFunctionsDetailRoute => GoRouteData.$route(
      path: '/aiFunctionsDetail',
      factory: $AiFunctionsDetailRouteExtension._fromState,
    );

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

RouteBase get $changeLanguagePageRoute => GoRouteData.$route(
      path: '/changeLanguageage',
      factory: $ChangeLanguagePageRouteExtension._fromState,
    );

extension $ChangeLanguagePageRouteExtension on ChangeLanguagePageRoute {
  static ChangeLanguagePageRoute _fromState(GoRouterState state) =>
      const ChangeLanguagePageRoute();

  String get location => GoRouteData.$location(
        '/changeLanguageage',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $editProfileRoute => GoRouteData.$route(
      path: '/editProfile',
      factory: $EditProfileRouteExtension._fromState,
    );

extension $EditProfileRouteExtension on EditProfileRoute {
  static EditProfileRoute _fromState(GoRouterState state) =>
      const EditProfileRoute();

  String get location => GoRouteData.$location(
        '/editProfile',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $termsofUsePrivacyPolicyRoute => GoRouteData.$route(
      path: '/termsOfUsePrivacyPolicy',
      factory: $TermsofUsePrivacyPolicyRouteExtension._fromState,
    );

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

RouteBase get $themeRoute => GoRouteData.$route(
      path: '/thema',
      factory: $ThemeRouteExtension._fromState,
    );

extension $ThemeRouteExtension on ThemeRoute {
  static ThemeRoute _fromState(GoRouterState state) => const ThemeRoute();

  String get location => GoRouteData.$location(
        '/thema',
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

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef GoRouterRef = ProviderRef<GoRouter>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
