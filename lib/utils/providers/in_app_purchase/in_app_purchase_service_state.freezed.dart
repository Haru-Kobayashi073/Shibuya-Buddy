// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'in_app_purchase_service_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$InAppPurchaseServiceState {
  bool get isPremiumUser => throw _privateConstructorUsedError;
  Offerings get offerings => throw _privateConstructorUsedError;

  /// Create a copy of InAppPurchaseServiceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InAppPurchaseServiceStateCopyWith<InAppPurchaseServiceState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InAppPurchaseServiceStateCopyWith<$Res> {
  factory $InAppPurchaseServiceStateCopyWith(InAppPurchaseServiceState value,
          $Res Function(InAppPurchaseServiceState) then) =
      _$InAppPurchaseServiceStateCopyWithImpl<$Res, InAppPurchaseServiceState>;
  @useResult
  $Res call({bool isPremiumUser, Offerings offerings});

  $OfferingsCopyWith<$Res> get offerings;
}

/// @nodoc
class _$InAppPurchaseServiceStateCopyWithImpl<$Res,
        $Val extends InAppPurchaseServiceState>
    implements $InAppPurchaseServiceStateCopyWith<$Res> {
  _$InAppPurchaseServiceStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InAppPurchaseServiceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPremiumUser = null,
    Object? offerings = null,
  }) {
    return _then(_value.copyWith(
      isPremiumUser: null == isPremiumUser
          ? _value.isPremiumUser
          : isPremiumUser // ignore: cast_nullable_to_non_nullable
              as bool,
      offerings: null == offerings
          ? _value.offerings
          : offerings // ignore: cast_nullable_to_non_nullable
              as Offerings,
    ) as $Val);
  }

  /// Create a copy of InAppPurchaseServiceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $OfferingsCopyWith<$Res> get offerings {
    return $OfferingsCopyWith<$Res>(_value.offerings, (value) {
      return _then(_value.copyWith(offerings: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InAppPurchaseServiceStateImplCopyWith<$Res>
    implements $InAppPurchaseServiceStateCopyWith<$Res> {
  factory _$$InAppPurchaseServiceStateImplCopyWith(
          _$InAppPurchaseServiceStateImpl value,
          $Res Function(_$InAppPurchaseServiceStateImpl) then) =
      __$$InAppPurchaseServiceStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isPremiumUser, Offerings offerings});

  @override
  $OfferingsCopyWith<$Res> get offerings;
}

/// @nodoc
class __$$InAppPurchaseServiceStateImplCopyWithImpl<$Res>
    extends _$InAppPurchaseServiceStateCopyWithImpl<$Res,
        _$InAppPurchaseServiceStateImpl>
    implements _$$InAppPurchaseServiceStateImplCopyWith<$Res> {
  __$$InAppPurchaseServiceStateImplCopyWithImpl(
      _$InAppPurchaseServiceStateImpl _value,
      $Res Function(_$InAppPurchaseServiceStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of InAppPurchaseServiceState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPremiumUser = null,
    Object? offerings = null,
  }) {
    return _then(_$InAppPurchaseServiceStateImpl(
      isPremiumUser: null == isPremiumUser
          ? _value.isPremiumUser
          : isPremiumUser // ignore: cast_nullable_to_non_nullable
              as bool,
      offerings: null == offerings
          ? _value.offerings
          : offerings // ignore: cast_nullable_to_non_nullable
              as Offerings,
    ));
  }
}

/// @nodoc

class _$InAppPurchaseServiceStateImpl implements _InAppPurchaseServiceState {
  const _$InAppPurchaseServiceStateImpl(
      {required this.isPremiumUser, required this.offerings});

  @override
  final bool isPremiumUser;
  @override
  final Offerings offerings;

  @override
  String toString() {
    return 'InAppPurchaseServiceState(isPremiumUser: $isPremiumUser, offerings: $offerings)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InAppPurchaseServiceStateImpl &&
            (identical(other.isPremiumUser, isPremiumUser) ||
                other.isPremiumUser == isPremiumUser) &&
            (identical(other.offerings, offerings) ||
                other.offerings == offerings));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isPremiumUser, offerings);

  /// Create a copy of InAppPurchaseServiceState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InAppPurchaseServiceStateImplCopyWith<_$InAppPurchaseServiceStateImpl>
      get copyWith => __$$InAppPurchaseServiceStateImplCopyWithImpl<
          _$InAppPurchaseServiceStateImpl>(this, _$identity);
}

abstract class _InAppPurchaseServiceState implements InAppPurchaseServiceState {
  const factory _InAppPurchaseServiceState(
      {required final bool isPremiumUser,
      required final Offerings offerings}) = _$InAppPurchaseServiceStateImpl;

  @override
  bool get isPremiumUser;
  @override
  Offerings get offerings;

  /// Create a copy of InAppPurchaseServiceState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InAppPurchaseServiceStateImplCopyWith<_$InAppPurchaseServiceStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
