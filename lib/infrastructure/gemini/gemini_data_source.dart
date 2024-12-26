import 'dart:convert';

import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

import '../../domain/entities/chat_message.dart';
import '../../domain/entities/gemini_response.dart';
import '../../domain/entities/plan_prompt.dart';
import '../../domain/repositories/gemini_repository.dart';

part 'gemini_data_source.g.dart';

@riverpod
class GeminiDataSource extends _$GeminiDataSource implements GeminiRepository {
  @override
  ChatSession build() {
    return _initializeGeminiModel();
  }

  @override
  Future<ChatMessage> sendMessage({required String message}) async {
    final response = await state.sendMessage(
      Content.text(message),
    );
    final jsonMap = jsonDecode(response.text!) as Map<String, dynamic>;
    final geminiResponse = GeminiResponse.fromJson(jsonMap);

    return ChatMessage(
      id: const Uuid().v4(),
      message: geminiResponse.response.message,
      plan: geminiResponse.response.plan,
      places: geminiResponse.response.places,
      author: ChatAuthor.buddy,
      createdAt: DateTime.now(),
    );
  }

  @override
  Future<ChatMessage> sendPlanDetail({required PlanPrompt planPrompt}) async {
    final response = await state.sendMessage(
      Content.text(
        '''
        渋谷区内での観光プランを考えてください。

        日付は、${planPrompt.schedules.firstDate}から${planPrompt.schedules.lastDate}までの間で考えてください。

        人数は、${planPrompt.numberOfPeople}人です。

        交通手段は、${planPrompt.transports.join(',')}です。
        )}です。

        カテゴリーは、${planPrompt.categories.join(',')}です。

        旅のトピックは、${planPrompt.topics.join(',')}です。

        出力は以下のフォーマットにしてください。

        - プラン内容に関係のある画像のURL(画像を生成し、URLを返してください)
        - プラン概要のタイトル(提案するスポットに関連したタイトル)
        - 観光スポットのタイトル
        - 観光スポットの名前
        - 観光スポットのサムネイルURL(画像を生成し、URLを返してください)
        - 観光スポットの営業時間
        - 観光スポットの平均予算
        - 観光スポットのWebサイトURL
        - 観光スポットの緯度、経度
        - プラン概要についてのメッセージの送信

        観光スポットの提案は、地名ではなく、場所を提案してください。

        URLに関しては、実際にアクセス可能なものを出力してください。
        ''',
      ),
    );

    final jsonMap = jsonDecode(response.text!) as Map<String, dynamic>;
    final geminiResponse = GeminiResponse.fromJson(jsonMap);
    return ChatMessage(
      id: const Uuid().v4(),
      author: ChatAuthor.buddy,
      message: 'こんなプランを考えてみました！いかがですか？',
      plan: geminiResponse.response.plan,
      places: geminiResponse.response.places,
      createdAt: DateTime.now(),
    );
  }

  ChatSession _initializeGeminiModel() {
    const apiKey = String.fromEnvironment('geminiAPIKey');
    final model = GenerativeModel(
      model: 'gemini-1.5-flash-latest',
      apiKey: apiKey,
      generationConfig: GenerationConfig(
        temperature: 1,
        topK: 40,
        topP: 0.95,
        maxOutputTokens: 8192,
        responseMimeType: 'application/json',
        responseSchema: Schema(
          SchemaType.object,
          enumValues: [],
          requiredProperties: ['response'],
          properties: {
            'response': Schema(
              SchemaType.object,
              enumValues: [],
              requiredProperties: [
                'message',
                'language_code',
                'plan',
                'places',
              ],
              properties: {
                'message': Schema(
                  SchemaType.string,
                ),
                'language_code': Schema(
                  SchemaType.string,
                ),
                'plan': Schema(
                  SchemaType.object,
                  enumValues: [],
                  requiredProperties: ['title', 'description', 'thumbnail_url'],
                  properties: {
                    'title': Schema(
                      SchemaType.string,
                    ),
                    'description': Schema(
                      SchemaType.string,
                    ),
                    'thumbnail_url': Schema(
                      SchemaType.string,
                    ),
                  },
                ),
                'places': Schema(
                  SchemaType.array,
                  items: Schema(
                    SchemaType.object,
                    enumValues: [],
                    requiredProperties: [
                      'name',
                      'title',
                      'thumbnail_url',
                      'opening_hours',
                      'average_amount',
                      'coordinate',
                    ],
                    properties: {
                      'name': Schema(
                        SchemaType.string,
                      ),
                      'title': Schema(
                        SchemaType.string,
                      ),
                      'thumbnail_url': Schema(
                        SchemaType.string,
                      ),
                      'opening_hours': Schema(
                        SchemaType.object,
                        enumValues: [],
                        requiredProperties: ['open_time', 'close_time'],
                        properties: {
                          'open_time': Schema(
                            SchemaType.string,
                          ),
                          'close_time': Schema(
                            SchemaType.string,
                          ),
                        },
                      ),
                      'average_amount': Schema(
                        SchemaType.string,
                      ),
                      'website_url': Schema(
                        SchemaType.string,
                      ),
                      'coordinate': Schema(
                        SchemaType.object,
                        enumValues: [],
                        requiredProperties: ['latitude', 'longitude'],
                        properties: {
                          'latitude': Schema(
                            SchemaType.string,
                          ),
                          'longitude': Schema(
                            SchemaType.string,
                          ),
                        },
                      ),
                    },
                  ),
                ),
              },
            ),
          },
        ),
      ),
    );

    return model.startChat();
  }
}
