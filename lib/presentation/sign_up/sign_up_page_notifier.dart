import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../infrastructure/authentication/authentication_data_source.dart';
import '../../utils/extensions/firebase_auth_exception.dart';
import '../../utils/providers/scaffold_messenger/scaffold_messenger.dart';
import '../components/loading_overlay.dart';

part 'sign_up_page_notifier.g.dart';

@riverpod
class SignUpPageNotifier extends _$SignUpPageNotifier {
  AuthenticationDataSource get authenticationDataSource =>
      ref.read(authenticationDataSourceProvider.notifier);

  @override
  void build() {
    return;
  }

  Future<void> signUpWithEmailAndPassword({
    required String emailAddress,
    required String password,
    required void Function() onSuccess,
  }) async {
    ref.read(isShowLoadingOverlayProvider.notifier).state = true;
    try {
      await authenticationDataSource.signUpWithEmailAndPassword(
        emailAddress,
        password,
      );
      onSuccess();
    } on FirebaseAuthException catch (e) {
      final exceptionMessage = e.toLocalizedMessage;
      ref
          .read(scaffoldMessengerProvider.notifier)
          .showExceptionSnackBar(exceptionMessage);
    } finally {
      ref.read(isShowLoadingOverlayProvider.notifier).state = false;
    }
  }
}
