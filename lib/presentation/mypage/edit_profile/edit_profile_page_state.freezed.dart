// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_profile_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$EditProfilePageState {
  File? get imageFile => throw _privateConstructorUsedError;
  bool get imageChanged => throw _privateConstructorUsedError;

  /// Create a copy of EditProfilePageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EditProfilePageStateCopyWith<EditProfilePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfilePageStateCopyWith<$Res> {
  factory $EditProfilePageStateCopyWith(EditProfilePageState value,
          $Res Function(EditProfilePageState) then) =
      _$EditProfilePageStateCopyWithImpl<$Res, EditProfilePageState>;
  @useResult
  $Res call({File? imageFile, bool imageChanged});
}

/// @nodoc
class _$EditProfilePageStateCopyWithImpl<$Res,
        $Val extends EditProfilePageState>
    implements $EditProfilePageStateCopyWith<$Res> {
  _$EditProfilePageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EditProfilePageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageFile = freezed,
    Object? imageChanged = null,
  }) {
    return _then(_value.copyWith(
      imageFile: freezed == imageFile
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as File?,
      imageChanged: null == imageChanged
          ? _value.imageChanged
          : imageChanged // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditProfilePageStateImplCopyWith<$Res>
    implements $EditProfilePageStateCopyWith<$Res> {
  factory _$$EditProfilePageStateImplCopyWith(_$EditProfilePageStateImpl value,
          $Res Function(_$EditProfilePageStateImpl) then) =
      __$$EditProfilePageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({File? imageFile, bool imageChanged});
}

/// @nodoc
class __$$EditProfilePageStateImplCopyWithImpl<$Res>
    extends _$EditProfilePageStateCopyWithImpl<$Res, _$EditProfilePageStateImpl>
    implements _$$EditProfilePageStateImplCopyWith<$Res> {
  __$$EditProfilePageStateImplCopyWithImpl(_$EditProfilePageStateImpl _value,
      $Res Function(_$EditProfilePageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditProfilePageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? imageFile = freezed,
    Object? imageChanged = null,
  }) {
    return _then(_$EditProfilePageStateImpl(
      imageFile: freezed == imageFile
          ? _value.imageFile
          : imageFile // ignore: cast_nullable_to_non_nullable
              as File?,
      imageChanged: null == imageChanged
          ? _value.imageChanged
          : imageChanged // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$EditProfilePageStateImpl implements _EditProfilePageState {
  const _$EditProfilePageStateImpl(
      {required this.imageFile, this.imageChanged = false});

  @override
  final File? imageFile;
  @override
  @JsonKey()
  final bool imageChanged;

  @override
  String toString() {
    return 'EditProfilePageState(imageFile: $imageFile, imageChanged: $imageChanged)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfilePageStateImpl &&
            (identical(other.imageFile, imageFile) ||
                other.imageFile == imageFile) &&
            (identical(other.imageChanged, imageChanged) ||
                other.imageChanged == imageChanged));
  }

  @override
  int get hashCode => Object.hash(runtimeType, imageFile, imageChanged);

  /// Create a copy of EditProfilePageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditProfilePageStateImplCopyWith<_$EditProfilePageStateImpl>
      get copyWith =>
          __$$EditProfilePageStateImplCopyWithImpl<_$EditProfilePageStateImpl>(
              this, _$identity);
}

abstract class _EditProfilePageState implements EditProfilePageState {
  const factory _EditProfilePageState(
      {required final File? imageFile,
      final bool imageChanged}) = _$EditProfilePageStateImpl;

  @override
  File? get imageFile;
  @override
  bool get imageChanged;

  /// Create a copy of EditProfilePageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditProfilePageStateImplCopyWith<_$EditProfilePageStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
