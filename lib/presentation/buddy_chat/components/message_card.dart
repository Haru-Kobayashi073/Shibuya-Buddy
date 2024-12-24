import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../domain/entities/chat_message.dart';
import '../../../domain/entities/plan.dart';
import '../../../utils/styles/app_color.dart';
import '../../../utils/styles/app_text_style.dart';
import '../../components/place_card.dart';
import '../../home/components/category_tags.dart';

class MessageCard extends StatelessWidget {
  const MessageCard({
    super.key,
    required this.chatMessage,
  });
  final ChatMessage chatMessage;

  @override
  Widget build(BuildContext context) {
    final isBuddy = chatMessage.author == ChatAuthor.buddy;

    return Container(
      margin: isBuddy
          ? const EdgeInsets.only(right: 64, bottom: 16)
          : const EdgeInsets.only(left: 64, bottom: 16),
      alignment: isBuddy ? Alignment.centerLeft : Alignment.centerRight,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: isBuddy ? AppColor.blue200 : AppColor.yellow200,
              borderRadius: isBuddy
                  ? const BorderRadius.only(
                      topRight: Radius.circular(16),
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    )
                  : const BorderRadius.only(
                      topLeft: Radius.circular(16),
                      bottomLeft: Radius.circular(16),
                      bottomRight: Radius.circular(16),
                    ),
            ),
            child: Text(
              chatMessage.message,
              style: AppTextStyle.textStyle.copyWith(
                fontSize: 16,
                color: AppColor.black,
              ),
            ),
          ),
          if (chatMessage.plan != null)
            Column(
              children: [
                const SizedBox(height: 8),
                _PlanCard(plan: chatMessage.plan!),
                const SizedBox(height: 8),
                Column(
                  children: List.generate(
                    chatMessage.places!.length,
                    (index) => PlaceCard(
                      place: chatMessage.places![index],
                      index: index,
                    ),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}

class _PlanCard extends StatelessWidget {
  const _PlanCard({required this.plan});
  final Plan plan;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(12),
            topRight: Radius.circular(12),
          ),
          child: CachedNetworkImage(
            imageUrl: plan.thumbnailUrl,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
        ),
        Container(
          padding: const EdgeInsets.all(16),
          width: double.infinity,
          decoration: const BoxDecoration(
            color: AppColor.blue50Background,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                plan.title,
                style: AppTextStyle.textStyle.copyWith(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              // 複数のタグを表示する部分
              CategoryTags(
                tags: plan.topicIds,
                spacing: 8,
                tagColor: AppColor.white,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
