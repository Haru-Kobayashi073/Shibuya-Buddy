import 'package:flutter/material.dart';

class Bookmarkplan extends StatefulWidget {
  const Bookmarkplan({super.key});

  @override
  State<Bookmarkplan> createState() => _BookmarkplanState();
}

class _BookmarkplanState extends State<Bookmarkplan> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        Text('bookmarkplan'),
      ],
    );
  }
}
