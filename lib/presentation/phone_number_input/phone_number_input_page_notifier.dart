import 'dart:async';

import 'package:flutter/material.dart' hide ScaffoldMessenger;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../i18n/strings.g.dart';
import '../../infrastructure/authentication/authentication_data_source.dart';
import '../../utils/providers/scaffold_messenger/scaffold_messenger.dart';
import '../../utils/routes/app_router.dart';
import '../components/loading_overlay.dart';

part 'phone_number_input_page_notifier.g.dart';

@riverpod
class PhoneNumberInputPageNotifier extends _$PhoneNumberInputPageNotifier {
  AuthenticationDataSource get authenticationDataSource =>
      ref.read(authenticationDataSourceProvider.notifier);
  ScaffoldMessenger get scaffoldMessenger =>
      ref.read(scaffoldMessengerProvider.notifier);

  @override
  void build() {}

  Future<void> sendSmsCode(BuildContext context, String phoneNumber) async {
    final i18n = Translations.of(context);
    final i18nPhoneNumberInputPage = i18n.authentication.phoneNumberInputPage;
    if (phoneNumber.isEmpty) {
      // 電話番号が空の場合
      scaffoldMessenger.showExceptionSnackBar(
        i18nPhoneNumberInputPage.scaffoldMessenger.empty,
      );
      return;
    }
    ref.read(isShowLoadingOverlayProvider.notifier).state = true;
    try {
      await authenticationDataSource.sendSmsCode(
        phoneNumber: phoneNumber,
        onCodeSent: (verificationId) async {
          // SMSコードの送信に成功した場合
          scaffoldMessenger.showSuccessSnackBar(
            i18nPhoneNumberInputPage.scaffoldMessenger.success,
          );

          // 次の画面に遷移
          await SMSVerificationPageRouteData(
            phoneNumber: phoneNumber,
            verificationId: verificationId,
          ).push<void>(context);
        },
        onError: (error) {
          // 電話番号が間違っている場合やサーバーエラーの場合
          scaffoldMessenger.showExceptionSnackBar(
            i18nPhoneNumberInputPage.scaffoldMessenger.error,
          );
        },
      );
    } on Exception catch (error) {
      // その他の例外エラー
      scaffoldMessenger.showExceptionSnackBar(
        '${i18nPhoneNumberInputPage.scaffoldMessenger.unexpectedError} $error',
      );
    } finally {
      ref.read(isShowLoadingOverlayProvider.notifier).state = false;
    }
  }
}
