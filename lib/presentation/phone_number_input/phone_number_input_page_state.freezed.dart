// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'phone_number_input_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PhoneNumberInputPageState {
  String get completePhoneNumber =>
      throw _privateConstructorUsedError; // 現在入力されている電話番号
  String get countryCode => throw _privateConstructorUsedError;

  /// Create a copy of PhoneNumberInputPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PhoneNumberInputPageStateCopyWith<PhoneNumberInputPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PhoneNumberInputPageStateCopyWith<$Res> {
  factory $PhoneNumberInputPageStateCopyWith(PhoneNumberInputPageState value,
          $Res Function(PhoneNumberInputPageState) then) =
      _$PhoneNumberInputPageStateCopyWithImpl<$Res, PhoneNumberInputPageState>;
  @useResult
  $Res call({String completePhoneNumber, String countryCode});
}

/// @nodoc
class _$PhoneNumberInputPageStateCopyWithImpl<$Res,
        $Val extends PhoneNumberInputPageState>
    implements $PhoneNumberInputPageStateCopyWith<$Res> {
  _$PhoneNumberInputPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PhoneNumberInputPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? completePhoneNumber = null,
    Object? countryCode = null,
  }) {
    return _then(_value.copyWith(
      completePhoneNumber: null == completePhoneNumber
          ? _value.completePhoneNumber
          : completePhoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PhoneNumberInputPageStateImplCopyWith<$Res>
    implements $PhoneNumberInputPageStateCopyWith<$Res> {
  factory _$$PhoneNumberInputPageStateImplCopyWith(
          _$PhoneNumberInputPageStateImpl value,
          $Res Function(_$PhoneNumberInputPageStateImpl) then) =
      __$$PhoneNumberInputPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String completePhoneNumber, String countryCode});
}

/// @nodoc
class __$$PhoneNumberInputPageStateImplCopyWithImpl<$Res>
    extends _$PhoneNumberInputPageStateCopyWithImpl<$Res,
        _$PhoneNumberInputPageStateImpl>
    implements _$$PhoneNumberInputPageStateImplCopyWith<$Res> {
  __$$PhoneNumberInputPageStateImplCopyWithImpl(
      _$PhoneNumberInputPageStateImpl _value,
      $Res Function(_$PhoneNumberInputPageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PhoneNumberInputPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? completePhoneNumber = null,
    Object? countryCode = null,
  }) {
    return _then(_$PhoneNumberInputPageStateImpl(
      completePhoneNumber: null == completePhoneNumber
          ? _value.completePhoneNumber
          : completePhoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$PhoneNumberInputPageStateImpl implements _PhoneNumberInputPageState {
  const _$PhoneNumberInputPageStateImpl(
      {this.completePhoneNumber = '', this.countryCode = ''});

  @override
  @JsonKey()
  final String completePhoneNumber;
// 現在入力されている電話番号
  @override
  @JsonKey()
  final String countryCode;

  @override
  String toString() {
    return 'PhoneNumberInputPageState(completePhoneNumber: $completePhoneNumber, countryCode: $countryCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PhoneNumberInputPageStateImpl &&
            (identical(other.completePhoneNumber, completePhoneNumber) ||
                other.completePhoneNumber == completePhoneNumber) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, completePhoneNumber, countryCode);

  /// Create a copy of PhoneNumberInputPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PhoneNumberInputPageStateImplCopyWith<_$PhoneNumberInputPageStateImpl>
      get copyWith => __$$PhoneNumberInputPageStateImplCopyWithImpl<
          _$PhoneNumberInputPageStateImpl>(this, _$identity);
}

abstract class _PhoneNumberInputPageState implements PhoneNumberInputPageState {
  const factory _PhoneNumberInputPageState(
      {final String completePhoneNumber,
      final String countryCode}) = _$PhoneNumberInputPageStateImpl;

  @override
  String get completePhoneNumber; // 現在入力されている電話番号
  @override
  String get countryCode;

  /// Create a copy of PhoneNumberInputPageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PhoneNumberInputPageStateImplCopyWith<_$PhoneNumberInputPageStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
