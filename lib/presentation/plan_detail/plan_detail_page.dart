import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../domain/entities/place.dart';
import '../../utils/styles/app_color.dart';
import '../../utils/styles/app_text_style.dart';
import '../components/place_card.dart';
import '../components/wide_button.dart';
import 'components/circle_icon_button.dart';
import 'components/plan_header.dart';

List<Place> dummyPlans = [
  Place(
    id: '1',
    name: '渋谷スクランブル交差点',
    title: '世界的に有名な交差点。',
    thumbnailUrl:
        'https://www.cnn.co.jp/storage/2019/08/11/fbb9c1766abe6fa21b92a2808505d1e3/shibuya-crossing-tokyo-003.jpg',
    openingHours: (
      openTime: DateTime(2024, 1, 1, 9),
      closeTime: DateTime(2024, 1, 1, 17),
    ),
    avevageAmount: '1200円',
  ),
  Place(
    id: '2',
    name: 'ハチ公像',
    title: '渋谷のシンボル。',
    thumbnailUrl:
        'https://www.azabuderukui.info/wp-content/uploads/2024/01/title-chie-hachiko.jpg',
    openingHours: (
      openTime: DateTime(2024, 1, 1, 9),
      closeTime: DateTime(2024, 1, 1, 17),
    ),
    avevageAmount: '1200円',
  ),
  Place(
    id: '3',
    name: '渋谷ヒカリエ',
    title: '複合商業施設',
    thumbnailUrl:
        'https://town.mec-h.com/mh-omotesando/wp-content/uploads/2018/10/257358_13-01shibuya.jpg',
    openingHours: (
      openTime: DateTime(2024, 1, 1, 9),
      closeTime: DateTime(2024, 1, 1, 17),
    ),
    avevageAmount: '1200円',
  ),
];

class PlanDetailPage extends StatelessWidget {
  const PlanDetailPage({super.key});

  List<Widget> placetrans(List<Place> dummyPlans) {
    final plans = <Widget>[];
    var i = 0;
    for (final plan in dummyPlans) {
      plans.add(PlaceCard(
        place: plan,
        index: i,
        endindex: dummyPlans.length,
      ));
      i++;
    }
    return plans;
  }

  @override
  Widget build(BuildContext context) {
    final outputFormat = DateFormat('yyyy年MM月dd日に作られたプラン');
    return Scaffold(
      body: Stack(
        children: [
          ListView(
            padding: EdgeInsets.zero,
            children: [
              const PlanHeader(
                title: '宮下パークでショッピング',
                description:
                    '今回、Buddyが提案したこのプランは、渋谷駅前にある若者集まる商業施設の”宮下パーク”がメインのプランです！一階には日本食を楽しめる居酒屋が並ぶとともに、他の階では、モダンなファッション店や雑貨屋が並んでいます。最後に、緑感じる屋上でアクティビティや一休みなどパーソナルな時間をお楽しみください。',
                tags: ['＃ショッピング ', '＃アクティビティ', '＃グルメ', '時間: 1時間〜'],
                imageUrl:
                    'https://www.wirerope.co.jp/products/jakob/wordpress/wp-content/uploads/2022/03/%E5%AE%AE%E4%B8%8B%E5%85%AC%E5%9C%92_%E6%89%8B%E6%91%BA1.jpg',
              ),
              Padding(
                padding: const EdgeInsets.only(left: 16, right: 16),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        outputFormat.format(
                          DateTime.now(),
                        ),
                        style: AppTextStyle.textStyle.copyWith(
                          fontSize: 14,
                          color: AppColor.grey600,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    WideButton(
                      label: '地図で見る',
                      color: AppColor.grey200,
                      icon: const Align(
                        alignment: Alignment(10, 10),
                        child: Icon(
                          Icons.pin_drop_outlined,
                          color: AppColor.black,
                        ),
                      ),
                      onPressed: () {},
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Column(
                      children: placetrans(dummyPlans),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    CircleIconButton(
                      icon: Icons.arrow_back_ios_new,
                      iconColor: AppColor.black,
                      onPressed: () {
                        debugPrint('Tap!');
                        Navigator.pop(context);
                      },
                    ),
                    const Spacer(),
                    CircleIconButton(
                      icon: Icons.bookmark,
                      iconColor: AppColor.yellow600Primary,
                      onPressed: () {
                        debugPrint('Tap!');
                      },
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    CircleIconButton(
                      icon: Icons.share,
                      iconColor: AppColor.black,
                      onPressed: () {
                        debugPrint('Tap!');
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
