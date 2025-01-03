import '../../domain/entities/plan.dart';
import '../../domain/entities/topic.dart';

List<Plan> dummyPlan = [];

void createDummyPlan() {
  for (var i = 1; i <= 5; i++) {
    dummyPlan.add(
      const Plan(
        title: '宮下パークでショッピング',
        description: '説明説明',
        thumbnailUrl: 'https://placehold.jp/80x50.png',
        topics: [
          // const Topic(name: 'タグ', thumbnailUrl: ''),
          // Topic(name: 'タグ' * 2, thumbnailUrl: ''),
          // Topic(name: 'タグ' * 4, thumbnailUrl: ''),
          // Topic(name: 'タグ' * 6, thumbnailUrl: ''),
          // Topic(name: 'タグ' * 8, thumbnailUrl: ''),
          Topic(name: '所要時間: 1時間〜', thumbnailUrl: ''),
          Topic(name: '人数: １人〜', thumbnailUrl: ''),
          Topic(name: '＃ショッピング ', thumbnailUrl: ''),
          Topic(name: '#アクティビティ ', thumbnailUrl: ''),
        ],
      ),
    );
  }
}
