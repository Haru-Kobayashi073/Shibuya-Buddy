import '../../domain/entities/plan.dart';
import '../../domain/entities/topic.dart';

List<Plan> dummyBookmarkPlan = [
  const Plan(
    title: 'プラン1',
    description: '',
    thumbnailUrl: 'https://placehold.jp/80x50.png',
    topics: [Topic(name: 'タグ1', thumbnailUrl: '')],
  ),
  const Plan(
    title: 'プラン2',
    description: '',
    thumbnailUrl: 'https://placehold.jp/80x50.png',
    topics: [Topic(name: 'タグ1', thumbnailUrl: '')],
  ),
  const Plan(
    title: 'プラン3',
    description: '',
    thumbnailUrl: 'https://placehold.jp/80x50.png',
    topics: [Topic(name: 'タグ1', thumbnailUrl: '')],
  ),
  const Plan(
    title: 'TitleTitleTitleTitleTitleTitleTitleTitleTitleTitleTitle',
    description: '',
    thumbnailUrl: 'https://placehold.jp/80x50.png',
    topics: [
      Topic(name: 'tag1', thumbnailUrl: ''),
      Topic(name: 'tag2', thumbnailUrl: ''),
      Topic(name: 'tag3', thumbnailUrl: ''),
      Topic(name: 'tag4', thumbnailUrl: ''),
      Topic(name: 'tag5', thumbnailUrl: ''),
      Topic(name: 'tag6', thumbnailUrl: ''),
      Topic(name: 'tag7', thumbnailUrl: ''),
      Topic(name: 'tag8', thumbnailUrl: ''),
    ],
  ),
];
