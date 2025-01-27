import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../i18n/strings.g.dart';
import '../../infrastructure/authentication/authentication_data_source.dart';
import '../../utils/providers/scaffold_messenger/scaffold_messenger.dart';
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

  Future<void> sendSmsCode(
    String phoneNumber,
    void Function(String verificationId) onSuccess,
  ) async {
    final i18n = t.authentication.phoneNumberInputPage.scaffoldMessenger;
    if (phoneNumber.isEmpty) {
      // 電話番号が空の場合
      scaffoldMessenger.showExceptionSnackBar(
        i18n.empty,
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
            i18n.success,
          );
          // 遷移処理をonSuccessで受け取る
          onSuccess.call(verificationId);
        },
        onError: (error) {
          // 電話番号が間違っている場合やサーバーエラーの場合
          scaffoldMessenger.showExceptionSnackBar(
            i18n.error,
          );
        },
      );
    } on Exception catch (error) {
      // その他の例外エラー
      scaffoldMessenger.showExceptionSnackBar(
        '${i18n.unexpectedError} $error',
      );
    } finally {
      ref.read(isShowLoadingOverlayProvider.notifier).state = false;
    }
  }
}
