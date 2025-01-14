import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/topic.dart';
import '../../domain/repositories/topic_repository.dart';
import '../firebase/cloud_firestore_provider.dart';

part 'topic_data_source.g.dart';

@riverpod
class TopicDataSource extends _$TopicDataSource implements TopicRepository {
  FirebaseFirestore get firestore => ref.read(cloudFirestoreProvider);

  @override
  void build() {
    return;
  }

  @override
  Future<Topic> getTopicData({required String topicId}) async {
    final snapshot = await firestore.collection('topics').doc(topicId).get();
    final topicData = snapshot.data()!;
    return Topic.fromJson(topicData);
  }

  @override
  Future<List<Topic>> getTopics() async {
    final snapshot = await firestore
        .collection('topics')
        .orderBy('created_at', descending: true)
        .get();
    return snapshot.docs.map((doc) => Topic.fromJson(doc.data())).toList();
  }

  @override
  Future<List<Topic>> getPopularTopics() async {
    final snapshot =
        await firestore.collection('popular_topics').limit(10).get();
    return snapshot.docs.map((doc) => Topic.fromJson(doc.data())).toList();
  }
}
