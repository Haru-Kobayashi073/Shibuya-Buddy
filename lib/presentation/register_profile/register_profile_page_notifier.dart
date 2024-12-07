import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/user.dart';
import '../../i18n/strings.g.dart';
import '../../infrastructure/file/file_data_source.dart';
import '../../infrastructure/firebase/current_user.dart';
import '../../infrastructure/user/user_data_source.dart';
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
  auth.User get currentUser => ref.read(currentUserProvider);

  String get i18nSnackBarError =>
      Translations.of(rootNavigatorKey.currentContext!)
          .authentication
          .registerProfilePage
          .snackBar
          .error
          .unexpected;

  @override
  RegisterProfilePageState build() {
    return RegisterProfilePageState(
      user: User(
        uid: currentUser.uid,
        createdAt: DateTime.now(),
      ),
    );
  }

  Future<void> registerInformation({
    required String? name,
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
      await userDataSource.createUser(
        user: state.user,
      );
      onSuccess();
    } on Exception catch (e) {
      debugPrint(e.toString());
      ref
          .read(scaffoldMessengerProvider.notifier)
          .showExceptionSnackBar(i18nSnackBarError);
    } finally {
      ref.read(isShowLoadingOverlayProvider.notifier).state = false;
    }
  }

  Future<void> onPressedSkipButton({
    required void Function() onSuccess,
  }) async {
    ref.read(isShowLoadingOverlayProvider.notifier).state = true;
    try {
      await userDataSource.createUser(user: state.user);
      onSuccess();
    } on Exception catch (e) {
      debugPrint(e.toString());
      ref
          .read(scaffoldMessengerProvider.notifier)
          .showExceptionSnackBar(i18nSnackBarError);
    } finally {
      ref.read(isShowLoadingOverlayProvider.notifier).state = false;
    }
  }

  Future<void> pickImage() async {
    try {
      final pickedImageFile = await fileDataSource.pickImage();
      if (pickedImageFile != null) {
        state = state.copyWith(pickedFile: pickedImageFile);
      }
    } on Exception catch (e) {
      debugPrint(e.toString());
      ref
          .read(scaffoldMessengerProvider.notifier)
          .showExceptionSnackBar(i18nSnackBarError);
    }
  }

  Future<Uri?> _getUploadedImageUri() async {
    if (state.pickedFile == null) {
      return null;
    }
    try {
      final url =
          await fileDataSource.getUploadedImageUrl(file: state.pickedFile!);
      return Uri.parse(url);
    } on Exception catch (e) {
      debugPrint(e.toString());
      ref
          .read(scaffoldMessengerProvider.notifier)
          .showExceptionSnackBar(i18nSnackBarError);
    }

    return null;
  }
}
