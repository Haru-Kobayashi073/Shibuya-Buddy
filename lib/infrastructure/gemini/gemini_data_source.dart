import 'dart:convert';

import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

import '../../domain/entities/chat_message.dart';
import '../../domain/entities/gemini_response.dart';
import '../../domain/entities/plan_prompt.dart';
import '../../domain/repositories/gemini_repository.dart';
import '../../i18n/strings.g.dart';
import '../../utils/providers/locale/locale_service.dart';
import '../../utils/translate_prompt.dart';

part 'gemini_data_source.g.dart';

@Riverpod(keepAlive: true)
class GeminiDataSource extends _$GeminiDataSource implements GeminiRepository {
  GenerativeModel get model {
    const apiKey = String.fromEnvironment('geminiAPIKey');

    return GenerativeModel(
      model: 'gemini-1.5-flash',
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
                  requiredProperties: [
                    'title',
                    'description',
                    'thumbnail_url',
                  ],
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
                      'location',
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
                      'location': Schema(
                        SchemaType.object,
                        enumValues: [],
                        requiredProperties: ['latitude', 'longitude'],
                        properties: {
                          'latitude': Schema(
                            SchemaType.number,
                          ),
                          'longitude': Schema(
                            SchemaType.number,
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
  }

  @override
  ChatSession build() {
    return _initializeGeminiModel();
  }

  @override
  Future<ChatMessage> sendMessage({required String message}) async {
    final response = await state.sendMessage(
      Content.multi([
        TextPart(message),
      ]),
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
    final currentLocale = ref.read(localeServiceProvider);
    final translatedPrompt =
        TranslatePrompt(currentLocale, planPrompt).switchPromptLocale();

    final convertModelToString = Content.multi([
      TextPart(translatedPrompt),
    ]);
    final response = await state.sendMessage(convertModelToString);

    if (response.text == null) {
      throw Exception('データがありません');
    }

    final jsonMap = jsonDecode(response.text!) as Map<String, dynamic>;
    final geminiResponse = GeminiResponse.fromJson(jsonMap);
    return ChatMessage(
      id: const Uuid().v4(),
      author: ChatAuthor.buddy,
      message: t.prompt.planProposalMessage,
      plan: geminiResponse.response.plan,
      places: geminiResponse.response.places,
      createdAt: DateTime.now(),
    );
  }

  ChatSession _initializeGeminiModel() {
    return model.startChat();
  }
}
