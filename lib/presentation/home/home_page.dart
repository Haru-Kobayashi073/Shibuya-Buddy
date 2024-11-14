import 'package:flutter/material.dart';

import '../change_language/change_language_page.dart';
import 'components/complicated_image_carousel.dart';
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
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const ComplicatedImageCarousel(),
            const PopularTopics(),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ChangeLanguagePage()),
                );
              },
              child: const Text('遷移(デバッグ)'),
            ),
          ],
        ),
      ),
    );
  }
}
