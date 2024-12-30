import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

import '../../domain/entities/place.dart';
import '../../i18n/strings.g.dart';
import '../../utils/styles/app_color.dart';
import '../../utils/styles/app_text_style.dart';
import '../components/place_card.dart';
import '../components/presistent_cached_network_image.dart';
import '../components/wide_button.dart';
import 'components/circle_icon_button.dart';
import 'components/plan_header.dart';

List<Place> dummyPlans = [
  const Place(
    id: '0',
    name: '宮下パークでショッピング',
    thumbnailUrl:
        'https://www.wirerope.co.jp/products/jakob/wordpress/wp-content/uploads/2022/03/%E5%AE%AE%E4%B8%8B%E5%85%AC%E5%9C%92_%E6%89%8B%E6%91%BA1.jpg',
    title: '''
    今回、Buddyが提案したこのプランは、渋谷駅前にある若者集まる商業施設の”宮下パーク”がメインのプランです！一階には日本食を楽しめる居酒屋が並ぶ
      とともに、他の階では、モダンなファッション店や雑貨屋が並んでいます。最後に、緑感じる屋上でアクティビティや一休みなどパーソナルな時間をお楽しみください。
    ''',
    tags: ['＃ショッピング ', '＃アクティビティ', '＃グルメ', '時間: 1時間〜'],
  ),
  Place(
    id: '1',
    name: 'TitleTitleTitleTitleTitleTitleTitleTitle',
    title: '世界的に有名な交差点。世界的に有名な交差点世界的に有名な交差点世界的に有名な交差点世界的に有名な交差点世界的に有名な交差点',
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

  PlanHeader planinfo(List<Place> plans) {
    final planInfo = plans[0];
    return PlanHeader(
      title: planInfo.name,
      description: planInfo.title,
      tags: planInfo.tags ?? [],
    );
  }

  String planinfoImage(List<Place> plans) {
    final planInfo = plans[0];
    return planInfo.thumbnailUrl;
  }

  List<Widget> placetrans(List<Place> plans) {
    plans.removeAt(0);
    final widgets = <Widget>[];
    var i = 0;
    for (final plan in plans) {
      widgets.add(
        PlaceCard(
          place: plan,
          index: i,
          endindex: dummyPlans.length - 1,
        ),
      );
      i++;
    }
    return widgets;
  }

  @override
  Widget build(BuildContext context) {
    final i18n = Translations.of(context);
    final planDetailPagei18n = i18n.planDetailsPage;

    final outputFormat = DateFormat(planDetailPagei18n.dateTime.dateFormat)
        .format(DateTime.now());
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            top: false,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 1),
              child: CustomScrollView(
                slivers: [
                  SliverAppBar(
                    automaticallyImplyLeading: false,
                    systemOverlayStyle: const SystemUiOverlayStyle(
                      statusBarBrightness: Brightness.light,
                    ),
                    expandedHeight: 250,
                    flexibleSpace: FlexibleSpaceBar(
                      background: PersistentCachedNetworkImage(
                        imageUrl: planinfoImage(dummyPlans),
                      ),
                    ),
                  ),
                  SliverToBoxAdapter(
                    child: planinfo(dummyPlans),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.all(16),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              planDetailPagei18n.dateTime
                                  .createOn(date: outputFormat),
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
                            icon: const Icon(Icons.pin_drop_outlined),
                            label: planDetailPagei18n.item.viewOnMap,
                            color: AppColor.grey200,
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
                  ),
                ],
              ),
            ),
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
