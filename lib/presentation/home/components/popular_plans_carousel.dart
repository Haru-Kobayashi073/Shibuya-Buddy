import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import '../../../utils/styles/app_color.dart';
import '../../../utils/styles/app_text_style.dart';
import 'category_tags.dart';
import 'section_title.dart';

class PopularPlansCarousel extends HookWidget {
  const PopularPlansCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    final currentIndex = useState(0); // カルーセルの現在のインデックス
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
        'tags': ['タグ3', 'タグD', 'タグE'],
      },
    ];

    return Column(
      children: [
        const SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: SectionTitle.large(
            label: '人気のプラン',
            onPressed: () {},
          ),
        ),
        const SizedBox(height: 8),
        CarouselSlider(
          options: CarouselOptions(
            enlargeCenterPage: true,
            aspectRatio: 16 / 12,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 6),
            onPageChanged: (index, reason) {
              currentIndex.value = index; // 現在のインデックスを更新
            },
          ),
          items: imgList.map(buildCarouselItem).toList(),
        ),
        const SizedBox(height: 12),
        Wrap(
          spacing: 6,
          children: imgList.asMap().entries.map((entry) {
            return Container(
              width: 8,
              height: 8,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: currentIndex.value == entry.key
                    ? AppColor.black
                    : AppColor.grey400,
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
            child: CachedNetworkImage(
              imageUrl: url,
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
    return Container(
      padding: const EdgeInsets.all(16),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: AppColor.blue50Background,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: AppTextStyle.textStyle.copyWith(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          // 複数のタグを表示する部分
          CategoryTags(
            tags: tags,
            tagColor: AppColor.white,
          ),
        ],
      ),
    );
  }
}
