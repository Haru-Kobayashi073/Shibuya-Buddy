import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../error_page.dart';
import '../../utils/styles/app_text_style.dart';
import '../components/loading_overlay.dart';
import '../components/plan_card.dart';
import 'plans_related_in_topic_page_notifier.dart';

class PlansRelatedInTopicPage extends ConsumerWidget {
  const PlansRelatedInTopicPage({
    super.key,
    required this.topicName,
    required this.planIds,
  });
  final String topicName;
  final List<String> planIds;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(plansRelatedInTopicPageNotifierProvider(planIds));

    return state.when(
      data: (plans) {
        return Scaffold(
          appBar: AppBar(
            title: Text(
              topicName,
              style: AppTextStyle.textStyle.copyWith(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16),
            child: SingleChildScrollView(
              child: Wrap(
                spacing: 8,
                runSpacing: 8,
                children: plans.map((plan) => PlanCard(plan: plan)).toList(),
              ),
            ),
          ),
        );
      },
      error: (_, __) => ErrorPage(
        onRetry: () =>
            ref.invalidate(plansRelatedInTopicPageNotifierProvider(planIds)),
      ),
      loading: Loading.new,
    );
  }
}
