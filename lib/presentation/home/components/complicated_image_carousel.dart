import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../../utils/styles/app_color.dart';
import '../../../utils/styles/app_text_style.dart';

class ComplicatedImageCarousel extends StatefulWidget {
  const ComplicatedImageCarousel({super.key});

  @override
  State<ComplicatedImageCarousel> createState() =>
      _ComplicatedImageCarouselState();
}

class _ComplicatedImageCarouselState extends State<ComplicatedImageCarousel> {
  int _current = 0; // カルーセルの現在のインデックス

  //
  final List<Map<String, Object>> imgList = [
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
      'tags': ['タグ3', 'タグD', 'タグE'],
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              GestureDetector(
                onTap: () {
                  // ここに遷移する処理を追加
                },
                child: Row(
                  children: [
                    Text(
                      '人気のプラン',
                      style: AppTextStyle.textStyle.copyWith(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 4),
                      child: Icon(
                        Icons.arrow_forward_ios,
                        color: AppColor.black,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        CarouselSlider(
          options: CarouselOptions(
            enlargeCenterPage: true,
            aspectRatio: 16 / 11,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 6),
            onPageChanged: (index, reason) {
              setState(() {
                _current = index; // 現在のインデックスを更新
              });
            },
          ),
          items: imgList.map(buildCarouselItem).toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: imgList.asMap().entries.map((entry) {
            return Container(
              width: 8,
              height: 8,
              margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 4),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color:
                    _current == entry.key ? AppColor.black : AppColor.grey400,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget buildCarouselItem(Map<String, Object> item) {
    // 以下三つの定義にはエラーハンドリングが必要
    final url = item['url']! as String;
    final title = item['title']! as String;
    final tags = item['tags']! as List<String>;

    return Column(
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            child: Image.network(
              url,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
        ),
        buildBottomContainer(title, tags),
      ],
    );
  }

  Widget buildBottomContainer(String title, List<String> tags) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(12),
        bottomRight: Radius.circular(12),
      ),
      child: Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        color: AppColor.blue50Background,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              title,
              style: AppTextStyle.textStyle.copyWith(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.start,
            ),
            const SizedBox(
              height: 6,
            ),
            // 複数のタグを表示する部分
            Wrap(
              spacing: 8,
              runSpacing: 4,
              children: tags.map((tag) {
                return Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  decoration: BoxDecoration(
                    color: AppColor.white,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: Text(
                    tag,
                    style: AppTextStyle.textStyle.copyWith(
                      fontSize: 10,
                    ),
                  ),
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
