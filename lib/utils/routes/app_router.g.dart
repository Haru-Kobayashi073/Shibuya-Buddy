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
      $billDetailsPageRouteData,
      $billDetailsDialogRouteData,
      $authenticationPageRouteData,
      $emailVerificationPageRouteData,
      $registerProfilePageRouteData,
      $buddyChatPageRouteData,
      $planDetailPageRouteData,
      $plansRelatedInTopicRouteData,
      $mapPageRouteData,
      $phoneNumberInputPageRouteData,
      $sMSVerificationPageRouteData,
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
        GoRouteData.$route(
          path: 'popularPlansPage',
          factory: $PopularPlansPageRouteDataExtension._fromState,
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
      PopularTopicsPageRouteData(
        state.extra as List<Topic>,
      );

  String get location => GoRouteData.$location(
        '/home/popularTopicsPage',
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

extension $PopularPlansPageRouteDataExtension on PopularPlansPageRouteData {
  static PopularPlansPageRouteData _fromState(GoRouterState state) =>
      PopularPlansPageRouteData(
        state.extra as List<Plan>,
      );

  String get location => GoRouteData.$location(
        '/home/popularPlansPage',
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
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
          path: 'editProfile',
          factory: $EditProfilePageRouteDataExtension._fromState,
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

extension $EditProfilePageRouteDataExtension on EditProfilePageRouteData {
  static EditProfilePageRouteData _fromState(GoRouterState state) =>
      EditProfilePageRouteData(
        $extra: state.extra as User,
      );

  String get location => GoRouteData.$location(
        '/myPage/editProfile',
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
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

RouteBase get $billDetailsPageRouteData => GoRouteData.$route(
      path: '/billDetailsPage',
      factory: $BillDetailsPageRouteDataExtension._fromState,
    );

extension $BillDetailsPageRouteDataExtension on BillDetailsPageRouteData {
  static BillDetailsPageRouteData _fromState(GoRouterState state) =>
      const BillDetailsPageRouteData();

  String get location => GoRouteData.$location(
        '/billDetailsPage',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $billDetailsDialogRouteData => GoRouteData.$route(
      path: '/billDetailsDialog',
      factory: $BillDetailsDialogRouteDataExtension._fromState,
    );

extension $BillDetailsDialogRouteDataExtension on BillDetailsDialogRouteData {
  static BillDetailsDialogRouteData _fromState(GoRouterState state) =>
      BillDetailsDialogRouteData(
        _$BillingLimitedFeaturesEnumMap
            ._$fromName(state.uri.queryParameters['feature']!),
      );

  String get location => GoRouteData.$location(
        '/billDetailsDialog',
        queryParams: {
          'feature': _$BillingLimitedFeaturesEnumMap[feature],
        },
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

const _$BillingLimitedFeaturesEnumMap = {
  BillingLimitedFeatures.createPlan: 'create-plan',
  BillingLimitedFeatures.chatToBuddy: 'chat-to-buddy',
  BillingLimitedFeatures.none: 'none',
};

extension<T extends Enum> on Map<T, String> {
  T _$fromName(String value) =>
      entries.singleWhere((element) => element.value == value).key;
}

RouteBase get $authenticationPageRouteData => GoRouteData.$route(
      path: '/authentication',
      factory: $AuthenticationPageRouteDataExtension._fromState,
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
      ],
    );

extension $AuthenticationPageRouteDataExtension on AuthenticationPageRouteData {
  static AuthenticationPageRouteData _fromState(GoRouterState state) =>
      const AuthenticationPageRouteData();

  String get location => GoRouteData.$location(
        '/authentication',
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
        '/authentication/resetPassword',
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
        '/authentication/resetPassword/completeSendEmail',
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

RouteBase get $emailVerificationPageRouteData => GoRouteData.$route(
      path: '/emailVerification',
      factory: $EmailVerificationPageRouteDataExtension._fromState,
    );

extension $EmailVerificationPageRouteDataExtension
    on EmailVerificationPageRouteData {
  static EmailVerificationPageRouteData _fromState(GoRouterState state) =>
      EmailVerificationPageRouteData(
        email: state.uri.queryParameters['email']!,
      );

  String get location => GoRouteData.$location(
        '/emailVerification',
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

RouteBase get $buddyChatPageRouteData => GoRouteData.$route(
      path: '/buddyChatPage',
      factory: $BuddyChatPageRouteDataExtension._fromState,
    );

extension $BuddyChatPageRouteDataExtension on BuddyChatPageRouteData {
  static BuddyChatPageRouteData _fromState(GoRouterState state) =>
      BuddyChatPageRouteData(
        state.extra as PlanPrompt,
      );

  String get location => GoRouteData.$location(
        '/buddyChatPage',
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

RouteBase get $planDetailPageRouteData => GoRouteData.$route(
      path: '/planDetailPage',
      factory: $PlanDetailPageRouteDataExtension._fromState,
    );

extension $PlanDetailPageRouteDataExtension on PlanDetailPageRouteData {
  static PlanDetailPageRouteData _fromState(GoRouterState state) =>
      PlanDetailPageRouteData(
        state.extra as Plan,
      );

  String get location => GoRouteData.$location(
        '/planDetailPage',
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

RouteBase get $plansRelatedInTopicRouteData => GoRouteData.$route(
      path: '/plansRelatedInTopic',
      factory: $PlansRelatedInTopicRouteDataExtension._fromState,
    );

extension $PlansRelatedInTopicRouteDataExtension
    on PlansRelatedInTopicRouteData {
  static PlansRelatedInTopicRouteData _fromState(GoRouterState state) =>
      PlansRelatedInTopicRouteData(
        topicName: state.uri.queryParameters['topic-name']!,
        $extra: state.extra as List<String>,
      );

  String get location => GoRouteData.$location(
        '/plansRelatedInTopic',
        queryParams: {
          'topic-name': topicName,
        },
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

RouteBase get $mapPageRouteData => GoRouteData.$route(
      path: '/map',
      factory: $MapPageRouteDataExtension._fromState,
    );

extension $MapPageRouteDataExtension on MapPageRouteData {
  static MapPageRouteData _fromState(GoRouterState state) => MapPageRouteData(
        $extra: state.extra as List<Place>,
      );

  String get location => GoRouteData.$location(
        '/map',
      );

  void go(BuildContext context) => context.go(location, extra: $extra);

  Future<T?> push<T>(BuildContext context) =>
      context.push<T>(location, extra: $extra);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location, extra: $extra);

  void replace(BuildContext context) =>
      context.replace(location, extra: $extra);
}

RouteBase get $phoneNumberInputPageRouteData => GoRouteData.$route(
      path: '/phoneNumberInput',
      factory: $PhoneNumberInputPageRouteDataExtension._fromState,
    );

extension $PhoneNumberInputPageRouteDataExtension
    on PhoneNumberInputPageRouteData {
  static PhoneNumberInputPageRouteData _fromState(GoRouterState state) =>
      const PhoneNumberInputPageRouteData();

  String get location => GoRouteData.$location(
        '/phoneNumberInput',
      );

  void go(BuildContext context) => context.go(location);

  Future<T?> push<T>(BuildContext context) => context.push<T>(location);

  void pushReplacement(BuildContext context) =>
      context.pushReplacement(location);

  void replace(BuildContext context) => context.replace(location);
}

RouteBase get $sMSVerificationPageRouteData => GoRouteData.$route(
      path: '/smsVerification',
      factory: $SMSVerificationPageRouteDataExtension._fromState,
    );

extension $SMSVerificationPageRouteDataExtension
    on SMSVerificationPageRouteData {
  static SMSVerificationPageRouteData _fromState(GoRouterState state) =>
      SMSVerificationPageRouteData(
        phoneNumber: state.uri.queryParameters['phone-number']!,
        verificationId: state.uri.queryParameters['verification-id']!,
      );

  String get location => GoRouteData.$location(
        '/smsVerification',
        queryParams: {
          'phone-number': phoneNumber,
          'verification-id': verificationId,
        },
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
