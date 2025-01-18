// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'plans_related_in_topic_page_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$plansRelatedInTopicPageNotifierHash() =>
    r'0e3638d2a41afab463e17ec12dc46c23fec750b6';

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

abstract class _$PlansRelatedInTopicPageNotifier
    extends BuildlessAutoDisposeAsyncNotifier<List<Plan>> {
  late final List<String> planIds;

  FutureOr<List<Plan>> build(
    List<String> planIds,
  );
}

/// See also [PlansRelatedInTopicPageNotifier].
@ProviderFor(PlansRelatedInTopicPageNotifier)
const plansRelatedInTopicPageNotifierProvider =
    PlansRelatedInTopicPageNotifierFamily();

/// See also [PlansRelatedInTopicPageNotifier].
class PlansRelatedInTopicPageNotifierFamily
    extends Family<AsyncValue<List<Plan>>> {
  /// See also [PlansRelatedInTopicPageNotifier].
  const PlansRelatedInTopicPageNotifierFamily();

  /// See also [PlansRelatedInTopicPageNotifier].
  PlansRelatedInTopicPageNotifierProvider call(
    List<String> planIds,
  ) {
    return PlansRelatedInTopicPageNotifierProvider(
      planIds,
    );
  }

  @override
  PlansRelatedInTopicPageNotifierProvider getProviderOverride(
    covariant PlansRelatedInTopicPageNotifierProvider provider,
  ) {
    return call(
      provider.planIds,
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
  String? get name => r'plansRelatedInTopicPageNotifierProvider';
}

/// See also [PlansRelatedInTopicPageNotifier].
class PlansRelatedInTopicPageNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<
        PlansRelatedInTopicPageNotifier, List<Plan>> {
  /// See also [PlansRelatedInTopicPageNotifier].
  PlansRelatedInTopicPageNotifierProvider(
    List<String> planIds,
  ) : this._internal(
          () => PlansRelatedInTopicPageNotifier()..planIds = planIds,
          from: plansRelatedInTopicPageNotifierProvider,
          name: r'plansRelatedInTopicPageNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$plansRelatedInTopicPageNotifierHash,
          dependencies: PlansRelatedInTopicPageNotifierFamily._dependencies,
          allTransitiveDependencies:
              PlansRelatedInTopicPageNotifierFamily._allTransitiveDependencies,
          planIds: planIds,
        );

  PlansRelatedInTopicPageNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.planIds,
  }) : super.internal();

  final List<String> planIds;

  @override
  FutureOr<List<Plan>> runNotifierBuild(
    covariant PlansRelatedInTopicPageNotifier notifier,
  ) {
    return notifier.build(
      planIds,
    );
  }

  @override
  Override overrideWith(PlansRelatedInTopicPageNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: PlansRelatedInTopicPageNotifierProvider._internal(
        () => create()..planIds = planIds,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        planIds: planIds,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<PlansRelatedInTopicPageNotifier,
      List<Plan>> createElement() {
    return _PlansRelatedInTopicPageNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PlansRelatedInTopicPageNotifierProvider &&
        other.planIds == planIds;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, planIds.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PlansRelatedInTopicPageNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<List<Plan>> {
  /// The parameter `planIds` of this provider.
  List<String> get planIds;
}

class _PlansRelatedInTopicPageNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<
        PlansRelatedInTopicPageNotifier,
        List<Plan>> with PlansRelatedInTopicPageNotifierRef {
  _PlansRelatedInTopicPageNotifierProviderElement(super.provider);

  @override
  List<String> get planIds =>
      (origin as PlansRelatedInTopicPageNotifierProvider).planIds;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
