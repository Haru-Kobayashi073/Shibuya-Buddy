import 'package:flutter/material.dart';

import '../setting/change_language.dart';
import 'popular_topics.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const PopularTopics(),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChangeLanguage()), //gorouterを使う
              );
            },
            child: const Text('遷移'),
          ),
        ],
      ),
    );
  }
}
