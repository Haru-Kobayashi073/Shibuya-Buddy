import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../utils/styles/app_text_style.dart';
import 'components/plan_table.dart';

class BillDetailsPage extends StatelessWidget {
  const BillDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            expandedHeight: 250,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                'https://images.unsplash.com/photo-1588099768550-4014589e03e0?ixlib=rb-1.2.1'
                '&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format'
                '&fit=crop&w=774&q=80',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Text(
                    'プレミアムプラン',
                    style: AppTextStyle.textStyle.copyWith(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Gap(8),
                  Text(
                    'プレミアムプランに加入することで、\n'
                    'より快適に渋谷観光をお楽しみいただけます。',
                    style: AppTextStyle.textStyle.copyWith(
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const Gap(32),
                  Text(
                    '料金プラン',
                    style: AppTextStyle.textStyle.copyWith(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Gap(16),
                  // ===== ここから 料金表のテーブルを追加 =====
                  const PlanTable(),
                  // ===== 料金表ここまで =====
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
