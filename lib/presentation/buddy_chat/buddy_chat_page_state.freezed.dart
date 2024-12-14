// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'buddy_chat_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BuddyChatPageState {
  List<ChatMessage> get messages => throw _privateConstructorUsedError;
  ScrollController get scrollController => throw _privateConstructorUsedError;

  /// Create a copy of BuddyChatPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BuddyChatPageStateCopyWith<BuddyChatPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BuddyChatPageStateCopyWith<$Res> {
  factory $BuddyChatPageStateCopyWith(
          BuddyChatPageState value, $Res Function(BuddyChatPageState) then) =
      _$BuddyChatPageStateCopyWithImpl<$Res, BuddyChatPageState>;
  @useResult
  $Res call({List<ChatMessage> messages, ScrollController scrollController});
}

/// @nodoc
class _$BuddyChatPageStateCopyWithImpl<$Res, $Val extends BuddyChatPageState>
    implements $BuddyChatPageStateCopyWith<$Res> {
  _$BuddyChatPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BuddyChatPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? scrollController = null,
  }) {
    return _then(_value.copyWith(
      messages: null == messages
          ? _value.messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
      scrollController: null == scrollController
          ? _value.scrollController
          : scrollController // ignore: cast_nullable_to_non_nullable
              as ScrollController,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BuddyChatPageStateImplCopyWith<$Res>
    implements $BuddyChatPageStateCopyWith<$Res> {
  factory _$$BuddyChatPageStateImplCopyWith(_$BuddyChatPageStateImpl value,
          $Res Function(_$BuddyChatPageStateImpl) then) =
      __$$BuddyChatPageStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ChatMessage> messages, ScrollController scrollController});
}

/// @nodoc
class __$$BuddyChatPageStateImplCopyWithImpl<$Res>
    extends _$BuddyChatPageStateCopyWithImpl<$Res, _$BuddyChatPageStateImpl>
    implements _$$BuddyChatPageStateImplCopyWith<$Res> {
  __$$BuddyChatPageStateImplCopyWithImpl(_$BuddyChatPageStateImpl _value,
      $Res Function(_$BuddyChatPageStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of BuddyChatPageState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messages = null,
    Object? scrollController = null,
  }) {
    return _then(_$BuddyChatPageStateImpl(
      messages: null == messages
          ? _value._messages
          : messages // ignore: cast_nullable_to_non_nullable
              as List<ChatMessage>,
      scrollController: null == scrollController
          ? _value.scrollController
          : scrollController // ignore: cast_nullable_to_non_nullable
              as ScrollController,
    ));
  }
}

/// @nodoc

class _$BuddyChatPageStateImpl implements _BuddyChatPageState {
  const _$BuddyChatPageStateImpl(
      {required final List<ChatMessage> messages,
      required this.scrollController})
      : _messages = messages;

  final List<ChatMessage> _messages;
  @override
  List<ChatMessage> get messages {
    if (_messages is EqualUnmodifiableListView) return _messages;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_messages);
  }

  @override
  final ScrollController scrollController;

  @override
  String toString() {
    return 'BuddyChatPageState(messages: $messages, scrollController: $scrollController)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BuddyChatPageStateImpl &&
            const DeepCollectionEquality().equals(other._messages, _messages) &&
            (identical(other.scrollController, scrollController) ||
                other.scrollController == scrollController));
  }

  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(_messages), scrollController);

  /// Create a copy of BuddyChatPageState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BuddyChatPageStateImplCopyWith<_$BuddyChatPageStateImpl> get copyWith =>
      __$$BuddyChatPageStateImplCopyWithImpl<_$BuddyChatPageStateImpl>(
          this, _$identity);
}

abstract class _BuddyChatPageState implements BuddyChatPageState {
  const factory _BuddyChatPageState(
          {required final List<ChatMessage> messages,
          required final ScrollController scrollController}) =
      _$BuddyChatPageStateImpl;

  @override
  List<ChatMessage> get messages;
  @override
  ScrollController get scrollController;

  /// Create a copy of BuddyChatPageState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BuddyChatPageStateImplCopyWith<_$BuddyChatPageStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
