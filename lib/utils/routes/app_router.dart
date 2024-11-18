// GoRouterのBranchを定義する上で、必要なルールのIgnoreを追加しています。
// ignore_for_file: avoid_classes_with_only_static_members

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../presentation/about_app/about_app_page.dart';
import '../../presentation/about_dev/about_dev_page.dart';
import '../../presentation/account/account_page.dart';
import '../../presentation/ai_functions_detail/ai_functions_detail_page.dart';
import '../../presentation/change_language/change_language_page.dart';
import '../../presentation/change_theme/change_theme_page.dart';
import '../../presentation/components/bottom_navigation.dart';
import '../../presentation/home/home_page.dart';
import '../../presentation/my_plan/my_plan_page.dart';
import '../../presentation/mypage/my_page.dart';
import '../../presentation/termsofuse_privacypolicy/termsofuse_privacypolicy.dart';
import 'routes.dart';

part 'app_router.g.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
final homeNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'home');
final myPlanNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'my_plan');
final myPageNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'my_page');

@Riverpod(keepAlive: true)
GoRouter goRouter(GoRouterRef ref) {
  return GoRouter(
    initialLocation: Routes.home,
    navigatorKey: rootNavigatorKey,
    routes: $appRoutes,
    debugLogDiagnostics: kDebugMode,
    redirect: (context, state) {
      return null;
    },
  );
}

@TypedStatefulShellRoute<AppShellRouteData>(
  branches: <TypedStatefulShellBranch<StatefulShellBranchData>>[
    TypedStatefulShellBranch<HomeBranch>(
      routes: [
        TypedGoRoute<HomeScreenRouteData>(
          path: Routes.home,
        ),
      ],
    ),
    TypedStatefulShellBranch<MyPlanBranch>(
      routes: [
        TypedGoRoute<MyPlanPageRouteData>(
          path: Routes.myPlan,
        ),
      ],
    ),
    TypedStatefulShellBranch<MyPageBranch>(
      routes: [
        TypedGoRoute<MyPageRouteData>(
          path: Routes.myPage,
        ),
      ],
    ),
  ],
)
class AppShellRouteData extends StatefulShellRouteData {
  const AppShellRouteData();

  static final GlobalKey<NavigatorState> $navigatorKey = rootNavigatorKey;

  @override
  Widget builder(
    BuildContext context,
    GoRouterState state,
    StatefulNavigationShell navigationShell,
  ) {
    return BottomNavigation(navigationShell: navigationShell);
  }
}

class HomeBranch extends StatefulShellBranchData {
  const HomeBranch();

  static final GlobalKey<NavigatorState> $navigatorKey = homeNavigatorKey;
}

class MyPlanBranch extends StatefulShellBranchData {
  const MyPlanBranch();

  static final GlobalKey<NavigatorState> $navigatorKey = myPlanNavigatorKey;
}

class MyPageBranch extends StatefulShellBranchData {
  const MyPageBranch();

  static final GlobalKey<NavigatorState> $navigatorKey = myPageNavigatorKey;
}

// TOPレベルのパスには、@TypedGoRouteをつける
@TypedGoRoute<HomeScreenRouteData>(
  path: Routes.home,
)
class HomeScreenRouteData extends GoRouteData {
  const HomeScreenRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }
}

@TypedGoRoute<MyPlanPageRouteData>(
  path: Routes.myPlan,
)
class MyPlanPageRouteData extends GoRouteData {
  const MyPlanPageRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const MyPlanPage();
  }
}

@TypedGoRoute<MyPageRouteData>(
  path: Routes.myPage,
  routes: [
    TypedGoRoute<AboutAppRoute>(
      path: Routes.aboutApp,
    ),
    TypedGoRoute<AboutDevRoute>(
      path: Routes.aboutDev,
    ),
    TypedGoRoute<AccountRoute>(
      path: Routes.account,
    ),
    TypedGoRoute<AiFunctionsDetailRoute>(
      path: Routes.aiFunctionsDetail,
    ),
    TypedGoRoute<ChangeLanguagePageRoute>(
      path: Routes.changeLanguage,
    ),
    TypedGoRoute<TermsofUsePrivacyPolicyRoute>(
      path: Routes.termsOfUsePrivacyPolicy,
    ),
    TypedGoRoute<ThemeRoute>(
      path: Routes.theme,
    ),
  ],
)
class MyPageRouteData extends GoRouteData {
  const MyPageRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const MyPage();
  }
}

class AboutAppRoute extends GoRouteData {
  const AboutAppRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AboutAppPage();
  }
}

class AboutDevRoute extends GoRouteData {
  const AboutDevRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AboutDevPage();
  }
}

class AccountRoute extends GoRouteData {
  const AccountRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AccountPage();
  }
}

class AiFunctionsDetailRoute extends GoRouteData {
  const AiFunctionsDetailRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AiFunctionsDetailPage();
  }
}

class ChangeLanguagePageRoute extends GoRouteData {
  const ChangeLanguagePageRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ChangeLanguagePage();
  }
}

class TermsofUsePrivacyPolicyRoute extends GoRouteData {
  const TermsofUsePrivacyPolicyRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const TermsofUsePrivacyPolicy();
  }
}

class ThemeRoute extends GoRouteData {
  const ThemeRoute();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ChangeThemePage();
  }
}
