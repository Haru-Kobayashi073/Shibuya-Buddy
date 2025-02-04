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
mixin _$CreateloadingPageState {
  String get loadingText => throw _privateConstructorUsedError;
  int get loadingIndicator => throw _privateConstructorUsedError;

  /// Create a copy of CreateloadingPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CreateloadingPageStateCopyWith<CreateloadingPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateloadingPageStateCopyWith<$Res> {
  factory $CreateloadingPageStateCopyWith(CreateloadingPageState value,
          $Res Function(CreateloadingPageState) then) =
      _$CreateloadingPageStateCopyWithImpl<$Res, CreateloadingPageState>;
  @useResult
  $Res call({String loadingText, int loadingIndicator});
}

/// @nodoc
class _$CreateloadingPageStateCopyWithImpl<$Res,
        $Val extends CreateloadingPageState>
    implements $CreateloadingPageStateCopyWith<$Res> {
  _$CreateloadingPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CreateloadingPageState
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
abstract class _$$CreateloadingPageStateImplCopyWith<$Res>
    implements $CreateloadingPageStateCopyWith<$Res> {
  factory _$$CreateloadingPageStateImplCopyWith(
          _$CreateloadingPageStateImpl value,
          $Res Function(_$CreateloadingPageStateImpl) then) =
      __$$CreateloadingPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String loadingText, int loadingIndicator});
}

/// @nodoc
class __$$CreateloadingPageStateImplCopyWithImpl<$Res>
    extends _$CreateloadingPageStateCopyWithImpl<$Res,
        _$CreateloadingPageStateImpl>
    implements _$$CreateloadingPageStateImplCopyWith<$Res> {
  __$$CreateloadingPageStateImplCopyWithImpl(
      _$CreateloadingPageStateImpl _value,
      $Res Function(_$CreateloadingPageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of CreateloadingPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? loadingText = null,
    Object? loadingIndicator = null,
  }) {
    return _then(_$CreateloadingPageStateImpl(
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

class _$CreateloadingPageStateImpl implements _CreateloadingPageState {
  const _$CreateloadingPageStateImpl(
      {this.loadingText = 'Loading', this.loadingIndicator = 0});

  @override
  @JsonKey()
  final String loadingText;
  @override
  @JsonKey()
  final int loadingIndicator;

  @override
  String toString() {
    return 'CreateloadingPageState(loadingText: $loadingText, loadingIndicator: $loadingIndicator)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateloadingPageStateImpl &&
            (identical(other.loadingText, loadingText) ||
                other.loadingText == loadingText) &&
            (identical(other.loadingIndicator, loadingIndicator) ||
                other.loadingIndicator == loadingIndicator));
  }

  @override
  int get hashCode => Object.hash(runtimeType, loadingText, loadingIndicator);

  /// Create a copy of CreateloadingPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateloadingPageStateImplCopyWith<_$CreateloadingPageStateImpl>
      get copyWith => __$$CreateloadingPageStateImplCopyWithImpl<
          _$CreateloadingPageStateImpl>(this, _$identity);
}

abstract class _CreateloadingPageState implements CreateloadingPageState {
  const factory _CreateloadingPageState(
      {final String loadingText,
      final int loadingIndicator}) = _$CreateloadingPageStateImpl;

  @override
  String get loadingText;
  @override
  int get loadingIndicator;

  /// Create a copy of CreateloadingPageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CreateloadingPageStateImplCopyWith<_$CreateloadingPageStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
