import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../i18n/strings.g.dart';
import '../../../utils/styles/app_color.dart';
import '../../../utils/styles/app_text_style.dart';

class AccountStatus extends StatefulWidget {
  const AccountStatus({
    super.key,
    required this.isPremium,
    required this.userName,
    required this.createdAt,
    this.effectiveDate,
    required this.imageUrl,
  });

  final bool isPremium;
  final String? userName;
  final DateTime createdAt;
  final DateTime? effectiveDate;
  final String? imageUrl;

  @override
  State<AccountStatus> createState() => _AccountStatusState();
}

class _AccountStatusState extends State<AccountStatus> {
  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    final screenWidth = mediaQueryData.size.width;
    final i18n = Translations.of(context);
    final myPageItemi18n = i18n.myPage;
    final acountStatusi18n = myPageItemi18n.accountStatus;

    final createdAt = widget.createdAt;
    final effectiveDate = widget.effectiveDate;
    final createFormat = effectiveDate != null
        ? DateFormat(myPageItemi18n.accountStatus.dateTime.registeredOnFormat)
            .format(effectiveDate)
        : '';
    final effectiveFormat =
        DateFormat(myPageItemi18n.accountStatus.dateTime.validUntilFormat)
            .format(createdAt);
    return Container(
      width: screenWidth,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset.centerLeft,
          end: FractionalOffset.centerRight,
          colors: [
            if (widget.isPremium)
              AppColor.yellow200
            else
              AppColor.blue50Background,
            if (widget.isPremium)
              AppColor.yellow600Primary
            else
              AppColor.blue200,
          ],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                ClipOval(
                  child: widget.imageUrl != null
                      ? CachedNetworkImage(
                          imageUrl: widget.imageUrl!,
                          fit: BoxFit.cover,
                          width: 48,
                          height: 48,
                        )
                      : const Icon(
                          Icons.account_circle,
                          size: 48,
                        ),
                ),
                const SizedBox(width: 8),
                Padding(
                  padding: const EdgeInsets.only(bottom: 3),
                  child: Text(
                    widget.userName ?? myPageItemi18n.unregisteredUserName,
                    style: AppTextStyle.textStyle.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Spacer(),
                Text(
                  '''
                  $createFormat${acountStatusi18n.dateTime.registeredOn}
                  ''',
                  style: AppTextStyle.textStyle.copyWith(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            Row(
              children: [
                Text(
                  widget.isPremium
                      ? acountStatusi18n.premium
                      : acountStatusi18n.standard,
                  style: AppTextStyle.textStyle.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const Spacer(),
                if (widget.effectiveDate != null)
                  Text(
                    '$effectiveFormat${acountStatusi18n.dateTime.registeredOn}',
                    style: AppTextStyle.textStyle.copyWith(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
