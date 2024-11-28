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
      $popularTopicsRouteData,
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

RouteBase get $popularTopicsRouteData => GoRouteData.$route(
      path: '/popularTopics',
      factory: $PopularTopicsRouteDataExtension._fromState,
    );

extension $PopularTopicsRouteDataExtension on PopularTopicsRouteData {
  static PopularTopicsRouteData _fromState(GoRouterState state) =>
      PopularTopicsRouteData();

  String get location => GoRouteData.$location(
        '/popularTopics',
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

typedef GoRouterRef = ProviderRef<GoRouter>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
