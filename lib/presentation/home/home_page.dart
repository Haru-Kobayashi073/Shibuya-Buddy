import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'components/popular_plans_carousel.dart';
import 'components/popular_topics_section.dart';
import 'components/recent_plans_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
            context: context,
            barrierDismissible: false, 
            builder: (context) {
              return Dialog(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0), 
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
                  child: Column(
                    mainAxisSize: MainAxisSize.min, 
                    crossAxisAlignment: CrossAxisAlignment.start, 
                    children: [
                      const Text(
                        "入力情報を削除しますか？",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                        textAlign: TextAlign.left, 
                      ),
                      const SizedBox(height: 12),

                      const Text(
                        "入力した内容は保存されません。",
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black54,
                        ),
                        textAlign: TextAlign.left, 
                      ),
                      const SizedBox(height: 24),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.end, 
                        children: [
                          SizedBox(
                            height: 36, 
                            child: TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.grey[200], 
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                padding: const EdgeInsets.symmetric(horizontal: 12), 
                              ),
                              onPressed: () => Navigator.pop(context),
                              child: const Text(
                                "いいえ",
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14, 
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 8), 

                          SizedBox(
                            height: 36, 
                            child: TextButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Color(0xFFE00000), 
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                padding: const EdgeInsets.symmetric(horizontal: 12),
                              ),
                              onPressed: () {
                                Navigator.pop(context);

                              },
                              child: const Text(
                                "はい",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14, 
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
        child: Icon(Icons.add),
      ),
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
