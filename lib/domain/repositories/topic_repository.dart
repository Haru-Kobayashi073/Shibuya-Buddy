import '../entities/topic.dart';

abstract interface class TopicRepository {
  Future<List<Topic>> getTopics();
  Future<List<Topic>> getPopularTopics();
}
