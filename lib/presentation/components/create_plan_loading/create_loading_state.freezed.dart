// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_loading_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateLoadingViewState {
  String get loadingText => throw _privateConstructorUsedError;
  int get loadingIndicator => throw _privateConstructorUsedError;

  /// Create a copy of CreateLoadingViewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateLoadingViewStateCopyWith<CreateLoadingViewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateLoadingViewStateCopyWith<$Res> {
  factory $CreateLoadingViewStateCopyWith(CreateLoadingViewState value,
          $Res Function(CreateLoadingViewState) then) =
      _$CreateLoadingViewStateCopyWithImpl<$Res, CreateLoadingViewState>;
  @useResult
  $Res call({String loadingText, int loadingIndicator});
}

/// @nodoc
class _$CreateLoadingViewStateCopyWithImpl<$Res,
        $Val extends CreateLoadingViewState>
    implements $CreateLoadingViewStateCopyWith<$Res> {
  _$CreateLoadingViewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateLoadingViewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadingText = null,
    Object? loadingIndicator = null,
  }) {
    return _then(_value.copyWith(
      loadingText: null == loadingText
          ? _value.loadingText
          : loadingText // ignore: cast_nullable_to_non_nullable
              as String,
      loadingIndicator: null == loadingIndicator
          ? _value.loadingIndicator
          : loadingIndicator // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateLoadingViewStateImplCopyWith<$Res>
    implements $CreateLoadingViewStateCopyWith<$Res> {
  factory _$$CreateLoadingViewStateImplCopyWith(
          _$CreateLoadingViewStateImpl value,
          $Res Function(_$CreateLoadingViewStateImpl) then) =
      __$$CreateLoadingViewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String loadingText, int loadingIndicator});
}

/// @nodoc
class __$$CreateLoadingViewStateImplCopyWithImpl<$Res>
    extends _$CreateLoadingViewStateCopyWithImpl<$Res,
        _$CreateLoadingViewStateImpl>
    implements _$$CreateLoadingViewStateImplCopyWith<$Res> {
  __$$CreateLoadingViewStateImplCopyWithImpl(
      _$CreateLoadingViewStateImpl _value,
      $Res Function(_$CreateLoadingViewStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateLoadingViewState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadingText = null,
    Object? loadingIndicator = null,
  }) {
    return _then(_$CreateLoadingViewStateImpl(
      loadingText: null == loadingText
          ? _value.loadingText
          : loadingText // ignore: cast_nullable_to_non_nullable
              as String,
      loadingIndicator: null == loadingIndicator
          ? _value.loadingIndicator
          : loadingIndicator // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$CreateLoadingViewStateImpl implements _CreateLoadingViewState {
  const _$CreateLoadingViewStateImpl(
      {this.loadingText = 'Loading', this.loadingIndicator = 0});

  @override
  @JsonKey()
  final String loadingText;
  @override
  @JsonKey()
  final int loadingIndicator;

  @override
  String toString() {
    return 'CreateLoadingViewState(loadingText: $loadingText, loadingIndicator: $loadingIndicator)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateLoadingViewStateImpl &&
            (identical(other.loadingText, loadingText) ||
                other.loadingText == loadingText) &&
            (identical(other.loadingIndicator, loadingIndicator) ||
                other.loadingIndicator == loadingIndicator));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loadingText, loadingIndicator);

  /// Create a copy of CreateLoadingViewState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateLoadingViewStateImplCopyWith<_$CreateLoadingViewStateImpl>
      get copyWith => __$$CreateLoadingViewStateImplCopyWithImpl<
          _$CreateLoadingViewStateImpl>(this, _$identity);
}

abstract class _CreateLoadingViewState implements CreateLoadingViewState {
  const factory _CreateLoadingViewState(
      {final String loadingText,
      final int loadingIndicator}) = _$CreateLoadingViewStateImpl;

  @override
  String get loadingText;
  @override
  int get loadingIndicator;

  /// Create a copy of CreateLoadingViewState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateLoadingViewStateImplCopyWith<_$CreateLoadingViewStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
