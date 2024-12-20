// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'place.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Place _$PlaceFromJson(Map<String, dynamic> json) {
  return _Place.fromJson(json);
}

/// @nodoc
mixin _$Place {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get thumbnailUrl => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  @DateTimeConverter()
  ({DateTime closeTime, DateTime openTime}) get openingHours =>
      throw _privateConstructorUsedError;
  String get avevageAmount => throw _privateConstructorUsedError;
  Uri? get websiteUrl => throw _privateConstructorUsedError;

  /// Serializes this Place to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Place
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlaceCopyWith<Place> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlaceCopyWith<$Res> {
  factory $PlaceCopyWith(Place value, $Res Function(Place) then) =
      _$PlaceCopyWithImpl<$Res, Place>;
  @useResult
  $Res call(
      {String id,
      String name,
      String thumbnailUrl,
      String title,
      @DateTimeConverter()
      ({DateTime closeTime, DateTime openTime}) openingHours,
      String avevageAmount,
      Uri? websiteUrl});
}

/// @nodoc
class _$PlaceCopyWithImpl<$Res, $Val extends Place>
    implements $PlaceCopyWith<$Res> {
  _$PlaceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Place
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? thumbnailUrl = null,
    Object? title = null,
    Object? openingHours = null,
    Object? avevageAmount = null,
    Object? websiteUrl = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      openingHours: null == openingHours
          ? _value.openingHours
          : openingHours // ignore: cast_nullable_to_non_nullable
              as ({DateTime closeTime, DateTime openTime}),
      avevageAmount: null == avevageAmount
          ? _value.avevageAmount
          : avevageAmount // ignore: cast_nullable_to_non_nullable
              as String,
      websiteUrl: freezed == websiteUrl
          ? _value.websiteUrl
          : websiteUrl // ignore: cast_nullable_to_non_nullable
              as Uri?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlaceImplCopyWith<$Res> implements $PlaceCopyWith<$Res> {
  factory _$$PlaceImplCopyWith(
          _$PlaceImpl value, $Res Function(_$PlaceImpl) then) =
      __$$PlaceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String thumbnailUrl,
      String title,
      @DateTimeConverter()
      ({DateTime closeTime, DateTime openTime}) openingHours,
      String avevageAmount,
      Uri? websiteUrl});
}

/// @nodoc
class __$$PlaceImplCopyWithImpl<$Res>
    extends _$PlaceCopyWithImpl<$Res, _$PlaceImpl>
    implements _$$PlaceImplCopyWith<$Res> {
  __$$PlaceImplCopyWithImpl(
      _$PlaceImpl _value, $Res Function(_$PlaceImpl) _then)
      : super(_value, _then);

  /// Create a copy of Place
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? thumbnailUrl = null,
    Object? title = null,
    Object? openingHours = null,
    Object? avevageAmount = null,
    Object? websiteUrl = freezed,
  }) {
    return _then(_$PlaceImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      openingHours: null == openingHours
          ? _value.openingHours
          : openingHours // ignore: cast_nullable_to_non_nullable
              as ({DateTime closeTime, DateTime openTime}),
      avevageAmount: null == avevageAmount
          ? _value.avevageAmount
          : avevageAmount // ignore: cast_nullable_to_non_nullable
              as String,
      websiteUrl: freezed == websiteUrl
          ? _value.websiteUrl
          : websiteUrl // ignore: cast_nullable_to_non_nullable
              as Uri?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlaceImpl extends _Place {
  const _$PlaceImpl(
      {required this.id,
      required this.name,
      required this.thumbnailUrl,
      required this.title,
      @DateTimeConverter() required this.openingHours,
      required this.avevageAmount,
      this.websiteUrl})
      : super._();

  factory _$PlaceImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlaceImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String thumbnailUrl;
  @override
  final String title;
  @override
  @DateTimeConverter()
  final ({DateTime closeTime, DateTime openTime}) openingHours;
  @override
  final String avevageAmount;
  @override
  final Uri? websiteUrl;

  @override
  String toString() {
    return 'Place(id: $id, name: $name, thumbnailUrl: $thumbnailUrl, title: $title, openingHours: $openingHours, avevageAmount: $avevageAmount, websiteUrl: $websiteUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlaceImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.openingHours, openingHours) ||
                other.openingHours == openingHours) &&
            (identical(other.avevageAmount, avevageAmount) ||
                other.avevageAmount == avevageAmount) &&
            (identical(other.websiteUrl, websiteUrl) ||
                other.websiteUrl == websiteUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, thumbnailUrl, title,
      openingHours, avevageAmount, websiteUrl);

  /// Create a copy of Place
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlaceImplCopyWith<_$PlaceImpl> get copyWith =>
      __$$PlaceImplCopyWithImpl<_$PlaceImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlaceImplToJson(
      this,
    );
  }
}

abstract class _Place extends Place {
  const factory _Place(
      {required final String id,
      required final String name,
      required final String thumbnailUrl,
      required final String title,
      @DateTimeConverter()
      required final ({DateTime closeTime, DateTime openTime}) openingHours,
      required final String avevageAmount,
      final Uri? websiteUrl}) = _$PlaceImpl;
  const _Place._() : super._();

  factory _Place.fromJson(Map<String, dynamic> json) = _$PlaceImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get thumbnailUrl;
  @override
  String get title;
  @override
  @DateTimeConverter()
  ({DateTime closeTime, DateTime openTime}) get openingHours;
  @override
  String get avevageAmount;
  @override
  Uri? get websiteUrl;

  /// Create a copy of Place
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlaceImplCopyWith<_$PlaceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
