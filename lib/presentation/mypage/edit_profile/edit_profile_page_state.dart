import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_profile_page_state.freezed.dart';

@freezed
abstract class EditProfilePageState with _$EditProfilePageState {
  const factory EditProfilePageState({
    required File? imageFile,
    @Default(false) bool imageChanged,
  }) = _EditProfilePageState;
}
