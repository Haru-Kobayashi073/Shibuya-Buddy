// ignore: one_member_abstracts After creating the PlanRepository, we need to implement it in the data layer.
abstract interface class TopicRepository {
  Future<void> getTopicData({
    required String topicId,
  });
}
