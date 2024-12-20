import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'components/popular_plans_carousel.dart';
import 'components/popular_topics_section.dart';
import 'components/recent_plans_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(child: PopularPlansCarousel()),
            SliverGap(16),
            SliverToBoxAdapter(child: PopularTopics()),
            SliverToBoxAdapter(child: RecentPlansSection()),
          ],
        ),
      ),
    );
  }
}
