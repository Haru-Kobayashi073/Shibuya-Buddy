// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'my_page_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$currentUserStreamHash() => r'07402f2b0a3a69963829ad50b9f471badd34c167';

/// See also [currentUserStream].
@ProviderFor(currentUserStream)
final currentUserStreamProvider = AutoDisposeStreamProvider<User>.internal(
  currentUserStream,
  name: r'currentUserStreamProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$currentUserStreamHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef CurrentUserStreamRef = AutoDisposeStreamProviderRef<User>;
String _$myPageNotifierHash() => r'8f880743d5d6527c71b335560539cd38ff886153';

/// See also [MyPageNotifier].
@ProviderFor(MyPageNotifier)
final myPageNotifierProvider =
    AutoDisposeNotifierProvider<MyPageNotifier, User>.internal(
  MyPageNotifier.new,
  name: r'myPageNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$myPageNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$MyPageNotifier = AutoDisposeNotifier<User>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
