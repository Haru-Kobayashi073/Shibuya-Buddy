import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:package_info_plus/package_info_plus.dart';

import '../../error_page.dart';
import '../../i18n/strings.g.dart';
import '../../utils/routes/app_router.dart';
import '../../utils/styles/app_text_style.dart';
import '../components/loading_overlay.dart';
import 'components/account_status.dart';
import 'components/list_tile_with_icon.dart';
import 'my_page_notifier.dart';

class MyPage extends ConsumerWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i18n = Translations.of(context);
    final myPageItemi18n = i18n.myPage;
    final state = ref.watch(currentUserStreamProvider);

    return state.when(
      data: (user) {
        return Scaffold(
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AccountStatus(user: user),
                  const SizedBox(height: 30),
                  Text(
                    myPageItemi18n.settings,
                    style: AppTextStyle.textStyle.copyWith(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      physics: const NeverScrollableScrollPhysics(),
                      children: [
                        ListTileWithIcon(
                          title: myPageItemi18n.editProfile,
                          onTap: () async =>
                              EditProfilePageRouteData($extra: user)
                                  .push<void>(context),
                        ),
                        ListTileWithIcon(
                          title: myPageItemi18n.account,
                          onTap: () async =>
                              const AccountPageRouteData().push<void>(context),
                        ),
                        ListTileWithIcon(
                          title: myPageItemi18n.premiumPlan,
                          onTap: () async => const BillDetailsPageRouteData()
                              .push<void>(context),
                        ),
                        ListTileWithIcon(
                          title: myPageItemi18n.language,
                          onTap: () async => const ChangeLanguagePageRouteData()
                              .push<void>(context),
                        ),
                        ListTileWithIcon(
                          title: myPageItemi18n.termsOfUsePrivacyPolicy,
                          onTap: () async {
                            await ref
                                .read(myPageNotifierProvider.notifier)
                                .launchPrivacyPolicy();
                          },
                        ),
                        ListTileWithIcon(
                          title: myPageItemi18n.aboutThisApp,
                          onTap: () async {
                            final packageInfo =
                                await PackageInfo.fromPlatform();
                            if (context.mounted) {
                              unawaited(
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Theme(
                                      data: Theme.of(context).copyWith(
                                        cardColor: Colors.white,
                                      ),
                                      child: LicensePage(
                                        applicationName: packageInfo.appName,
                                        applicationVersion:
                                            '${packageInfo.version}'
                                            '+${packageInfo.buildNumber}',
                                      ),
                                    ),
                                  ),
                                ),
                              );
                            }
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
      error: (_, __) =>
          ErrorPage(onRetry: () => ref.invalidate(currentUserStreamProvider)),
      loading: Loading.new,
    );
  }
}
