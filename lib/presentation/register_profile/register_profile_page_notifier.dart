import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/user.dart';
import '../../i18n/strings.g.dart';
import '../../infrastructure/file/file_data_source.dart';
import '../../infrastructure/firebase/firebase_auth_provider.dart';
import '../../infrastructure/user/user_data_source.dart';
import '../../utils/custom_logger.dart';
import '../../utils/providers/scaffold_messenger/scaffold_messenger.dart';
import '../../utils/routes/app_router.dart';
import '../components/loading_overlay.dart';
import 'register_profile_page_state.dart';

part 'register_profile_page_notifier.g.dart';

@riverpod
class RegisterProfilePageNotifier extends _$RegisterProfilePageNotifier {
  UserDataSource get userDataSource =>
      ref.read(userDataSourceProvider.notifier);
  FileDataSource get fileDataSource =>
      ref.read(fileDataSourceProvider.notifier);
  auth.User get currentUser => ref.read(firebaseAuthProvider).currentUser!;
  ScaffoldMessenger get scaffoldMessenger =>
      ref.read(scaffoldMessengerProvider.notifier);

  TranslationsAuthenticationRegisterProfilePageSnackBarErrorEn
      get i18nSnackBarError => Translations.of(rootNavigatorKey.currentContext!)
          .authentication
          .registerProfilePage
          .snackBar
          .error;

  @override
  RegisterProfilePageState build() {
    return RegisterProfilePageState(
      user: User(
        name: currentUser.displayName.toString(),
        uid: currentUser.uid,
        billingGrade: BillingGrade.standard,
        createdAt: DateTime.now(),
      ),
    );
  }

  Future<void> registerInformation({
    required String name,
    required void Function() onSuccess,
  }) async {
    ref.read(isShowLoadingOverlayProvider.notifier).state = true;

    final imageUri = await _getUploadedImageUri();
    state = state.copyWith(
      user: state.user.copyWith(
        name: name,
        imageUrl: imageUri,
      ),
    );
    try {
      await userDataSource.editUser(
        user: state.user,
      );
      await currentUser.updateDisplayName(name);
      onSuccess();
    } on Exception catch (e) {
      logger.error(
        'registerInformation: $e',
        methodName: 'registerInformation',
      );
      scaffoldMessenger.showExceptionSnackBar(i18nSnackBarError.unexpected);
    } finally {
      ref.read(isShowLoadingOverlayProvider.notifier).state = false;
    }
  }

  Future<void> pickImage() async {
    ref.read(isShowLoadingOverlayProvider.notifier).state = true;
    try {
      final pickedImageFile = await fileDataSource.pickImage();
      if (pickedImageFile != null) {
        state = state.copyWith(pickedFile: pickedImageFile);
      }
    } on Exception catch (e) {
      logger.error('pickImage: $e', methodName: 'pickImage');
      scaffoldMessenger.showExceptionSnackBar(i18nSnackBarError.unexpected);
    } finally {
      ref.read(isShowLoadingOverlayProvider.notifier).state = false;
    }
  }

  Future<String?> _getUploadedImageUri() async {
    if (state.pickedFile == null) {
      return null;
    }
    try {
      final url =
          await fileDataSource.getUploadedImageUrl(file: state.pickedFile!);
      return url;
    } on Exception catch (e) {
      logger.error(
        '_getUploadedImageUri: $e',
        methodName: '_getUploadedImageUri',
      );
      scaffoldMessenger.showExceptionSnackBar(i18nSnackBarError.unexpected);
    }

    return null;
  }
}
