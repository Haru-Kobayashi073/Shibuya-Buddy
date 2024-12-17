import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'account_page_state.freezed.dart';

@freezed
class AccountPageState with _$AccountPageState {
  const factory AccountPageState({
    @Default(false) bool isGoogleSignedIn,
  }) = _AccountPageState;
}

class AccountPageStateNotifier extends StateNotifier<AccountPageState> {
  AccountPageStateNotifier() : super(const AccountPageState());

  // デバッグ用
  void toggleGoogleSignIn() {
    state = state.copyWith(isGoogleSignedIn: !state.isGoogleSignedIn);
  }

  void setGoogleSignedInTrue() {
    state = state.copyWith(isGoogleSignedIn: true);
  }

  void setGoogleSignedInFalse() {
    state = state.copyWith(isGoogleSignedIn: false);
  }
}

final accountPageStateProvider =
    StateNotifierProvider<AccountPageStateNotifier, AccountPageState>(
  (ref) => AccountPageStateNotifier(),
);
