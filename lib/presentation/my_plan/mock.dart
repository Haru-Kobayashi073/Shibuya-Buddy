import '../../domain/entities/plan.dart';
import '../../domain/entities/topic.dart';

List<Plan> dummyBookmarkPlan = [];

void populateDummyBookmarkPlan() {
  for (var i = 1; i <= 10; i++) {
    dummyBookmarkPlan.add(
      Plan(
        title: '$iのプラン',
        description: '説明説明',
        thumbnailUrl: 'thumbnailUrl',
        topics: [
          const Topic(name: 'タグ', thumbnailUrl: ''),
          Topic(name: 'タグ' * 2, thumbnailUrl: ''),
          Topic(name: 'タグ' * 4, thumbnailUrl: ''),
          Topic(name: 'タグ' * 6, thumbnailUrl: ''),
          Topic(name: 'タグ' * 8, thumbnailUrl: ''),
        ],
      ),
    );
  }
}
