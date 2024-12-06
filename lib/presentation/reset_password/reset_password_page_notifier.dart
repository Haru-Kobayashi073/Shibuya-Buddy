import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../i18n/strings.g.dart';
import '../../infrastructure/authentication/authentication_data_source.dart';
import '../../utils/extensions/firebase_auth_exception.dart';
import '../../utils/providers/scaffold_messenger/scaffold_messenger.dart';
import '../../utils/routes/app_router.dart';

part 'reset_password_page_notifier.g.dart';

@riverpod
class ResetPasswordPageNotifier extends _$ResetPasswordPageNotifier {
  AuthenticationDataSource get authenticationDataSource =>
      ref.read(authenticationDataSourceProvider.notifier);
  ScaffoldMessenger get scaffoldMessenger =>
      ref.read(scaffoldMessengerProvider.notifier);

  @override
  void build() {
    return;
  }

  Future<void> sendPasswordResetEmail({
    required String email,
    required Future<void> Function() onSuccess,
  }) async {
    final i18nCompleteSendEmailPage =
        Translations.of(rootNavigatorKey.currentContext!)
            .authentication
            .completeSendEmailPage;
    try {
      await authenticationDataSource.sendPasswordResetEmail(email);
      await onSuccess();
      scaffoldMessenger.showSuccessSnackBar(
        i18nCompleteSendEmailPage.successResendEmail,
      );
    } on FirebaseAuthException catch (e) {
      final exceptionMessage = e.toLocalizedMessage;
      scaffoldMessenger.showExceptionSnackBar(exceptionMessage);
    }
  }
}
