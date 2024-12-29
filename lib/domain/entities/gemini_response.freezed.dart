// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gemini_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GeminiResponse _$GeminiResponseFromJson(Map<String, dynamic> json) {
  return _GeminiResponse.fromJson(json);
}

/// @nodoc
mixin _$GeminiResponse {
  ResponseScheme get response => throw _privateConstructorUsedError;

  /// Serializes this GeminiResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of GeminiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $GeminiResponseCopyWith<GeminiResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeminiResponseCopyWith<$Res> {
  factory $GeminiResponseCopyWith(
          GeminiResponse value, $Res Function(GeminiResponse) then) =
      _$GeminiResponseCopyWithImpl<$Res, GeminiResponse>;
  @useResult
  $Res call({ResponseScheme response});

  $ResponseSchemeCopyWith<$Res> get response;
}

/// @nodoc
class _$GeminiResponseCopyWithImpl<$Res, $Val extends GeminiResponse>
    implements $GeminiResponseCopyWith<$Res> {
  _$GeminiResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of GeminiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_value.copyWith(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ResponseScheme,
    ) as $Val);
  }

  /// Create a copy of GeminiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ResponseSchemeCopyWith<$Res> get response {
    return $ResponseSchemeCopyWith<$Res>(_value.response, (value) {
      return _then(_value.copyWith(response: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$GeminiResponseImplCopyWith<$Res>
    implements $GeminiResponseCopyWith<$Res> {
  factory _$$GeminiResponseImplCopyWith(_$GeminiResponseImpl value,
          $Res Function(_$GeminiResponseImpl) then) =
      __$$GeminiResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ResponseScheme response});

  @override
  $ResponseSchemeCopyWith<$Res> get response;
}

/// @nodoc
class __$$GeminiResponseImplCopyWithImpl<$Res>
    extends _$GeminiResponseCopyWithImpl<$Res, _$GeminiResponseImpl>
    implements _$$GeminiResponseImplCopyWith<$Res> {
  __$$GeminiResponseImplCopyWithImpl(
      _$GeminiResponseImpl _value, $Res Function(_$GeminiResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of GeminiResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
  }) {
    return _then(_$GeminiResponseImpl(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as ResponseScheme,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$GeminiResponseImpl implements _GeminiResponse {
  const _$GeminiResponseImpl({required this.response});

  factory _$GeminiResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$GeminiResponseImplFromJson(json);

  @override
  final ResponseScheme response;

  @override
  String toString() {
    return 'GeminiResponse(response: $response)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GeminiResponseImpl &&
            (identical(other.response, response) ||
                other.response == response));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, response);

  /// Create a copy of GeminiResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$GeminiResponseImplCopyWith<_$GeminiResponseImpl> get copyWith =>
      __$$GeminiResponseImplCopyWithImpl<_$GeminiResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GeminiResponseImplToJson(
      this,
    );
  }
}

abstract class _GeminiResponse implements GeminiResponse {
  const factory _GeminiResponse({required final ResponseScheme response}) =
      _$GeminiResponseImpl;

  factory _GeminiResponse.fromJson(Map<String, dynamic> json) =
      _$GeminiResponseImpl.fromJson;

  @override
  ResponseScheme get response;

  /// Create a copy of GeminiResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$GeminiResponseImplCopyWith<_$GeminiResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ResponseScheme _$ResponseSchemeFromJson(Map<String, dynamic> json) {
  return _ResponseScheme.fromJson(json);
}

/// @nodoc
mixin _$ResponseScheme {
  String get languageCode => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  Plan get plan => throw _privateConstructorUsedError;
  List<Place> get places => throw _privateConstructorUsedError;

  /// Serializes this ResponseScheme to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResponseScheme
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResponseSchemeCopyWith<ResponseScheme> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseSchemeCopyWith<$Res> {
  factory $ResponseSchemeCopyWith(
          ResponseScheme value, $Res Function(ResponseScheme) then) =
      _$ResponseSchemeCopyWithImpl<$Res, ResponseScheme>;
  @useResult
  $Res call(
      {String languageCode, String message, Plan plan, List<Place> places});

  $PlanCopyWith<$Res> get plan;
}

/// @nodoc
class _$ResponseSchemeCopyWithImpl<$Res, $Val extends ResponseScheme>
    implements $ResponseSchemeCopyWith<$Res> {
  _$ResponseSchemeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResponseScheme
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageCode = null,
    Object? message = null,
    Object? plan = null,
    Object? places = null,
  }) {
    return _then(_value.copyWith(
      languageCode: null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      plan: null == plan
          ? _value.plan
          : plan // ignore: cast_nullable_to_non_nullable
              as Plan,
      places: null == places
          ? _value.places
          : places // ignore: cast_nullable_to_non_nullable
              as List<Place>,
    ) as $Val);
  }

  /// Create a copy of ResponseScheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PlanCopyWith<$Res> get plan {
    return $PlanCopyWith<$Res>(_value.plan, (value) {
      return _then(_value.copyWith(plan: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ResponseSchemeImplCopyWith<$Res>
    implements $ResponseSchemeCopyWith<$Res> {
  factory _$$ResponseSchemeImplCopyWith(_$ResponseSchemeImpl value,
          $Res Function(_$ResponseSchemeImpl) then) =
      __$$ResponseSchemeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String languageCode, String message, Plan plan, List<Place> places});

  @override
  $PlanCopyWith<$Res> get plan;
}

/// @nodoc
class __$$ResponseSchemeImplCopyWithImpl<$Res>
    extends _$ResponseSchemeCopyWithImpl<$Res, _$ResponseSchemeImpl>
    implements _$$ResponseSchemeImplCopyWith<$Res> {
  __$$ResponseSchemeImplCopyWithImpl(
      _$ResponseSchemeImpl _value, $Res Function(_$ResponseSchemeImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResponseScheme
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageCode = null,
    Object? message = null,
    Object? plan = null,
    Object? places = null,
  }) {
    return _then(_$ResponseSchemeImpl(
      languageCode: null == languageCode
          ? _value.languageCode
          : languageCode // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      plan: null == plan
          ? _value.plan
          : plan // ignore: cast_nullable_to_non_nullable
              as Plan,
      places: null == places
          ? _value._places
          : places // ignore: cast_nullable_to_non_nullable
              as List<Place>,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$ResponseSchemeImpl implements _ResponseScheme {
  const _$ResponseSchemeImpl(
      {required this.languageCode,
      required this.message,
      required this.plan,
      required final List<Place> places})
      : _places = places;

  factory _$ResponseSchemeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResponseSchemeImplFromJson(json);

  @override
  final String languageCode;
  @override
  final String message;
  @override
  final Plan plan;
  final List<Place> _places;
  @override
  List<Place> get places {
    if (_places is EqualUnmodifiableListView) return _places;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_places);
  }

  @override
  String toString() {
    return 'ResponseScheme(languageCode: $languageCode, message: $message, plan: $plan, places: $places)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResponseSchemeImpl &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.plan, plan) || other.plan == plan) &&
            const DeepCollectionEquality().equals(other._places, _places));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, languageCode, message, plan,
      const DeepCollectionEquality().hash(_places));

  /// Create a copy of ResponseScheme
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResponseSchemeImplCopyWith<_$ResponseSchemeImpl> get copyWith =>
      __$$ResponseSchemeImplCopyWithImpl<_$ResponseSchemeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResponseSchemeImplToJson(
      this,
    );
  }
}

abstract class _ResponseScheme implements ResponseScheme {
  const factory _ResponseScheme(
      {required final String languageCode,
      required final String message,
      required final Plan plan,
      required final List<Place> places}) = _$ResponseSchemeImpl;

  factory _ResponseScheme.fromJson(Map<String, dynamic> json) =
      _$ResponseSchemeImpl.fromJson;

  @override
  String get languageCode;
  @override
  String get message;
  @override
  Plan get plan;
  @override
  List<Place> get places;

  /// Create a copy of ResponseScheme
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResponseSchemeImplCopyWith<_$ResponseSchemeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
