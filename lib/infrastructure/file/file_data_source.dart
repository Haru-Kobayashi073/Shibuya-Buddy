import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

import '../../domain/repositories/file_repository.dart';
import '../firebase/current_user.dart';
import '../firebase/firebase_storage_provider.dart';

part 'file_data_source.g.dart';

@riverpod
class FileDataSource extends _$FileDataSource implements FileRepository {
  FirebaseStorage get _storage => ref.read(firebaseStorageProvider);
  ImagePicker get _imagePicker => ImagePicker();
  User get currentUser => ref.read(currentUserProvider);

  @override
  void build() {
    return;
  }

  @override
  Future<File?> pickImage() async {
    final image = await _imagePicker.pickImage(source: ImageSource.gallery);
    if (image == null) {
      return null;
    }
    return File(image.path);
  }

  @override
  Future<String> getUploadedImageUrl({required File file}) async {
    final uid = currentUser.uid;

    final fileName = '${const Uuid().v4()}.jpg';
    final storageRef = _storage
        .ref()
        .child('users')
        .child(uid)
        .child('profile_image')
        .child(fileName);
    await storageRef.putFile(file);
    final imageUrl = await storageRef.getDownloadURL();
    return imageUrl;
  }
}
