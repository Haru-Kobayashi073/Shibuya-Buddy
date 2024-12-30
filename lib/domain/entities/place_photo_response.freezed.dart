// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_photo_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlacePhotoResponse _$PlacePhotoResponseFromJson(Map<String, dynamic> json) {
  return _PlacePhotoResponse.fromJson(json);
}

/// @nodoc
mixin _$PlacePhotoResponse {
  String get name => throw _privateConstructorUsedError;
  String get photoUri => throw _privateConstructorUsedError;

  /// Serializes this PlacePhotoResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlacePhotoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlacePhotoResponseCopyWith<PlacePhotoResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlacePhotoResponseCopyWith<$Res> {
  factory $PlacePhotoResponseCopyWith(
          PlacePhotoResponse value, $Res Function(PlacePhotoResponse) then) =
      _$PlacePhotoResponseCopyWithImpl<$Res, PlacePhotoResponse>;
  @useResult
  $Res call({String name, String photoUri});
}

/// @nodoc
class _$PlacePhotoResponseCopyWithImpl<$Res, $Val extends PlacePhotoResponse>
    implements $PlacePhotoResponseCopyWith<$Res> {
  _$PlacePhotoResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlacePhotoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? photoUri = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photoUri: null == photoUri
          ? _value.photoUri
          : photoUri // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlacePhotoResponseImplCopyWith<$Res>
    implements $PlacePhotoResponseCopyWith<$Res> {
  factory _$$PlacePhotoResponseImplCopyWith(_$PlacePhotoResponseImpl value,
          $Res Function(_$PlacePhotoResponseImpl) then) =
      __$$PlacePhotoResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String photoUri});
}

/// @nodoc
class __$$PlacePhotoResponseImplCopyWithImpl<$Res>
    extends _$PlacePhotoResponseCopyWithImpl<$Res, _$PlacePhotoResponseImpl>
    implements _$$PlacePhotoResponseImplCopyWith<$Res> {
  __$$PlacePhotoResponseImplCopyWithImpl(_$PlacePhotoResponseImpl _value,
      $Res Function(_$PlacePhotoResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlacePhotoResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? photoUri = null,
  }) {
    return _then(_$PlacePhotoResponseImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      photoUri: null == photoUri
          ? _value.photoUri
          : photoUri // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$PlacePhotoResponseImpl implements _PlacePhotoResponse {
  const _$PlacePhotoResponseImpl({required this.name, required this.photoUri});

  factory _$PlacePhotoResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlacePhotoResponseImplFromJson(json);

  @override
  final String name;
  @override
  final String photoUri;

  @override
  String toString() {
    return 'PlacePhotoResponse(name: $name, photoUri: $photoUri)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlacePhotoResponseImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.photoUri, photoUri) ||
                other.photoUri == photoUri));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, photoUri);

  /// Create a copy of PlacePhotoResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlacePhotoResponseImplCopyWith<_$PlacePhotoResponseImpl> get copyWith =>
      __$$PlacePhotoResponseImplCopyWithImpl<_$PlacePhotoResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlacePhotoResponseImplToJson(
      this,
    );
  }
}

abstract class _PlacePhotoResponse implements PlacePhotoResponse {
  const factory _PlacePhotoResponse(
      {required final String name,
      required final String photoUri}) = _$PlacePhotoResponseImpl;

  factory _PlacePhotoResponse.fromJson(Map<String, dynamic> json) =
      _$PlacePhotoResponseImpl.fromJson;

  @override
  String get name;
  @override
  String get photoUri;

  /// Create a copy of PlacePhotoResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlacePhotoResponseImplCopyWith<_$PlacePhotoResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
