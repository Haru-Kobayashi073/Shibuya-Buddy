import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

import '../../i18n/strings.g.dart';
import '../../utils/routes/app_router.dart';
import '../../utils/styles/app_text_style.dart';
import '../components/loading_overlay.dart';
import 'components/list_tile_with_icon.dart';
import 'my_page_notifier.dart';

class MyPage extends ConsumerWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i18n = Translations.of(context);
    final myPageItemi18n = i18n.myPage;
    final state = ref.watch(myPageNotifierProvider);

    return state.when(
      data: (value) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: false,
            title: Row(
              children: [
                ClipOval(
                  child: value.imageUrl != null
                      ? CachedNetworkImage(
                          imageUrl: value.imageUrl!,
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
                Text(
                  value.name ?? myPageItemi18n.unregisteredUserName,
                  style: AppTextStyle.textStyle.copyWith(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Symbols.edit, size: 24),
                ),
              ],
            ),
          ),
          body: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        myPageItemi18n.aboutAIFunction,
                        style: AppTextStyle.textStyle.copyWith(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                      IconButton(
                        constraints: const BoxConstraints(),
                        padding: const EdgeInsets.fromLTRB(8, 8, 0, 8),
                        onPressed: () async {
                          await const AiFunctionsDetailPageRouteData()
                              .push<void>(context);
                        },
                        icon: Row(
                          children: [
                            Text(
                              myPageItemi18n.details,
                              style: AppTextStyle.textStyle.copyWith(
                                fontSize: 14,
                              ),
                            ),
                            const SizedBox(width: 4),
                            const Icon(Icons.arrow_forward_ios),
                          ],
                        ),
                      ),
                    ],
                  ),
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
                          title: myPageItemi18n.account,
                          onTap: () async =>
                              const AccountPageRouteData().push<void>(context),
                        ),
                        ListTileWithIcon(
                          title: myPageItemi18n.language,
                          onTap: () async => const ChangeLanguagePageRouteData()
                              .push<void>(context),
                        ),
                        ListTileWithIcon(
                          title: myPageItemi18n.theme,
                          onTap: () async => const ChangeThemePageRouteData()
                              .push<void>(context),
                        ),
                        ListTileWithIcon(
                          title: myPageItemi18n.termsOfUsePrivacyPolicy,
                          onTap: () async =>
                              const TermsofUsePrivacyPolicyPageRouteData()
                                  .push<void>(context),
                        ),
                        ListTileWithIcon(
                          title: myPageItemi18n.aboutThisApp,
                          onTap: () async =>
                              const AboutAppPageRouteData().push<void>(context),
                        ),
                        ListTileWithIcon(
                          title: myPageItemi18n.aboutTheDeveloper,
                          onTap: () async =>
                              const AboutDevPageRouteData().push<void>(context),
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
      error: (_, __) => const SizedBox.shrink(),
      loading: Loading.new,
    );
  }
}
