import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        await showModalBottomSheet<void>(
          context: context,
          builder: (BuildContext context) {
            return Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // 写真変更のロジックをここに追加
                    },
                    child: const Text('写真を変更'),
                  ),
                  const SizedBox(height: 16),
                  const TextField(
                    decoration: InputDecoration(labelText: '名前を変更'),
                  ),
                ],
              ),
            );
          },
        );
      },
      child: const Text('プロフィールを編集'),
    );
  }
}
