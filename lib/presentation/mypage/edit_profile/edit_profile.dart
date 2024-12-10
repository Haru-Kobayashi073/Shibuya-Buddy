import 'package:flutter/material.dart';

import '../../../utils/routes/app_router.dart';
import '../../../utils/styles/app_color.dart';
import '../../../utils/styles/app_text_style.dart';

class EditProfile extends StatelessWidget {
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        await _showEditProfileModal(rootNavigatorKey.currentContext!);
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
      backgroundColor: Colors.white,
      builder: (BuildContext context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.8,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.close),
                    ),
                    const Spacer(),
                    Text(
                      '編集',
                      style: AppTextStyle.textStyle.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    const SizedBox(width: 48),
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(0, 170, 0, 16),
                  child: CircleAvatar(
                    radius: 60,
                    backgroundImage: NetworkImage(
                      'https://kotobank.jp/image/dictionary/daijisen/media/104818.jpg',
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.fromLTRB(16,16,16,210),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: 'Name',
                      alignLabelWithHint: true,
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                  child: TextButton(
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(32),
                      ),
                      minimumSize: const Size(double.infinity, 48),
                      backgroundColor: AppColor.yellow600Primary,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('保存'),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
