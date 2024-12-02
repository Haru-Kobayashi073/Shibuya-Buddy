import 'package:flutter/material.dart';

import '../../../utils/styles/app_text_style.dart';

class ListTileWithIcon extends StatelessWidget {
  const ListTileWithIcon({
    super.key,
    required this.title,
    required this.onTap,
  });
  final String title;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      dense: true,
      contentPadding: EdgeInsets.zero,
      leading: Text(
        title,
        style: AppTextStyle.textStyle.copyWith(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      trailing: const Icon(Icons.arrow_forward_ios),
      onTap: onTap,
    );
  }
}
