// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plan_detail_page_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$planDetailPageNotifierHash() =>
    r'b86ed8a7aed948fc4ed800a555d61f6c20e3fefc';

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

abstract class _$PlanDetailPageNotifier
    extends BuildlessAutoDisposeAsyncNotifier<PlanDetailPageState> {
  late final Plan plan;

  FutureOr<PlanDetailPageState> build(
    Plan plan,
  );
}

/// See also [PlanDetailPageNotifier].
@ProviderFor(PlanDetailPageNotifier)
const planDetailPageNotifierProvider = PlanDetailPageNotifierFamily();

/// See also [PlanDetailPageNotifier].
class PlanDetailPageNotifierFamily
    extends Family<AsyncValue<PlanDetailPageState>> {
  /// See also [PlanDetailPageNotifier].
  const PlanDetailPageNotifierFamily();

  /// See also [PlanDetailPageNotifier].
  PlanDetailPageNotifierProvider call(
    Plan plan,
  ) {
    return PlanDetailPageNotifierProvider(
      plan,
    );
  }

  @override
  PlanDetailPageNotifierProvider getProviderOverride(
    covariant PlanDetailPageNotifierProvider provider,
  ) {
    return call(
      provider.plan,
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
  String? get name => r'planDetailPageNotifierProvider';
}

/// See also [PlanDetailPageNotifier].
class PlanDetailPageNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<PlanDetailPageNotifier,
        PlanDetailPageState> {
  /// See also [PlanDetailPageNotifier].
  PlanDetailPageNotifierProvider(
    Plan plan,
  ) : this._internal(
          () => PlanDetailPageNotifier()..plan = plan,
          from: planDetailPageNotifierProvider,
          name: r'planDetailPageNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$planDetailPageNotifierHash,
          dependencies: PlanDetailPageNotifierFamily._dependencies,
          allTransitiveDependencies:
              PlanDetailPageNotifierFamily._allTransitiveDependencies,
          plan: plan,
        );

  PlanDetailPageNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.plan,
  }) : super.internal();

  final Plan plan;

  @override
  FutureOr<PlanDetailPageState> runNotifierBuild(
    covariant PlanDetailPageNotifier notifier,
  ) {
    return notifier.build(
      plan,
    );
  }

  @override
  Override overrideWith(PlanDetailPageNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: PlanDetailPageNotifierProvider._internal(
        () => create()..plan = plan,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        plan: plan,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<PlanDetailPageNotifier,
      PlanDetailPageState> createElement() {
    return _PlanDetailPageNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PlanDetailPageNotifierProvider && other.plan == plan;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, plan.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PlanDetailPageNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<PlanDetailPageState> {
  /// The parameter `plan` of this provider.
  Plan get plan;
}

class _PlanDetailPageNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<PlanDetailPageNotifier,
        PlanDetailPageState> with PlanDetailPageNotifierRef {
  _PlanDetailPageNotifierProviderElement(super.provider);

  @override
  Plan get plan => (origin as PlanDetailPageNotifierProvider).plan;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
