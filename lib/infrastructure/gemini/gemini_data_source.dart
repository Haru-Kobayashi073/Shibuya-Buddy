import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/chat_message.dart';
import '../../domain/entities/plan_prompt.dart';
import '../../domain/repositories/gemini_repository.dart';

part 'gemini_data_source.g.dart';

@riverpod
class GeminiDataSource extends _$GeminiDataSource implements GeminiRepository {
  @override
  void build() {
    return;
  }

  @override
  Future<ChatMessage> sendMessage({required String message}) async {
    throw UnimplementedError();
  }

  @override
  Future<ChatMessage> sendPlanDetail({required PlanPrompt planPrompt}) async {
    throw UnimplementedError();
  }
}
