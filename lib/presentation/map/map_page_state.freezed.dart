// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MapPageState {
  BannerAd? get bannerAd => throw _privateConstructorUsedError;
  List<Marker> get markers => throw _privateConstructorUsedError;

  /// Create a copy of MapPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MapPageStateCopyWith<MapPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MapPageStateCopyWith<$Res> {
  factory $MapPageStateCopyWith(
          MapPageState value, $Res Function(MapPageState) then) =
      _$MapPageStateCopyWithImpl<$Res, MapPageState>;
  @useResult
  $Res call({BannerAd? bannerAd, List<Marker> markers});
}

/// @nodoc
class _$MapPageStateCopyWithImpl<$Res, $Val extends MapPageState>
    implements $MapPageStateCopyWith<$Res> {
  _$MapPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MapPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bannerAd = freezed,
    Object? markers = null,
  }) {
    return _then(_value.copyWith(
      bannerAd: freezed == bannerAd
          ? _value.bannerAd
          : bannerAd // ignore: cast_nullable_to_non_nullable
              as BannerAd?,
      markers: null == markers
          ? _value.markers
          : markers // ignore: cast_nullable_to_non_nullable
              as List<Marker>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MapPageStateImplCopyWith<$Res>
    implements $MapPageStateCopyWith<$Res> {
  factory _$$MapPageStateImplCopyWith(
          _$MapPageStateImpl value, $Res Function(_$MapPageStateImpl) then) =
      __$$MapPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BannerAd? bannerAd, List<Marker> markers});
}

/// @nodoc
class __$$MapPageStateImplCopyWithImpl<$Res>
    extends _$MapPageStateCopyWithImpl<$Res, _$MapPageStateImpl>
    implements _$$MapPageStateImplCopyWith<$Res> {
  __$$MapPageStateImplCopyWithImpl(
      _$MapPageStateImpl _value, $Res Function(_$MapPageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of MapPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bannerAd = freezed,
    Object? markers = null,
  }) {
    return _then(_$MapPageStateImpl(
      bannerAd: freezed == bannerAd
          ? _value.bannerAd
          : bannerAd // ignore: cast_nullable_to_non_nullable
              as BannerAd?,
      markers: null == markers
          ? _value._markers
          : markers // ignore: cast_nullable_to_non_nullable
              as List<Marker>,
    ));
  }
}

/// @nodoc

class _$MapPageStateImpl implements _MapPageState {
  const _$MapPageStateImpl({this.bannerAd, required final List<Marker> markers})
      : _markers = markers;

  @override
  final BannerAd? bannerAd;
  final List<Marker> _markers;
  @override
  List<Marker> get markers {
    if (_markers is EqualUnmodifiableListView) return _markers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_markers);
  }

  @override
  String toString() {
    return 'MapPageState(bannerAd: $bannerAd, markers: $markers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MapPageStateImpl &&
            (identical(other.bannerAd, bannerAd) ||
                other.bannerAd == bannerAd) &&
            const DeepCollectionEquality().equals(other._markers, _markers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, bannerAd, const DeepCollectionEquality().hash(_markers));

  /// Create a copy of MapPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MapPageStateImplCopyWith<_$MapPageStateImpl> get copyWith =>
      __$$MapPageStateImplCopyWithImpl<_$MapPageStateImpl>(this, _$identity);
}

abstract class _MapPageState implements MapPageState {
  const factory _MapPageState(
      {final BannerAd? bannerAd,
      required final List<Marker> markers}) = _$MapPageStateImpl;

  @override
  BannerAd? get bannerAd;
  @override
  List<Marker> get markers;

  /// Create a copy of MapPageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MapPageStateImplCopyWith<_$MapPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
