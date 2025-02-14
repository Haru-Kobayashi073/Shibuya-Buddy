import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_loading_state.freezed.dart';

@freezed
class CreateLoadingViewState with _$CreateLoadingViewState {
  const factory CreateLoadingViewState({
    @Default('Loading') String loadingText,
    @Default(0) int loadingIndicator,
  }) = _CreateLoadingViewState;
}
