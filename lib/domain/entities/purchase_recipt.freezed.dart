// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'purchase_recipt.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PurchaseRecipt _$PurchaseReciptFromJson(Map<String, dynamic> json) {
  return _PurchaseRecipt.fromJson(json);
}

/// @nodoc
mixin _$PurchaseRecipt {
  String get id => throw _privateConstructorUsedError;
  String? get rankDownToStandardTaskPath =>
      throw _privateConstructorUsedError; // スタンダードに自動降格を行うタスクのパス
  @DateTimeConverter()
  DateTime? get premiumPlanExpirationDate => throw _privateConstructorUsedError;
  @DateTimeConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;

  /// Serializes this PurchaseRecipt to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PurchaseRecipt
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PurchaseReciptCopyWith<PurchaseRecipt> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PurchaseReciptCopyWith<$Res> {
  factory $PurchaseReciptCopyWith(
          PurchaseRecipt value, $Res Function(PurchaseRecipt) then) =
      _$PurchaseReciptCopyWithImpl<$Res, PurchaseRecipt>;
  @useResult
  $Res call(
      {String id,
      String? rankDownToStandardTaskPath,
      @DateTimeConverter() DateTime? premiumPlanExpirationDate,
      @DateTimeConverter() DateTime createdAt});
}

/// @nodoc
class _$PurchaseReciptCopyWithImpl<$Res, $Val extends PurchaseRecipt>
    implements $PurchaseReciptCopyWith<$Res> {
  _$PurchaseReciptCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PurchaseRecipt
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? rankDownToStandardTaskPath = freezed,
    Object? premiumPlanExpirationDate = freezed,
    Object? createdAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      rankDownToStandardTaskPath: freezed == rankDownToStandardTaskPath
          ? _value.rankDownToStandardTaskPath
          : rankDownToStandardTaskPath // ignore: cast_nullable_to_non_nullable
              as String?,
      premiumPlanExpirationDate: freezed == premiumPlanExpirationDate
          ? _value.premiumPlanExpirationDate
          : premiumPlanExpirationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PurchaseReciptImplCopyWith<$Res>
    implements $PurchaseReciptCopyWith<$Res> {
  factory _$$PurchaseReciptImplCopyWith(_$PurchaseReciptImpl value,
          $Res Function(_$PurchaseReciptImpl) then) =
      __$$PurchaseReciptImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String? rankDownToStandardTaskPath,
      @DateTimeConverter() DateTime? premiumPlanExpirationDate,
      @DateTimeConverter() DateTime createdAt});
}

/// @nodoc
class __$$PurchaseReciptImplCopyWithImpl<$Res>
    extends _$PurchaseReciptCopyWithImpl<$Res, _$PurchaseReciptImpl>
    implements _$$PurchaseReciptImplCopyWith<$Res> {
  __$$PurchaseReciptImplCopyWithImpl(
      _$PurchaseReciptImpl _value, $Res Function(_$PurchaseReciptImpl) _then)
      : super(_value, _then);

  /// Create a copy of PurchaseRecipt
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? rankDownToStandardTaskPath = freezed,
    Object? premiumPlanExpirationDate = freezed,
    Object? createdAt = null,
  }) {
    return _then(_$PurchaseReciptImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      rankDownToStandardTaskPath: freezed == rankDownToStandardTaskPath
          ? _value.rankDownToStandardTaskPath
          : rankDownToStandardTaskPath // ignore: cast_nullable_to_non_nullable
              as String?,
      premiumPlanExpirationDate: freezed == premiumPlanExpirationDate
          ? _value.premiumPlanExpirationDate
          : premiumPlanExpirationDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PurchaseReciptImpl implements _PurchaseRecipt {
  const _$PurchaseReciptImpl(
      {required this.id,
      this.rankDownToStandardTaskPath,
      @DateTimeConverter() this.premiumPlanExpirationDate,
      @DateTimeConverter() required this.createdAt});

  factory _$PurchaseReciptImpl.fromJson(Map<String, dynamic> json) =>
      _$$PurchaseReciptImplFromJson(json);

  @override
  final String id;
  @override
  final String? rankDownToStandardTaskPath;
// スタンダードに自動降格を行うタスクのパス
  @override
  @DateTimeConverter()
  final DateTime? premiumPlanExpirationDate;
  @override
  @DateTimeConverter()
  final DateTime createdAt;

  @override
  String toString() {
    return 'PurchaseRecipt(id: $id, rankDownToStandardTaskPath: $rankDownToStandardTaskPath, premiumPlanExpirationDate: $premiumPlanExpirationDate, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PurchaseReciptImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.rankDownToStandardTaskPath,
                    rankDownToStandardTaskPath) ||
                other.rankDownToStandardTaskPath ==
                    rankDownToStandardTaskPath) &&
            (identical(other.premiumPlanExpirationDate,
                    premiumPlanExpirationDate) ||
                other.premiumPlanExpirationDate == premiumPlanExpirationDate) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, rankDownToStandardTaskPath,
      premiumPlanExpirationDate, createdAt);

  /// Create a copy of PurchaseRecipt
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PurchaseReciptImplCopyWith<_$PurchaseReciptImpl> get copyWith =>
      __$$PurchaseReciptImplCopyWithImpl<_$PurchaseReciptImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PurchaseReciptImplToJson(
      this,
    );
  }
}

abstract class _PurchaseRecipt implements PurchaseRecipt {
  const factory _PurchaseRecipt(
          {required final String id,
          final String? rankDownToStandardTaskPath,
          @DateTimeConverter() final DateTime? premiumPlanExpirationDate,
          @DateTimeConverter() required final DateTime createdAt}) =
      _$PurchaseReciptImpl;

  factory _PurchaseRecipt.fromJson(Map<String, dynamic> json) =
      _$PurchaseReciptImpl.fromJson;

  @override
  String get id;
  @override
  String? get rankDownToStandardTaskPath; // スタンダードに自動降格を行うタスクのパス
  @override
  @DateTimeConverter()
  DateTime? get premiumPlanExpirationDate;
  @override
  @DateTimeConverter()
  DateTime get createdAt;

  /// Create a copy of PurchaseRecipt
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PurchaseReciptImplCopyWith<_$PurchaseReciptImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
