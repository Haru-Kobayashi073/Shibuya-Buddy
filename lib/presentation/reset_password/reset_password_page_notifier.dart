import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../infrastructure/authentication/authentication_data_source.dart';
import '../../utils/extensions/firebase_auth_exception.dart';
import '../../utils/providers/scaffold_messenger/scaffold_messenger.dart';

part 'reset_password_page_notifier.g.dart';

@riverpod
class ResetPasswordPageNotifier extends _$ResetPasswordPageNotifier {
  AuthenticationDataSource get authenticationDataSource =>
      ref.read(authenticationDataSourceProvider.notifier);

  @override
  void build() {
    return;
  }

  Future<void> sendPasswordResetEmail({
    required String email,
    required Future<void> Function() onSuccess,
  }) async {
    try {
      await authenticationDataSource.sendPasswordResetEmail(email);
      await onSuccess();
    } on FirebaseAuthException catch (e) {
      final exceptionMessage = e.toLocalizedMessage;
      ref
          .read(scaffoldMessengerProvider.notifier)
          .showExceptionSnackBar(exceptionMessage);
    }
  }
}
