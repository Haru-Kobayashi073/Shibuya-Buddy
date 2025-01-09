import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/topic.dart';
import '../firebase/cloud_firestore_provider.dart';
import '../firebase/firebase_auth_provider.dart';

part 'topic_data_source.g.dart';

@riverpod
class TopicDataSource extends _$TopicDataSource {
  FirebaseAuth get fireauth => ref.read(firebaseAuthProvider);
  FirebaseFirestore get firestore => ref.read(cloudFirestoreProvider);
  @override
  void build() {
    return;
  }

  Future<Topic> getTopicData({required String topicId}) async {
    final snapshot = await firestore.collection('topics').doc(topicId).get();
    final topicData = snapshot.data();
    if (topicData == null) {
      return const Topic(name: '', thumbnailUrl: 'thumbnailUrl');
    }
    final ranking = int.tryParse(topicData['ranking'].toString()) ?? 0;
    return Topic(
      createdAt: ['created_at'].toString(),
      id: ['id'].toString(),
      name: topicData['name'].toString(),
      ranking: ranking,
      thumbnailUrl: topicData['thumbnail_url'].toString(),
      totalCount: int.parse(topicData['total_count'].toString()),
    );
  }
}
