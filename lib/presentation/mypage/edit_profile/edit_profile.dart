import 'package:flutter/material.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        await _showEditProfileModal(context);
      },
      child: const Text('プロフィールを編集'),
    );
  }

  Future<void> _showEditProfileModal(BuildContext context) async {
    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
      ),
      builder: (BuildContext context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.8,
          child: Scaffold(
            appBar: PreferredSize(
              preferredSize: const Size.fromHeight(56),
              child: ClipRRect(
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(24),
                ),
                child: AppBar(
                  title: const Text('編集'),
                  backgroundColor: Theme.of(context).primaryColor,
                  leading: IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
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
                  const SizedBox(height: 16),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                    onPressed: () {
                      // 保存のロジックをここに追加
                      Navigator.of(context).pop();
                    },
                    child: const Text('保存'),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
