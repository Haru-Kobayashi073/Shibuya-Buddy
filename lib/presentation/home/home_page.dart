import 'package:flutter/material.dart';

import 'components/complicated_image_carousel.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: ComplicatedImageCarousel(),
      ),
    );
  }
}
