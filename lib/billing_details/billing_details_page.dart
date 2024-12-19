import 'package:flutter/material.dart';

import '../utils/styles/app_text_style.dart';

class BillingDetailsPage extends StatelessWidget {
  const BillingDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '課金詳細ページ',
          style: AppTextStyle.textStyle.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
