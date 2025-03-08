import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import '../../../../i18n/strings.g.dart';
import '../../gen/assets.gen.dart';
import '../../utils/analytics_event.dart';
import '../../utils/custom_logger.dart';
import '../../utils/extensions/context.dart';
import '../../utils/providers/analytics/analytics.dart';
import '../../utils/styles/app_color.dart';

class ErrorView extends HookConsumerWidget {
  /// このUIを使用する際は、必ずルートの画面なのかどうかを指定してください。
  /// why: ルートの画面の場合、戻るボタンを表示する必要がないため。
  /// ```dart
  /// ErrorView(
  ///  error: error,
  /// stackTrace: stackTrace,
  /// onRetry: () => ref.invalidate(~~~NotifierProvider),
  /// isRootPage: true,
  /// )
  /// ```
  const ErrorView({
    super.key,
    required this.error,
    required this.stackTrace,
    required this.onRetry,
    this.isRootPage = false,
  });

  final Object error;
  final StackTrace stackTrace;
  final VoidCallback onRetry;
  final bool isRootPage;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final i18n = Translations.of(context);

    useEffect(
      () {
        logger
          ..e('ErrorView: $error')
          ..e('ErrorView: $stackTrace');

        Future.delayed(Duration.zero, () async {
          await ref.read(analyticsNotifierProvider.notifier).logScreenView(
                ScreenViewEvent.errorView,
              );
          await ref.read(analyticsNotifierProvider.notifier).logEvent(
            UserActionEvent.customError,
            parameters: {
              'error': error.toString(),
              'stackTrace': stackTrace.toString(),
            },
          );
        });

        return null;
      },
      [],
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.white,
        forceMaterialTransparency: true,
        elevation: 0,
        leading: isRootPage
            ? null
            : IconButton(
                icon: const Icon(Icons.arrow_back_ios),
                onPressed: () => context.pop(),
              ),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // イラスト
                SvgPicture.asset(
                  Assets.images.errorImage,
                  width: context.deviceWidth * 0.8,
                ),
                const SizedBox(height: 32),

                // メッセージ
                Text(
                  i18n.errorPage.title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: AppColor.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 8),
                Text(
                  i18n.errorPage.message,
                  style: const TextStyle(
                    fontSize: 14,
                    color: AppColor.black,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 32),

                // リトライボタン
                ElevatedButton(
                  onPressed: onRetry,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColor.yellow600Primary,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 100,
                      vertical: 12,
                    ),
                  ),
                  child: Text(
                    i18n.errorPage.retryButton,
                    style: const TextStyle(
                      fontSize: 16,
                      color: AppColor.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
