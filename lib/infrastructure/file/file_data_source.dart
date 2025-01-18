import 'dart:io';
import 'dart:math';

import 'package:dio/dio.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../domain/entities/user.dart';
import '../../domain/repositories/file_repository.dart';
import '../../utils/providers/current_user/current_user.dart';
import '../../utils/providers/dio/app_dio.dart';
import '../firebase/firebase_storage_provider.dart';

part 'file_data_source.g.dart';

@riverpod
class FileDataSource extends _$FileDataSource implements FileRepository {
  FirebaseStorage get _storage => ref.read(firebaseStorageProvider);
  ImagePicker get _imagePicker => ImagePicker();
  Dio get _apiClient => ref.read(appDioProvider);
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

    final fileName = '${'$uid-avatar-image'}.jpg';
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

  @override
  Future<File> convertUrlToFile({required String url}) async {
    final tempPath = (await getTemporaryDirectory()).path;

    //取得したパスにランダムなファイル名で新しいファイルを作成
    final file = File('$tempPath${Random().nextInt(100)}.jpg');

    //http.getメソッドを呼び出し、それにimageUrlを変換したUriを渡して応答を取得
    final response = await _apiClient.get<List<int>>(
      url,
      options: Options(responseType: ResponseType.bytes),
    );

    //fileへhttp.getで受信したbodyBytesを書き込む
    await file.writeAsBytes(response.data!);

    return file;
  }
}
