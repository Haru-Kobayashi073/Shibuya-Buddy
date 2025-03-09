import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/plan.dart';
import '../../domain/entities/topic.dart';
import '../../domain/entities/user.dart';
import '../../infrastructure/plan/plan_data_source.dart';
import '../../infrastructure/topic/topic_data_source.dart';
import '../../utils/billing_grade_options.dart';
import '../../utils/custom_logger.dart';
import '../../utils/providers/current_user/current_user.dart';
import '../../utils/providers/geofence/geofence_service.dart';
import '../../utils/providers/in_app_purchase/in_app_purchase_service.dart';
import 'home_page_state.dart';

part 'home_page_notifier.g.dart';

@riverpod
class HomePageNotifier extends _$HomePageNotifier {
  PlanDataSource get planDataSource =>
      ref.read(planDataSourceProvider.notifier);
  TopicDataSource get topicDataSource =>
      ref.read(topicDataSourceProvider.notifier);

  @override
  Future<HomePageState> build() async {
    await initializeAppServices();

    final popularPlans = await getPopularPlans();
    final popularTopics = await getPopularTopics();
    final recentPlans = await getRecentPlans();

    return HomePageState(
      popularPlans: popularPlans,
      popularTopics: popularTopics,
      recentPlans: recentPlans ?? <Plan>[],
    );
  }

  Future<void> initializeAppServices() async {
    try {
      /// ユーザー情報を取得
      await ref.read(currentUserProvider.notifier).fetchUser();
      await ref.read(geofenceServiceProvider.notifier).initialize();

      /// In-App Purchaseを初期化
      const flavor = String.fromEnvironment('flavor');
      if (flavor == 'prod') {
        await ref.read(inAppPurchaseServiceProvider.notifier).build();
      }
    } on Exception catch (e) {
      logger.error(
        'initializeAppServices: $e',
        methodName: 'initializeAppServices',
      );
    }
  }

  Future<List<Plan>> getPopularPlans() async {
    try {
      return await planDataSource.getPopularPlans();
    } on Exception catch (e) {
      logger.error('getPopularPlans: $e', methodName: 'getPopularPlans');
      return <Plan>[];
    }
  }

  Future<List<Topic>> getPopularTopics() async {
    try {
      return await topicDataSource.getPopularTopics();
    } on Exception catch (e) {
      logger.error('getPopularTopics: $e', methodName: 'getPopularTopics');
      return <Topic>[];
    }
  }

  Future<List<Plan>?> getRecentPlans() async {
    try {
      return await planDataSource.getRecentPlansMadeByPersonal();
    } on Exception catch (e) {
      logger.error('getRecentPlans: $e', methodName: 'getRecentPlans');
    }
    return null;
  }

  void onCreatePlanButtonPressed({
    required void Function() onUnlimitedUser,
    required void Function() needUpgradeToPremium,
  }) {
    final user = ref.watch(currentUserProvider);
    final isStandardUser = user.billingGrade == BillingGrade.standard;
    final createdPlansCount = state.requireValue.recentPlans.length;

    if (isStandardUser &&
        createdPlansCount < BillingGradeOptions.possibleCreatePlanCount) {
      onUnlimitedUser();
    } else if (isStandardUser &&
        createdPlansCount >= BillingGradeOptions.possibleCreatePlanCount) {
      needUpgradeToPremium();
    } else if (!isStandardUser) {
      onUnlimitedUser();
    }
  }
}
