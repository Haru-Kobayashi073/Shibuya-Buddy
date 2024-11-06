import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class ComplicatedImageCarousel extends StatefulWidget {
  const ComplicatedImageCarousel({super.key});

  @override
  State<ComplicatedImageCarousel> createState() =>
      _ComplicatedImageCarouselState();
}

class _ComplicatedImageCarouselState extends State<ComplicatedImageCarousel> {
  int _current = 0; // カルーセルの現在のインデックスを保持

  final List<Map<String, String>> imgList = [
    {
      'url': 'https://placehold.jp/320x180.png',
      'title': '画像1のタイトル',
      'tag': '人数:1人〜',
    },
    {
      'title': '画像2のタイトル',
      'tag': 'タグ2',
    },
    {
      'url': 'https://placehold.jp/320x180.png',
      'title': '画像3のタイトル',
      'tag': 'タグ3',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.all(16),
          child: Text(
            '人気のプラン ＞',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ),
        CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 16 / 12,
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
                color: _current == entry.key ? Colors.black : Colors.grey,
              ),
            );
          }).toList(),
        ),
      ],
    );
  }

  Widget buildCarouselItem(Map<String, String> item) {
    return Column(
      children: [
        Expanded(
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            child: Image.network(
              item['url'] ?? '',
              fit: BoxFit.cover,
              width: double.infinity,
            ),
          ),
        ),
        buildBottomContainer(item),
      ],
    );
  }

  Widget buildBottomContainer(Map<String, String> item) {
    return ClipRRect(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(12),
        bottomRight: Radius.circular(12),
      ),
      child: Container(
        padding: const EdgeInsets.all(16),
        width: double.infinity,
        color: const Color(0xFFF2F4F8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              item['title'] ?? '',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
              ),
              textAlign: TextAlign.start,
            ),
            const SizedBox(
              height: 6,
            ),
            Container(
              padding: const EdgeInsets.all(4),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                item['tag'] ?? '',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
