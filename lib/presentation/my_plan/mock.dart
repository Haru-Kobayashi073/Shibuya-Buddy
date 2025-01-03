import '../../domain/entities/plan.dart';
import '../../domain/entities/topic.dart';

List<Plan> dummyPlan = [];

void createDummyPlan() {
  for (var i = 1; i <= 5; i++) {
    dummyPlan.add(
      Plan(
        title: '$iのプラン',
        description: '説明説明',
        thumbnailUrl: 'https://placehold.jp/80x50.png',
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
