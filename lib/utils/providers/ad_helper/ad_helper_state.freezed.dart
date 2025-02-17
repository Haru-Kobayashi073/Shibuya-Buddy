// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ad_helper_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AdHelperState {
  BannerAd? get bannerAd => throw _privateConstructorUsedError;
  NativeAd? get nativeAd => throw _privateConstructorUsedError;
  bool get isLoadedBannerAd => throw _privateConstructorUsedError;
  bool get isLoadedNativeAd => throw _privateConstructorUsedError;

  /// Create a copy of AdHelperState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdHelperStateCopyWith<AdHelperState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdHelperStateCopyWith<$Res> {
  factory $AdHelperStateCopyWith(
          AdHelperState value, $Res Function(AdHelperState) then) =
      _$AdHelperStateCopyWithImpl<$Res, AdHelperState>;
  @useResult
  $Res call(
      {BannerAd? bannerAd,
      NativeAd? nativeAd,
      bool isLoadedBannerAd,
      bool isLoadedNativeAd});
}

/// @nodoc
class _$AdHelperStateCopyWithImpl<$Res, $Val extends AdHelperState>
    implements $AdHelperStateCopyWith<$Res> {
  _$AdHelperStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdHelperState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bannerAd = freezed,
    Object? nativeAd = freezed,
    Object? isLoadedBannerAd = null,
    Object? isLoadedNativeAd = null,
  }) {
    return _then(_value.copyWith(
      bannerAd: freezed == bannerAd
          ? _value.bannerAd
          : bannerAd // ignore: cast_nullable_to_non_nullable
              as BannerAd?,
      nativeAd: freezed == nativeAd
          ? _value.nativeAd
          : nativeAd // ignore: cast_nullable_to_non_nullable
              as NativeAd?,
      isLoadedBannerAd: null == isLoadedBannerAd
          ? _value.isLoadedBannerAd
          : isLoadedBannerAd // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadedNativeAd: null == isLoadedNativeAd
          ? _value.isLoadedNativeAd
          : isLoadedNativeAd // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdHelperStateImplCopyWith<$Res>
    implements $AdHelperStateCopyWith<$Res> {
  factory _$$AdHelperStateImplCopyWith(
          _$AdHelperStateImpl value, $Res Function(_$AdHelperStateImpl) then) =
      __$$AdHelperStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BannerAd? bannerAd,
      NativeAd? nativeAd,
      bool isLoadedBannerAd,
      bool isLoadedNativeAd});
}

/// @nodoc
class __$$AdHelperStateImplCopyWithImpl<$Res>
    extends _$AdHelperStateCopyWithImpl<$Res, _$AdHelperStateImpl>
    implements _$$AdHelperStateImplCopyWith<$Res> {
  __$$AdHelperStateImplCopyWithImpl(
      _$AdHelperStateImpl _value, $Res Function(_$AdHelperStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdHelperState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? bannerAd = freezed,
    Object? nativeAd = freezed,
    Object? isLoadedBannerAd = null,
    Object? isLoadedNativeAd = null,
  }) {
    return _then(_$AdHelperStateImpl(
      bannerAd: freezed == bannerAd
          ? _value.bannerAd
          : bannerAd // ignore: cast_nullable_to_non_nullable
              as BannerAd?,
      nativeAd: freezed == nativeAd
          ? _value.nativeAd
          : nativeAd // ignore: cast_nullable_to_non_nullable
              as NativeAd?,
      isLoadedBannerAd: null == isLoadedBannerAd
          ? _value.isLoadedBannerAd
          : isLoadedBannerAd // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoadedNativeAd: null == isLoadedNativeAd
          ? _value.isLoadedNativeAd
          : isLoadedNativeAd // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AdHelperStateImpl implements _AdHelperState {
  const _$AdHelperStateImpl(
      {this.bannerAd,
      this.nativeAd,
      this.isLoadedBannerAd = false,
      this.isLoadedNativeAd = false});

  @override
  final BannerAd? bannerAd;
  @override
  final NativeAd? nativeAd;
  @override
  @JsonKey()
  final bool isLoadedBannerAd;
  @override
  @JsonKey()
  final bool isLoadedNativeAd;

  @override
  String toString() {
    return 'AdHelperState(bannerAd: $bannerAd, nativeAd: $nativeAd, isLoadedBannerAd: $isLoadedBannerAd, isLoadedNativeAd: $isLoadedNativeAd)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdHelperStateImpl &&
            (identical(other.bannerAd, bannerAd) ||
                other.bannerAd == bannerAd) &&
            (identical(other.nativeAd, nativeAd) ||
                other.nativeAd == nativeAd) &&
            (identical(other.isLoadedBannerAd, isLoadedBannerAd) ||
                other.isLoadedBannerAd == isLoadedBannerAd) &&
            (identical(other.isLoadedNativeAd, isLoadedNativeAd) ||
                other.isLoadedNativeAd == isLoadedNativeAd));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, bannerAd, nativeAd, isLoadedBannerAd, isLoadedNativeAd);

  /// Create a copy of AdHelperState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdHelperStateImplCopyWith<_$AdHelperStateImpl> get copyWith =>
      __$$AdHelperStateImplCopyWithImpl<_$AdHelperStateImpl>(this, _$identity);
}

abstract class _AdHelperState implements AdHelperState {
  const factory _AdHelperState(
      {final BannerAd? bannerAd,
      final NativeAd? nativeAd,
      final bool isLoadedBannerAd,
      final bool isLoadedNativeAd}) = _$AdHelperStateImpl;

  @override
  BannerAd? get bannerAd;
  @override
  NativeAd? get nativeAd;
  @override
  bool get isLoadedBannerAd;
  @override
  bool get isLoadedNativeAd;

  /// Create a copy of AdHelperState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdHelperStateImplCopyWith<_$AdHelperStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
