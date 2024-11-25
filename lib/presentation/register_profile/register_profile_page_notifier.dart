import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:uuid/uuid.dart';

import '../../domain/entities/user.dart';
import '../../infrastructure/user/user_data_source.dart';
import '../components/loading_overlay.dart';

part 'register_profile_page_notifier.g.dart';

@riverpod
class RegisterProfilePageNotifier extends _$RegisterProfilePageNotifier {
  UserDataSource get userDataSource =>
      ref.read(userDataSourceProvider.notifier);

  @override
  User build() {
    return User(
      uid: const Uuid().v4(),
      createdAt: DateTime.now(),
    );
  }

  Future<void> registerInformation({
    required String name,
    required void Function() onSuccess,
  }) async {
    ref.read(isShowLoadingOverlayProvider.notifier).state = true;
    state = state.copyWith(name: name);
    try {
      await userDataSource.createUser(user: state);
      onSuccess();
    } on Exception catch (e) {
      debugPrint(e.toString());
    } finally {
      ref.read(isShowLoadingOverlayProvider.notifier).state = false;
    }
  }

  Future<void> onPressedSkipButton({
    required void Function() onSuccess,
  }) async {
    ref.read(isShowLoadingOverlayProvider.notifier).state = true;
    try {
      await userDataSource.createUser(user: state);
      onSuccess();
    } on Exception catch (e) {
      debugPrint(e.toString());
    } finally {
      ref.read(isShowLoadingOverlayProvider.notifier).state = false;
    }
  }
}
