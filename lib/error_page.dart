import 'package:flutter/material.dart';
import '../../i18n/strings.g.dart';
import 'gen/assets.gen.dart';
import 'utils/styles/app_color.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key, required this.onRetry});
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    final i18n = Translations.of(context);

    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // イラスト
                Image.asset(
                  Assets.images.error.path,
                  height: 366,
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
