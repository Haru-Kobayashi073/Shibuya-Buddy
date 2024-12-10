import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import '../../domain/entities/user.dart';

part 'register_profile_page_state.freezed.dart';

@freezed
abstract class RegisterProfilePageState with _$RegisterProfilePageState {
  const factory RegisterProfilePageState({
    required User user,
    File? pickedFile,
  }) = _RegisterProfilePageState;
}
