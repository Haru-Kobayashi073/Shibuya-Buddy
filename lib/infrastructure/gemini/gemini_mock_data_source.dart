// ignore_for_file: lines_longer_than_80_chars long text

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/chat_message.dart';
import '../../domain/entities/place.dart';
import '../../domain/entities/plan.dart';
import '../../domain/entities/plan_prompt.dart';
import '../../domain/repositories/gemini_repository.dart';

part 'gemini_mock_data_source.g.dart';

@riverpod
class GeminiMockDataSource extends _$GeminiMockDataSource
    implements GeminiRepository {
  @override
  void build() {
    return;
  }

  @override
  Future<ChatMessage> sendMessage({required String message}) async {
    return ChatMessage(
      id: 'qwefhuviebaiv',
      author: ChatAuthor.buddy,
      message: 'こんなプランを考えてみました！いかがですか？',
      createdAt: DateTime.now(),
    );
  }

  @override
  Future<ChatMessage> sendPlanDetail({required PlanPrompt planPrompt}) async {
    return ChatMessage(
      id: 'qwefhuviebaiv',
      author: ChatAuthor.buddy,
      plan: Plan(
        id: 'qwefhuviebaiv',
        title: '宮下パークでショッピング',
        description:
            '今回、Buddyが提案したこのプランは、渋谷駅前にある若者集まる商業施設の”宮下パーク”がメインのプランです！ \n 一階には日本食を楽しめる居酒屋が並ぶとともに、他の階では、モダンなファッション店や雑貨屋が並んでいます。最後に、緑感じる屋上でアクティビティや一休みなどパーソナルな時間をお楽しみください。',
        thumbnailUrl:
            'https://www.miyashita-park.tokyo/pressdata/miyashitapark_%E3%83%A1%E3%82%A4%E3%83%B3%E7%94%BB%E5%83%8F-2.jpg',
        topicIds: ['1', '2'],
        authorId: 'gemini',
        createdAt: DateTime.now(),
      ),
      places: [
        Place(
          id: 'qwefhuviebaiv',
          name: 'ミヤシタ 成ル',
          thumbnailUrl: 'https://placehold.jp/320x180.png',
          title: '美味しい料理と地酒で乾杯！渋谷の昼飲みに',
          openingHours: (
            openTime: DateTime(2024, 12, 12, 11),
            closeTime: DateTime(2024, 12, 12, 23),
          ),
          avevageAmount: '[昼]4000円 [夜]4000円',
          websiteUrl: Uri.parse('https://asia-kitchen.co.jp/miyashita_naru/'),
        ),
        Place(
          id: 'qwefhuviebaiv',
          name: 'ボルダリングウォール',
          thumbnailUrl: 'https://placehold.jp/320x180.png',
          title: '専門スタッフがレクチャー！',
          openingHours: (
            openTime: DateTime(2024, 12, 12, 9),
            closeTime: DateTime(2024, 12, 12, 22),
          ),
          avevageAmount: '500円〜',
          websiteUrl: Uri.parse(
            'https://www.seibu-la.co.jp/park/miyashita-park/facility/sports/',
          ),
        ),
        Place(
          id: 'qwefhuviebaiv',
          name: 'THE SHIBUYA SOUVENIR STORE',
          thumbnailUrl: 'https://placehold.jp/320x180.png',
          title: '個性豊かな渋谷土産が見つかる',
          openingHours: (
            openTime: DateTime(2024, 12, 12, 11),
            closeTime: DateTime(2024, 12, 12, 21),
          ),
          avevageAmount: '1000円〜',
          websiteUrl: Uri.parse(
            'https://www.seihttps://mitsui-shopping-park.com/urban/miyashita/store/1568082.htmlbu-la.co.jp/park/miyashita-park/facility/sports/',
          ),
        ),
      ],
      message: 'こんなプランを考えてみました！いかがですか？',
      createdAt: DateTime.now(),
    );
  }
}
