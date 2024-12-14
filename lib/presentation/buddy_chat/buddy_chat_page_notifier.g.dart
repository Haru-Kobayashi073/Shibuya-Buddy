// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buddy_chat_page_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$buddyChatPageNotifierHash() =>
    r'6d6dac74e054e70e480d87cdb7db23f58a872bcb';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$BuddyChatPageNotifier
    extends BuildlessAutoDisposeAsyncNotifier<BuddyChatPageState> {
  late final PlanPrompt planPrompt;

  FutureOr<BuddyChatPageState> build({
    required PlanPrompt planPrompt,
  });
}

/// See also [BuddyChatPageNotifier].
@ProviderFor(BuddyChatPageNotifier)
const buddyChatPageNotifierProvider = BuddyChatPageNotifierFamily();

/// See also [BuddyChatPageNotifier].
class BuddyChatPageNotifierFamily
    extends Family<AsyncValue<BuddyChatPageState>> {
  /// See also [BuddyChatPageNotifier].
  const BuddyChatPageNotifierFamily();

  /// See also [BuddyChatPageNotifier].
  BuddyChatPageNotifierProvider call({
    required PlanPrompt planPrompt,
  }) {
    return BuddyChatPageNotifierProvider(
      planPrompt: planPrompt,
    );
  }

  @override
  BuddyChatPageNotifierProvider getProviderOverride(
    covariant BuddyChatPageNotifierProvider provider,
  ) {
    return call(
      planPrompt: provider.planPrompt,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'buddyChatPageNotifierProvider';
}

/// See also [BuddyChatPageNotifier].
class BuddyChatPageNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<BuddyChatPageNotifier,
        BuddyChatPageState> {
  /// See also [BuddyChatPageNotifier].
  BuddyChatPageNotifierProvider({
    required PlanPrompt planPrompt,
  }) : this._internal(
          () => BuddyChatPageNotifier()..planPrompt = planPrompt,
          from: buddyChatPageNotifierProvider,
          name: r'buddyChatPageNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$buddyChatPageNotifierHash,
          dependencies: BuddyChatPageNotifierFamily._dependencies,
          allTransitiveDependencies:
              BuddyChatPageNotifierFamily._allTransitiveDependencies,
          planPrompt: planPrompt,
        );

  BuddyChatPageNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.planPrompt,
  }) : super.internal();

  final PlanPrompt planPrompt;

  @override
  FutureOr<BuddyChatPageState> runNotifierBuild(
    covariant BuddyChatPageNotifier notifier,
  ) {
    return notifier.build(
      planPrompt: planPrompt,
    );
  }

  @override
  Override overrideWith(BuddyChatPageNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: BuddyChatPageNotifierProvider._internal(
        () => create()..planPrompt = planPrompt,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        planPrompt: planPrompt,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<BuddyChatPageNotifier,
      BuddyChatPageState> createElement() {
    return _BuddyChatPageNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is BuddyChatPageNotifierProvider &&
        other.planPrompt == planPrompt;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, planPrompt.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin BuddyChatPageNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<BuddyChatPageState> {
  /// The parameter `planPrompt` of this provider.
  PlanPrompt get planPrompt;
}

class _BuddyChatPageNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<BuddyChatPageNotifier,
        BuddyChatPageState> with BuddyChatPageNotifierRef {
  _BuddyChatPageNotifierProviderElement(super.provider);

  @override
  PlanPrompt get planPrompt =>
      (origin as BuddyChatPageNotifierProvider).planPrompt;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
