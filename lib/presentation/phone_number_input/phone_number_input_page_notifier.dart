import 'dart:async';

import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../infrastructure/authentication/authentication_data_source.dart';
import '../../utils/providers/scaffold_messenger/scaffold_messenger.dart';

part 'phone_number_input_page_notifier.g.dart';

@riverpod
class PhoneNumberInputPageNotifier extends _$PhoneNumberInputPageNotifier {
  AuthenticationDataSource get authenticationDataSource =>
      ref.read(authenticationDataSourceProvider.notifier);

  ScaffoldMessenger get scaffoldMessenger =>
      ref.read(scaffoldMessengerProvider.notifier);

  @override
  void build() {}

  Future<String> sendSmsCode(String phoneNumber) async {
    final completer = Completer<String>();

    try {
      await authenticationDataSource.sendSmsCode(
        phoneNumber: phoneNumber,
        onCodeSent: (id) {
          completer.complete(id);
          scaffoldMessenger.showSuccessSnackBar('SMSコードが送信されました！');
        },
        onError: (error) {
          scaffoldMessenger.showExceptionSnackBar(
            'SMSコードの送信に失敗しました: ${error.message}',
          );
          completer.completeError(error);
        },
      );

      return completer.future;
    } catch (error) {
      scaffoldMessenger.showExceptionSnackBar('予期しないエラーが発生しました: $error');
      rethrow;
    }
  }
}
