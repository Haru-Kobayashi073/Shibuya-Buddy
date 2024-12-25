import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../domain/entities/user.dart';
import '../../../i18n/strings.g.dart';
import '../../../utils/styles/app_color.dart';
import '../../../utils/styles/app_text_style.dart';

class AccountStatus extends StatelessWidget {
  const AccountStatus({
    super.key,
    required this.userName, //アカウント名
    required this.createdAt, //登録日
    required this.billingGrade, //ユーザーステータス
    required this.effectiveDate, //プレミアムユーザーの有効期限
    required this.imageUrl, //ユーザーアイコン
  });

  final String? userName;
  final DateTime createdAt;
  final DateTime? effectiveDate;
  final String? imageUrl;
  final BillingGrade billingGrade;

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    final screenWidth = mediaQueryData.size.width;
    final i18n = Translations.of(context);
    final myPageItemi18n = i18n.myPage;
    final acountStatusi18n = myPageItemi18n.accountStatus;

    final createFormat =
        DateFormat(acountStatusi18n.dateTime.registeredOnFormat)
            .format(createdAt);
    final effectiveFormat = effectiveDate != null
        ? DateFormat(acountStatusi18n.dateTime.validUntilFormat)
            .format(effectiveDate!)
        : '';

    return Container(
      width: screenWidth,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset.centerLeft,
          end: FractionalOffset.centerRight,
          colors: [
            if (status(billingGrade))
              AppColor.yellow200
            else
              AppColor.blue50Background,
            if (status(billingGrade))
              AppColor.yellow600Primary
            else
              AppColor.blue200,
          ],
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              children: [
                ClipOval(
                  child: imageUrl != null
                      ? CachedNetworkImage(
                          imageUrl: imageUrl!,
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
                    userName ?? myPageItemi18n.unregisteredUserName,
                    style: AppTextStyle.textStyle.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Spacer(),
                Text(
                  acountStatusi18n.dateTime.registeredOn(date: createFormat),
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
                  status(billingGrade)
                      ? acountStatusi18n.premium
                      : acountStatusi18n.standard,
                  style: AppTextStyle.textStyle.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const Spacer(),
                if (effectiveDateDisplay(billingGrade))
                  Text(
                    acountStatusi18n.dateTime.validUntil(date: effectiveFormat),
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

  bool status(BillingGrade billingGrade) {
    if (billingGrade == BillingGrade.standard) {
      return false;
    } else if (billingGrade == BillingGrade.premiumWithUnlimited) {
      return true;
    } else if (billingGrade == BillingGrade.premiumWithPeriod) {
      return true;
    }
    return false;
  }

  bool effectiveDateDisplay(BillingGrade billingGrade) {
    if (billingGrade == BillingGrade.premiumWithPeriod) {
      return true;
    } else if (billingGrade == BillingGrade.premiumWithUnlimited) {
      return false;
    } else if (billingGrade == BillingGrade.standard) {
      return false;
    }
    return false;
  }
}
