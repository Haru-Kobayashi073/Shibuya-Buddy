// GoRouterのBranchを定義する上で、必要なルールのIgnoreを追加しています。
// ignore_for_file: avoid_classes_with_only_static_members

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/place.dart';
import '../../domain/entities/plan.dart';
import '../../domain/entities/plan_prompt.dart';
import '../../domain/entities/topic.dart';
import '../../domain/entities/user.dart';
import '../../presentation/about_app/about_app_page.dart';
import '../../presentation/about_dev/about_dev_page.dart';
import '../../presentation/account/account_page.dart';
import '../../presentation/ai_functions_detail/ai_functions_detail_page.dart';
import '../../presentation/bill_details/bill_details_page.dart';
import '../../presentation/buddy_chat/buddy_chat_page.dart';
import '../../presentation/change_language/change_language_page.dart';
import '../../presentation/change_theme/change_theme_page.dart';
import '../../presentation/complete_send_email/complete_send_email_page.dart';
import '../../presentation/components/bottom_navigation.dart';
import '../../presentation/create_plan/create_plan_page.dart';
import '../../presentation/email_verification/email_verification_page.dart';
import '../../presentation/home/home_page.dart';
import '../../presentation/map/map_page.dart';
import '../../presentation/my_plan/my_plan_page.dart';
import '../../presentation/mypage/edit_profile/edit_profile_page.dart';
import '../../presentation/mypage/my_page.dart';
import '../../presentation/plan_detail/plan_detail_page.dart';
import '../../presentation/plans_related_in_topic/plans_related_in_topic_page.dart';
import '../../presentation/popular_plans/popular_plans_page.dart';
import '../../presentation/popular_topics/popular_topics_page.dart';
import '../../presentation/register_profile/register_profile_page.dart';
import '../../presentation/reset_password/reset_password_page.dart';
import '../../presentation/sign_in/sign_in_page.dart';
import '../../presentation/sign_up/sign_up_page.dart';
import '../../presentation/sms_verification/sms_verification_page.dart';
import '../../presentation/terms_of_use_privacy_policy/terms_of_use_privacy_policy_page.dart';
import '../../start_up_page.dart';
import 'routes.dart';

part 'app_router.g.dart';

final rootNavigatorKey = GlobalKey<NavigatorState>();
final homeNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'home');
final myPlanNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'my_plan');
final myPageNavigatorKey = GlobalKey<NavigatorState>(debugLabel: 'my_page');

@Riverpod(keepAlive: true)
GoRouter goRouter(GoRouterRef ref) {
  return GoRouter(
    initialLocation: Routes.root,
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
@TypedGoRoute<StartUpPageRouteData>(
  path: Routes.root,
)
class StartUpPageRouteData extends GoRouteData {
  const StartUpPageRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const StartUpPage();
  }
}

@TypedGoRoute<HomeScreenRouteData>(
  path: Routes.home,
  routes: [
    TypedGoRoute<CreatePlanPageRouteData>(path: Routes.createPlan),
    TypedGoRoute<PopularTopicsPageRouteData>(
      path: Routes.popularTopicsPage,
    ),
    TypedGoRoute<PopularPlansPageRouteData>(
      path: Routes.popularPlansPage,
    ),
  ],
)
class HomeScreenRouteData extends GoRouteData {
  const HomeScreenRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const HomePage();
  }
}

class CreatePlanPageRouteData extends GoRouteData {
  const CreatePlanPageRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const CreatePlanPage();
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

class PopularTopicsPageRouteData extends GoRouteData {
  const PopularTopicsPageRouteData(this.$extra);
  final List<Topic> $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return PopularTopicsPage(topics: $extra);
  }
}

class PopularPlansPageRouteData extends GoRouteData {
  const PopularPlansPageRouteData(this.$extra);
  final List<Plan> $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return PopularPlansPage(plans: $extra);
  }
}

@TypedGoRoute<MyPageRouteData>(
  path: Routes.myPage,
  routes: [
    TypedGoRoute<AboutAppPageRouteData>(
      path: Routes.aboutApp,
    ),
    TypedGoRoute<AboutDevPageRouteData>(
      path: Routes.aboutDev,
    ),
    TypedGoRoute<EditProfilePageRouteData>(
      path: Routes.editProfile,
    ),
    TypedGoRoute<AccountPageRouteData>(
      path: Routes.account,
    ),
    TypedGoRoute<AiFunctionsDetailPageRouteData>(
      path: Routes.aiFunctionsDetail,
    ),
    TypedGoRoute<ChangeLanguagePageRouteData>(
      path: Routes.changeLanguage,
    ),
    TypedGoRoute<TermsofUsePrivacyPolicyPageRouteData>(
      path: Routes.termsOfUsePrivacyPolicy,
    ),
    TypedGoRoute<ChangeThemePageRouteData>(
      path: Routes.changeTheme,
    ),
    TypedGoRoute<BillDetailsPageRouteData>(
      path: Routes.billDetails,
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

class EditProfilePageRouteData extends GoRouteData {
  const EditProfilePageRouteData({
    required this.$extra,
  });
  final User $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return EditProfilePage(user: $extra);
  }
}

class AboutAppPageRouteData extends GoRouteData {
  const AboutAppPageRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AboutAppPage();
  }
}

class AboutDevPageRouteData extends GoRouteData {
  const AboutDevPageRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AboutDevPage();
  }
}

class AccountPageRouteData extends GoRouteData {
  const AccountPageRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AccountPage();
  }
}

class AiFunctionsDetailPageRouteData extends GoRouteData {
  const AiFunctionsDetailPageRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const AiFunctionsDetailPage();
  }
}

class ChangeLanguagePageRouteData extends GoRouteData {
  const ChangeLanguagePageRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ChangeLanguagePage();
  }
}

class TermsofUsePrivacyPolicyPageRouteData extends GoRouteData {
  const TermsofUsePrivacyPolicyPageRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const TermsOfUsePrivacyPolicyPage();
  }
}

class ChangeThemePageRouteData extends GoRouteData {
  const ChangeThemePageRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ChangeThemePage();
  }
}

class BillDetailsPageRouteData extends GoRouteData {
  const BillDetailsPageRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const BillDetailsPage();
  }
}

@TypedGoRoute<BillDetailsDialogRouteData>(
  path: Routes.billDetailsDialog,
)
class BillDetailsDialogRouteData extends GoRouteData {
  const BillDetailsDialogRouteData();

  @override
  Page<void> buildPage(BuildContext context, GoRouterState state) {
    return MaterialPage<void>(
      key: state.pageKey,
      child: const BillDetailsPage(
        isDialog: true,
      ),
      fullscreenDialog: true,
    );
  }
}

@TypedGoRoute<SignInPageRouteData>(
  path: Routes.signIn,
  routes: [
    TypedGoRoute<ResetPasswordPageRouteData>(
      path: Routes.resetPassword,
      routes: [
        TypedGoRoute<CompleteSendEmailPageRouteData>(
          path: Routes.completeSendEmail,
        ),
      ],
    ),
    TypedGoRoute<SignUpPageRouteData>(path: Routes.signUp),
  ],
)
class SignInPageRouteData extends GoRouteData {
  const SignInPageRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SignInPage();
  }
}

class ResetPasswordPageRouteData extends GoRouteData {
  const ResetPasswordPageRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const ResetPasswordPage();
  }
}

class CompleteSendEmailPageRouteData extends GoRouteData {
  const CompleteSendEmailPageRouteData({
    required this.email,
  });
  final String email;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return CompleteSendEmailPage(email: email);
  }
}

class SignUpPageRouteData extends GoRouteData {
  const SignUpPageRouteData({
    this.fromEmailVerify = false,
  });
  final bool fromEmailVerify;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return SignUpPage(fromEmailVerify: fromEmailVerify);
  }
}

@TypedGoRoute<EmailVerificationPageRouteData>(
  path: Routes.emailVerification,
)
class EmailVerificationPageRouteData extends GoRouteData {
  const EmailVerificationPageRouteData({
    required this.email,
  });
  final String email;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return EmailVerificationPage(email: email);
  }
}

@TypedGoRoute<RegisterProfilePageRouteData>(
  path: Routes.registerProfile,
)
class RegisterProfilePageRouteData extends GoRouteData {
  const RegisterProfilePageRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const RegisterProfilePage();
  }
}

@TypedGoRoute<BuddyChatPageRouteData>(
  path: Routes.buddyChatPage,
)
class BuddyChatPageRouteData extends GoRouteData {
  const BuddyChatPageRouteData(
    this.$extra,
  );
  final PlanPrompt $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BuddyChatPage(planPrompt: $extra);
  }
}

@TypedGoRoute<PlanDetailPageRouteData>(
  path: Routes.planDetailPage,
)
class PlanDetailPageRouteData extends GoRouteData {
  const PlanDetailPageRouteData(
    this.$extra,
  );
  final Plan $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return PlanDetailPage(plan: $extra);
  }
}

@TypedGoRoute<PlansRelatedInTopicRouteData>(
  path: Routes.plansRelatedInTopic,
)
class PlansRelatedInTopicRouteData extends GoRouteData {
  const PlansRelatedInTopicRouteData({
    required this.topicName,
    required this.$extra,
  });
  final String topicName;
  final List<String> $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return PlansRelatedInTopicPage(
      topicName: topicName,
      planIds: $extra,
    );
  }
}

@TypedGoRoute<MapPageRouteData>(
  path: '/map',
)
class MapPageRouteData extends GoRouteData {
  const MapPageRouteData({required this.$extra});
  final List<Place> $extra;

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return MapPage(places: $extra);
  }
}

@TypedGoRoute<SMSVerificationPageRouteData>(
  path: Routes.smsVerification,
)
class SMSVerificationPageRouteData extends GoRouteData {
  const SMSVerificationPageRouteData();

  @override
  Widget build(BuildContext context, GoRouterState state) {
    return const SmsVerificationPage();
  }
}
