// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlaceDetailResponse _$PlaceDetailResponseFromJson(Map<String, dynamic> json) {
  return _PlaceDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$PlaceDetailResponse {
  List<GoogleMapPlaceDetail> get places => throw _privateConstructorUsedError;

  /// Serializes this PlaceDetailResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlaceDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlaceDetailResponseCopyWith<PlaceDetailResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceDetailResponseCopyWith<$Res> {
  factory $PlaceDetailResponseCopyWith(
          PlaceDetailResponse value, $Res Function(PlaceDetailResponse) then) =
      _$PlaceDetailResponseCopyWithImpl<$Res, PlaceDetailResponse>;
  @useResult
  $Res call({List<GoogleMapPlaceDetail> places});
}

/// @nodoc
class _$PlaceDetailResponseCopyWithImpl<$Res, $Val extends PlaceDetailResponse>
    implements $PlaceDetailResponseCopyWith<$Res> {
  _$PlaceDetailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlaceDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? places = null,
  }) {
    return _then(_value.copyWith(
      places: null == places
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as List<GoogleMapPlaceDetail>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaceDetailResponseImplCopyWith<$Res>
    implements $PlaceDetailResponseCopyWith<$Res> {
  factory _$$PlaceDetailResponseImplCopyWith(_$PlaceDetailResponseImpl value,
          $Res Function(_$PlaceDetailResponseImpl) then) =
      __$$PlaceDetailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<GoogleMapPlaceDetail> places});
}

/// @nodoc
class __$$PlaceDetailResponseImplCopyWithImpl<$Res>
    extends _$PlaceDetailResponseCopyWithImpl<$Res, _$PlaceDetailResponseImpl>
    implements _$$PlaceDetailResponseImplCopyWith<$Res> {
  __$$PlaceDetailResponseImplCopyWithImpl(_$PlaceDetailResponseImpl _value,
      $Res Function(_$PlaceDetailResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlaceDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? places = null,
  }) {
    return _then(_$PlaceDetailResponseImpl(
      places: null == places
          ? _value._places
          : places // ignore: cast_nullable_to_non_nullable
              as List<GoogleMapPlaceDetail>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$PlaceDetailResponseImpl implements _PlaceDetailResponse {
  const _$PlaceDetailResponseImpl(
      {required final List<GoogleMapPlaceDetail> places})
      : _places = places;

  factory _$PlaceDetailResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaceDetailResponseImplFromJson(json);

  final List<GoogleMapPlaceDetail> _places;
  @override
  List<GoogleMapPlaceDetail> get places {
    if (_places is EqualUnmodifiableListView) return _places;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_places);
  }

  @override
  String toString() {
    return 'PlaceDetailResponse(places: $places)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceDetailResponseImpl &&
            const DeepCollectionEquality().equals(other._places, _places));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_places));

  /// Create a copy of PlaceDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceDetailResponseImplCopyWith<_$PlaceDetailResponseImpl> get copyWith =>
      __$$PlaceDetailResponseImplCopyWithImpl<_$PlaceDetailResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceDetailResponseImplToJson(
      this,
    );
  }
}

abstract class _PlaceDetailResponse implements PlaceDetailResponse {
  const factory _PlaceDetailResponse(
          {required final List<GoogleMapPlaceDetail> places}) =
      _$PlaceDetailResponseImpl;

  factory _PlaceDetailResponse.fromJson(Map<String, dynamic> json) =
      _$PlaceDetailResponseImpl.fromJson;

  @override
  List<GoogleMapPlaceDetail> get places;

  /// Create a copy of PlaceDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaceDetailResponseImplCopyWith<_$PlaceDetailResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

GoogleMapPlaceDetail _$GoogleMapPlaceDetailFromJson(Map<String, dynamic> json) {
  return _GoogleMapPlaceDetail.fromJson(json);
}

/// @nodoc
mixin _$GoogleMapPlaceDetail {
  String get placeId => throw _privateConstructorUsedError;
  Coordinate get coordinate => throw _privateConstructorUsedError;

  /// Serializes this GoogleMapPlaceDetail to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GoogleMapPlaceDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GoogleMapPlaceDetailCopyWith<GoogleMapPlaceDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GoogleMapPlaceDetailCopyWith<$Res> {
  factory $GoogleMapPlaceDetailCopyWith(GoogleMapPlaceDetail value,
          $Res Function(GoogleMapPlaceDetail) then) =
      _$GoogleMapPlaceDetailCopyWithImpl<$Res, GoogleMapPlaceDetail>;
  @useResult
  $Res call({String placeId, Coordinate coordinate});

  $CoordinateCopyWith<$Res> get coordinate;
}

/// @nodoc
class _$GoogleMapPlaceDetailCopyWithImpl<$Res,
        $Val extends GoogleMapPlaceDetail>
    implements $GoogleMapPlaceDetailCopyWith<$Res> {
  _$GoogleMapPlaceDetailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GoogleMapPlaceDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeId = null,
    Object? coordinate = null,
  }) {
    return _then(_value.copyWith(
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String,
      coordinate: null == coordinate
          ? _value.coordinate
          : coordinate // ignore: cast_nullable_to_non_nullable
              as Coordinate,
    ) as $Val);
  }

  /// Create a copy of GoogleMapPlaceDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoordinateCopyWith<$Res> get coordinate {
    return $CoordinateCopyWith<$Res>(_value.coordinate, (value) {
      return _then(_value.copyWith(coordinate: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GoogleMapPlaceDetailImplCopyWith<$Res>
    implements $GoogleMapPlaceDetailCopyWith<$Res> {
  factory _$$GoogleMapPlaceDetailImplCopyWith(_$GoogleMapPlaceDetailImpl value,
          $Res Function(_$GoogleMapPlaceDetailImpl) then) =
      __$$GoogleMapPlaceDetailImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String placeId, Coordinate coordinate});

  @override
  $CoordinateCopyWith<$Res> get coordinate;
}

/// @nodoc
class __$$GoogleMapPlaceDetailImplCopyWithImpl<$Res>
    extends _$GoogleMapPlaceDetailCopyWithImpl<$Res, _$GoogleMapPlaceDetailImpl>
    implements _$$GoogleMapPlaceDetailImplCopyWith<$Res> {
  __$$GoogleMapPlaceDetailImplCopyWithImpl(_$GoogleMapPlaceDetailImpl _value,
      $Res Function(_$GoogleMapPlaceDetailImpl) _then)
      : super(_value, _then);

  /// Create a copy of GoogleMapPlaceDetail
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? placeId = null,
    Object? coordinate = null,
  }) {
    return _then(_$GoogleMapPlaceDetailImpl(
      placeId: null == placeId
          ? _value.placeId
          : placeId // ignore: cast_nullable_to_non_nullable
              as String,
      coordinate: null == coordinate
          ? _value.coordinate
          : coordinate // ignore: cast_nullable_to_non_nullable
              as Coordinate,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$GoogleMapPlaceDetailImpl implements _GoogleMapPlaceDetail {
  const _$GoogleMapPlaceDetailImpl(
      {required this.placeId, required this.coordinate});

  factory _$GoogleMapPlaceDetailImpl.fromJson(Map<String, dynamic> json) =>
      _$$GoogleMapPlaceDetailImplFromJson(json);

  @override
  final String placeId;
  @override
  final Coordinate coordinate;

  @override
  String toString() {
    return 'GoogleMapPlaceDetail(placeId: $placeId, coordinate: $coordinate)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GoogleMapPlaceDetailImpl &&
            (identical(other.placeId, placeId) || other.placeId == placeId) &&
            (identical(other.coordinate, coordinate) ||
                other.coordinate == coordinate));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, placeId, coordinate);

  /// Create a copy of GoogleMapPlaceDetail
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GoogleMapPlaceDetailImplCopyWith<_$GoogleMapPlaceDetailImpl>
      get copyWith =>
          __$$GoogleMapPlaceDetailImplCopyWithImpl<_$GoogleMapPlaceDetailImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GoogleMapPlaceDetailImplToJson(
      this,
    );
  }
}

abstract class _GoogleMapPlaceDetail implements GoogleMapPlaceDetail {
  const factory _GoogleMapPlaceDetail(
      {required final String placeId,
      required final Coordinate coordinate}) = _$GoogleMapPlaceDetailImpl;

  factory _GoogleMapPlaceDetail.fromJson(Map<String, dynamic> json) =
      _$GoogleMapPlaceDetailImpl.fromJson;

  @override
  String get placeId;
  @override
  Coordinate get coordinate;

  /// Create a copy of GoogleMapPlaceDetail
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GoogleMapPlaceDetailImplCopyWith<_$GoogleMapPlaceDetailImpl>
      get copyWith => throw _privateConstructorUsedError;
}
