import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_loading_state.freezed.dart';

@freezed
class CreateloadingPageState with _$CreateloadingPageState {
  const factory CreateloadingPageState({
    @Default('Loading') String loadingText,
    @Default(0) int loadingIndicator,
  }) = _CreateloadingPageState;
}
