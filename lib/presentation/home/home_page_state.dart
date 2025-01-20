import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/plan.dart';
import '../../domain/entities/topic.dart';

part 'home_page_state.freezed.dart';

@freezed
abstract class HomePageState with _$HomePageState {
  const factory HomePageState({
    required List<Plan> popularPlans,
    required List<Topic> popularTopics,
    @Default([]) List<Plan> recentPlans,
  }) = _HomePageState;
}
