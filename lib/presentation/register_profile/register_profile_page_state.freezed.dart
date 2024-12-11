// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_profile_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterProfilePageState {
  User get user => throw _privateConstructorUsedError;
  File? get pickedFile => throw _privateConstructorUsedError;

  /// Create a copy of RegisterProfilePageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterProfilePageStateCopyWith<RegisterProfilePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterProfilePageStateCopyWith<$Res> {
  factory $RegisterProfilePageStateCopyWith(RegisterProfilePageState value,
          $Res Function(RegisterProfilePageState) then) =
      _$RegisterProfilePageStateCopyWithImpl<$Res, RegisterProfilePageState>;
  @useResult
  $Res call({User user, File? pickedFile});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class _$RegisterProfilePageStateCopyWithImpl<$Res,
        $Val extends RegisterProfilePageState>
    implements $RegisterProfilePageStateCopyWith<$Res> {
  _$RegisterProfilePageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterProfilePageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? pickedFile = freezed,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      pickedFile: freezed == pickedFile
          ? _value.pickedFile
          : pickedFile // ignore: cast_nullable_to_non_nullable
              as File?,
    ) as $Val);
  }

  /// Create a copy of RegisterProfilePageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RegisterProfilePageStateImplCopyWith<$Res>
    implements $RegisterProfilePageStateCopyWith<$Res> {
  factory _$$RegisterProfilePageStateImplCopyWith(
          _$RegisterProfilePageStateImpl value,
          $Res Function(_$RegisterProfilePageStateImpl) then) =
      __$$RegisterProfilePageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({User user, File? pickedFile});

  @override
  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$RegisterProfilePageStateImplCopyWithImpl<$Res>
    extends _$RegisterProfilePageStateCopyWithImpl<$Res,
        _$RegisterProfilePageStateImpl>
    implements _$$RegisterProfilePageStateImplCopyWith<$Res> {
  __$$RegisterProfilePageStateImplCopyWithImpl(
      _$RegisterProfilePageStateImpl _value,
      $Res Function(_$RegisterProfilePageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterProfilePageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? pickedFile = freezed,
  }) {
    return _then(_$RegisterProfilePageStateImpl(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
      pickedFile: freezed == pickedFile
          ? _value.pickedFile
          : pickedFile // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$RegisterProfilePageStateImpl implements _RegisterProfilePageState {
  const _$RegisterProfilePageStateImpl({required this.user, this.pickedFile});

  @override
  final User user;
  @override
  final File? pickedFile;

  @override
  String toString() {
    return 'RegisterProfilePageState(user: $user, pickedFile: $pickedFile)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterProfilePageStateImpl &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.pickedFile, pickedFile) ||
                other.pickedFile == pickedFile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, pickedFile);

  /// Create a copy of RegisterProfilePageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterProfilePageStateImplCopyWith<_$RegisterProfilePageStateImpl>
      get copyWith => __$$RegisterProfilePageStateImplCopyWithImpl<
          _$RegisterProfilePageStateImpl>(this, _$identity);
}

abstract class _RegisterProfilePageState implements RegisterProfilePageState {
  const factory _RegisterProfilePageState(
      {required final User user,
      final File? pickedFile}) = _$RegisterProfilePageStateImpl;

  @override
  User get user;
  @override
  File? get pickedFile;

  /// Create a copy of RegisterProfilePageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterProfilePageStateImplCopyWith<_$RegisterProfilePageStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
