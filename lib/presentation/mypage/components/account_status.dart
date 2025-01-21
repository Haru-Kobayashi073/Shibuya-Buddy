import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../domain/entities/user.dart';
import '../../../i18n/strings.g.dart';
import '../../../utils/styles/app_color.dart';
import '../../../utils/styles/app_text_style.dart';
import '../../components/presistent_cached_network_image.dart';

class AccountStatus extends StatelessWidget {
  const AccountStatus({
    super.key,
    required this.user,
  });
  final User user;

  @override
  Widget build(BuildContext context) {
    final mediaQueryData = MediaQuery.of(context);
    final screenWidth = mediaQueryData.size.width;
    final i18n = Translations.of(context);
    final myPageItemi18n = i18n.myPage;
    final acountStatusi18n = myPageItemi18n.accountStatus;

    final createFormat =
        DateFormat(acountStatusi18n.dateTime.registeredOnFormat)
            .format(user.createdAt);
    final effectiveFormat = user.premiumPlanExpirationDate != null
        ? DateFormat(acountStatusi18n.dateTime.validUntilFormat)
            .format(user.premiumPlanExpirationDate!.toLocal())
        : null;

    return Container(
      width: screenWidth,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset.centerLeft,
          end: FractionalOffset.centerRight,
          colors: isPremiumGrade(user.billingGrade)
              ? [AppColor.yellow200, AppColor.yellow600Primary]
              : [AppColor.blue50Background, AppColor.blue200],
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
                  child: user.imageUrl != null
                      ? PersistentCachedNetworkImage(
                          imageUrl: user.imageUrl!,
                          width: 48,
                          height: 48,
                        )
                      : const Icon(
                          Icons.account_circle,
                          size: 48,
                        ),
                ),
                const SizedBox(width: 8),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 3),
                    child: Text(
                      user.name ?? myPageItemi18n.unregisteredUserName,
                      style: AppTextStyle.textStyle.copyWith(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      softWrap: false,
                    ),
                  ),
                ),
                const SizedBox(width: 8),
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
                  isPremiumGrade(user.billingGrade)
                      ? acountStatusi18n.premium
                      : acountStatusi18n.standard,
                  style: AppTextStyle.textStyle.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
                const Spacer(),
                if (isPremiumGrade(user.billingGrade))
                  Offstage(
                    offstage: user.premiumPlanExpirationDate == null,
                    child: Text(
                      acountStatusi18n.dateTime
                          .validUntil(date: effectiveFormat.toString()),
                      style: AppTextStyle.textStyle.copyWith(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  bool isPremiumGrade(BillingGrade billingGrade) {
    if (billingGrade == BillingGrade.standard) {
      return false;
    } else if (billingGrade == BillingGrade.premiumWithUnlimited) {
      return true;
    } else if (billingGrade == BillingGrade.premiumWithPeriod) {
      return true;
    }
    return false;
  }
}
