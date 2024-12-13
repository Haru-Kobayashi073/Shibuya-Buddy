import 'package:flutter/material.dart';

import '../../utils/styles/app_text_style.dart';
import '../components/topic_card.dart';

class PopularPlansPage extends StatefulWidget {
  const PopularPlansPage({super.key});

  @override
  State<PopularPlansPage> createState() => _PopularPlansPageState();
}

class _PopularPlansPageState extends State<PopularPlansPage> {
  final imgList = <Map<String, Object>>[
    {
      'url':
          'https://www.miyashita-park.tokyo/pressdata/miyashitapark_%E3%83%A1%E3%82%A4%E3%83%B3%E7%94%BB%E5%83%8F-2.jpg',
      'title': '宮下パークでショッピング',
      'tags': ['人数:1人〜', '所要時間:1時間〜', '#ショッピング', '#アクティビティ'],
    },
    {
      'url': 'https://placehold.jp/320x180.png',
      'title': '画像2のタイトル',
      'tags': ['タグ2', 'タグC'],
    },
    {
      'url': 'https://placehold.jp/320x180.png',
      'title': '画像3のタイトル',
      'tags': ['タグ3タグ3タグ3タグ3', 'タグDタグDタグDタグD', 'タグE'],
    },
    {
      'url': 'https://placehold.jp/320x180.png',
      'title': '画像3のタイトル',
      'tags': ['タグ3', 'タグD', 'タグE'],
    },
    {
      'url': 'https://placehold.jp/320x180.png',
      'title': '画像3のタイトル',
      'tags': ['タグ3', 'タグD', 'タグE'],
    },
    {
      'url': 'https://placehold.jp/320x180.png',
      'title': '画像3のタイトル',
      'tags': ['タグ3', 'タグD', 'タグE'],
    },
    {
      'url': 'https://placehold.jp/320x180.png',
      'title': '画像3のタイトル',
      'tags': ['タグ3', 'タグD', 'タグE'],
    },
    {
      'url': 'https://placehold.jp/320x180.png',
      'title': '画像3のタイトル',
      'tags': ['タグ3', 'タグD', 'タグE'],
    },
    {
      'url': 'https://placehold.jp/320x180.png',
      'title': '画像3のタイトル',
      'tags': ['タグ3', 'タグD', 'タグE'],
    },
    {
      'url': 'https://placehold.jp/320x180.png',
      'title': '画像3のタイトル',
      'tags': ['タグ3', 'タグD', 'タグE'],
    },
  ];

  @override
  Widget build(BuildContext context) {
    var ranking = 0;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '人気のプラン',
          style: AppTextStyle.textStyle.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Wrap(
            spacing: 8,
            runSpacing: 8,
            children: imgList.asMap().entries.map((entry) {
              final url = entry.value['url'];
              final title = entry.value['title']! as String;
              final tags = entry.value['tags']! as List<String>;
              final pathWidgets = <Widget>[];
              // debugPrint(entry.value['tags']);
              ranking++;
              pathWidgets.add(
                TopicCard(
                  title: title,
                  imagePath: url.toString(),
                  ranking: ranking,
                  tags: tags,
                ),
              );

              return Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: pathWidgets,
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
