// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'phone_number_input_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PhoneNumberInputState {
  String get phoneNumber => throw _privateConstructorUsedError; // 現在入力されている電話番号
  bool get isLoading => throw _privateConstructorUsedError; // API呼び出し中かどうか
  String? get errorMessage => throw _privateConstructorUsedError;

  /// Create a copy of PhoneNumberInputState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PhoneNumberInputStateCopyWith<PhoneNumberInputState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneNumberInputStateCopyWith<$Res> {
  factory $PhoneNumberInputStateCopyWith(PhoneNumberInputState value,
          $Res Function(PhoneNumberInputState) then) =
      _$PhoneNumberInputStateCopyWithImpl<$Res, PhoneNumberInputState>;
  @useResult
  $Res call({String phoneNumber, bool isLoading, String? errorMessage});
}

/// @nodoc
class _$PhoneNumberInputStateCopyWithImpl<$Res,
        $Val extends PhoneNumberInputState>
    implements $PhoneNumberInputStateCopyWith<$Res> {
  _$PhoneNumberInputStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PhoneNumberInputState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_value.copyWith(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhoneNumberInputStateImplCopyWith<$Res>
    implements $PhoneNumberInputStateCopyWith<$Res> {
  factory _$$PhoneNumberInputStateImplCopyWith(
          _$PhoneNumberInputStateImpl value,
          $Res Function(_$PhoneNumberInputStateImpl) then) =
      __$$PhoneNumberInputStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String phoneNumber, bool isLoading, String? errorMessage});
}

/// @nodoc
class __$$PhoneNumberInputStateImplCopyWithImpl<$Res>
    extends _$PhoneNumberInputStateCopyWithImpl<$Res,
        _$PhoneNumberInputStateImpl>
    implements _$$PhoneNumberInputStateImplCopyWith<$Res> {
  __$$PhoneNumberInputStateImplCopyWithImpl(_$PhoneNumberInputStateImpl _value,
      $Res Function(_$PhoneNumberInputStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PhoneNumberInputState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? isLoading = null,
    Object? errorMessage = freezed,
  }) {
    return _then(_$PhoneNumberInputStateImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$PhoneNumberInputStateImpl implements _PhoneNumberInputState {
  const _$PhoneNumberInputStateImpl(
      {this.phoneNumber = '', this.isLoading = false, this.errorMessage});

  @override
  @JsonKey()
  final String phoneNumber;
// 現在入力されている電話番号
  @override
  @JsonKey()
  final bool isLoading;
// API呼び出し中かどうか
  @override
  final String? errorMessage;

  @override
  String toString() {
    return 'PhoneNumberInputState(phoneNumber: $phoneNumber, isLoading: $isLoading, errorMessage: $errorMessage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneNumberInputStateImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, phoneNumber, isLoading, errorMessage);

  /// Create a copy of PhoneNumberInputState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneNumberInputStateImplCopyWith<_$PhoneNumberInputStateImpl>
      get copyWith => __$$PhoneNumberInputStateImplCopyWithImpl<
          _$PhoneNumberInputStateImpl>(this, _$identity);
}

abstract class _PhoneNumberInputState implements PhoneNumberInputState {
  const factory _PhoneNumberInputState(
      {final String phoneNumber,
      final bool isLoading,
      final String? errorMessage}) = _$PhoneNumberInputStateImpl;

  @override
  String get phoneNumber; // 現在入力されている電話番号
  @override
  bool get isLoading; // API呼び出し中かどうか
  @override
  String? get errorMessage;

  /// Create a copy of PhoneNumberInputState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhoneNumberInputStateImplCopyWith<_$PhoneNumberInputStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
