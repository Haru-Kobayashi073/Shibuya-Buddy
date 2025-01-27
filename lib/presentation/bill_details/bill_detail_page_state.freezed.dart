// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bill_detail_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BillDetailPageState {
  String get selectedItemString => throw _privateConstructorUsedError;
  Map<String, String> get purchaseItemPrices =>
      throw _privateConstructorUsedError;

  /// Create a copy of BillDetailPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BillDetailPageStateCopyWith<BillDetailPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BillDetailPageStateCopyWith<$Res> {
  factory $BillDetailPageStateCopyWith(
          BillDetailPageState value, $Res Function(BillDetailPageState) then) =
      _$BillDetailPageStateCopyWithImpl<$Res, BillDetailPageState>;
  @useResult
  $Res call(
      {String selectedItemString, Map<String, String> purchaseItemPrices});
}

/// @nodoc
class _$BillDetailPageStateCopyWithImpl<$Res, $Val extends BillDetailPageState>
    implements $BillDetailPageStateCopyWith<$Res> {
  _$BillDetailPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BillDetailPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedItemString = null,
    Object? purchaseItemPrices = null,
  }) {
    return _then(_value.copyWith(
      selectedItemString: null == selectedItemString
          ? _value.selectedItemString
          : selectedItemString // ignore: cast_nullable_to_non_nullable
              as String,
      purchaseItemPrices: null == purchaseItemPrices
          ? _value.purchaseItemPrices
          : purchaseItemPrices // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BillDetailPageStateImplCopyWith<$Res>
    implements $BillDetailPageStateCopyWith<$Res> {
  factory _$$BillDetailPageStateImplCopyWith(_$BillDetailPageStateImpl value,
          $Res Function(_$BillDetailPageStateImpl) then) =
      __$$BillDetailPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String selectedItemString, Map<String, String> purchaseItemPrices});
}

/// @nodoc
class __$$BillDetailPageStateImplCopyWithImpl<$Res>
    extends _$BillDetailPageStateCopyWithImpl<$Res, _$BillDetailPageStateImpl>
    implements _$$BillDetailPageStateImplCopyWith<$Res> {
  __$$BillDetailPageStateImplCopyWithImpl(_$BillDetailPageStateImpl _value,
      $Res Function(_$BillDetailPageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of BillDetailPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedItemString = null,
    Object? purchaseItemPrices = null,
  }) {
    return _then(_$BillDetailPageStateImpl(
      selectedItemString: null == selectedItemString
          ? _value.selectedItemString
          : selectedItemString // ignore: cast_nullable_to_non_nullable
              as String,
      purchaseItemPrices: null == purchaseItemPrices
          ? _value._purchaseItemPrices
          : purchaseItemPrices // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc

class _$BillDetailPageStateImpl implements _BillDetailPageState {
  const _$BillDetailPageStateImpl(
      {required this.selectedItemString,
      required final Map<String, String> purchaseItemPrices})
      : _purchaseItemPrices = purchaseItemPrices;

  @override
  final String selectedItemString;
  final Map<String, String> _purchaseItemPrices;
  @override
  Map<String, String> get purchaseItemPrices {
    if (_purchaseItemPrices is EqualUnmodifiableMapView)
      return _purchaseItemPrices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_purchaseItemPrices);
  }

  @override
  String toString() {
    return 'BillDetailPageState(selectedItemString: $selectedItemString, purchaseItemPrices: $purchaseItemPrices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BillDetailPageStateImpl &&
            (identical(other.selectedItemString, selectedItemString) ||
                other.selectedItemString == selectedItemString) &&
            const DeepCollectionEquality()
                .equals(other._purchaseItemPrices, _purchaseItemPrices));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedItemString,
      const DeepCollectionEquality().hash(_purchaseItemPrices));

  /// Create a copy of BillDetailPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BillDetailPageStateImplCopyWith<_$BillDetailPageStateImpl> get copyWith =>
      __$$BillDetailPageStateImplCopyWithImpl<_$BillDetailPageStateImpl>(
          this, _$identity);
}

abstract class _BillDetailPageState implements BillDetailPageState {
  const factory _BillDetailPageState(
          {required final String selectedItemString,
          required final Map<String, String> purchaseItemPrices}) =
      _$BillDetailPageStateImpl;

  @override
  String get selectedItemString;
  @override
  Map<String, String> get purchaseItemPrices;

  /// Create a copy of BillDetailPageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BillDetailPageStateImplCopyWith<_$BillDetailPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
