import '../entities/chat_message.dart';
import '../entities/plan_prompt.dart';

abstract interface class GeminiRepository {
  Future<ChatMessage> sendMessage({required String message});
  Future<ChatMessage> sendPlanDetail({required PlanPrompt planPrompt});
}
