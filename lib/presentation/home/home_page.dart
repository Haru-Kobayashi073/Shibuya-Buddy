import 'package:flutter/material.dart';

import 'components/complicated_image_carousel.dart';
import 'components/recent_plans_section.dart';
import 'popular_topics.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              ComplicatedImageCarousel(),
              PopularTopics(),
              RecentPlansSection(),
            ],
          ),
        ),
      ),
    );
  }
}
