import 'dart:io';

abstract interface class FileRepository {
  Future<File?> pickImage();
  Future<String> getUploadedImageUrl({required File file});
}
