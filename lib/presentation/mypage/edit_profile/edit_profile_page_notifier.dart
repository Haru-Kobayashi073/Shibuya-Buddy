import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../domain/entities/user.dart';
import '../../../i18n/strings.g.dart';
import '../../../infrastructure/file/file_data_source.dart';
import '../../../infrastructure/user/user_data_source.dart';
import '../../../utils/custom_logger.dart';
import '../../../utils/providers/current_user/current_user.dart';
import '../../../utils/providers/scaffold_messenger/scaffold_messenger.dart';
import '../../components/loading_overlay.dart';
import 'edit_profile_page_state.dart';

part 'edit_profile_page_notifier.g.dart';

@riverpod
class EditProfilePageNotifier extends _$EditProfilePageNotifier {
  UserDataSource get userDataSource =>
      ref.read(userDataSourceProvider.notifier);
  FileDataSource get fileDataSource =>
      ref.read(fileDataSourceProvider.notifier);
  ScaffoldMessenger get scaffoldMessenger =>
      ref.read(scaffoldMessengerProvider.notifier);

  @override
  Future<EditProfilePageState> build(User user) async {
    if (user.imageUrl == null) {
      return const EditProfilePageState(imageFile: null);
    }
    final convertedFile =
        await fileDataSource.convertUrlToFile(url: user.imageUrl!);
    return EditProfilePageState(imageFile: convertedFile);
  }

  Future<void> editProfile({
    required String? name,
    required void Function() onSuccess,
  }) async {
    try {
      ref.read(isShowLoadingOverlayProvider.notifier).state = true;

      final needsNameChange = name != null && name.isNotEmpty;
      final needsImageChange = state.requireValue.imageFile != null &&
          state.requireValue.imageChanged;

      if (!needsNameChange && !needsImageChange) {
        scaffoldMessenger
            .showExceptionSnackBar(t.editProfilePage.snackBar.error.noChange);
        return;
      } else {
        final imageUri = await _getUploadedImageUri();
        await userDataSource.editUser(
          user: user.copyWith(
            name: needsNameChange ? name : user.name,
            imageUrl: imageUri,
          ),
        );
        ref.invalidate(currentUserProvider);
        scaffoldMessenger
            .showSuccessSnackBar(t.editProfilePage.snackBar.success);

        onSuccess();
      }
    } on Exception catch (_) {
      scaffoldMessenger.showExceptionSnackBar(
        t.editProfilePage.snackBar.error.failedToUpdate,
      );
    } finally {
      ref.read(isShowLoadingOverlayProvider.notifier).state = false;
    }
  }

  Future<void> pickImage() async {
    ref.read(isShowLoadingOverlayProvider.notifier).state = true;
    try {
      final pickedImageFile = await fileDataSource.pickImage();
      if (pickedImageFile != null) {
        state = AsyncValue.data(
          state.requireValue.copyWith(
            imageFile: pickedImageFile,
            imageChanged: true,
          ),
        );
      }
    } on Exception catch (_) {
      scaffoldMessenger.showExceptionSnackBar(
        t.editProfilePage.snackBar.error.failedToPickImage,
      );
    } finally {
      ref.read(isShowLoadingOverlayProvider.notifier).state = false;
    }
  }

  Future<String?> _getUploadedImageUri() async {
    if (state.requireValue.imageFile == null) {
      /// 元から画像を設定していない場合または、元から画像を設定しておらず画像を設定していない場合はnullを返す
      return null;
    } else if (!state.requireValue.imageChanged) {
      /// 元から画像を設定している場合かつ、画像を変更していない場合は元の画像URLを返す
      return user.imageUrl;
    }

    try {
      final url = await fileDataSource.getUploadedImageUrl(
        file: state.requireValue.imageFile!,
      );
      return url;
    } on Exception catch (e) {
      logger.e('getUploadedImageUri: $e');
    }

    return null;
  }
}
