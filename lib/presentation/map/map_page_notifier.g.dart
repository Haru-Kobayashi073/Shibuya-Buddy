// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'map_page_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$mapPageNotifierHash() => r'4f8f44b548629207544cbb94689dbdcef5d39688';

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

abstract class _$MapPageNotifier
    extends BuildlessAutoDisposeAsyncNotifier<MapPageState> {
  late final List<Place> places;

  FutureOr<MapPageState> build(
    List<Place> places,
  );
}

/// See also [MapPageNotifier].
@ProviderFor(MapPageNotifier)
const mapPageNotifierProvider = MapPageNotifierFamily();

/// See also [MapPageNotifier].
class MapPageNotifierFamily extends Family<AsyncValue<MapPageState>> {
  /// See also [MapPageNotifier].
  const MapPageNotifierFamily();

  /// See also [MapPageNotifier].
  MapPageNotifierProvider call(
    List<Place> places,
  ) {
    return MapPageNotifierProvider(
      places,
    );
  }

  @override
  MapPageNotifierProvider getProviderOverride(
    covariant MapPageNotifierProvider provider,
  ) {
    return call(
      provider.places,
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
  String? get name => r'mapPageNotifierProvider';
}

/// See also [MapPageNotifier].
class MapPageNotifierProvider extends AutoDisposeAsyncNotifierProviderImpl<
    MapPageNotifier, MapPageState> {
  /// See also [MapPageNotifier].
  MapPageNotifierProvider(
    List<Place> places,
  ) : this._internal(
          () => MapPageNotifier()..places = places,
          from: mapPageNotifierProvider,
          name: r'mapPageNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$mapPageNotifierHash,
          dependencies: MapPageNotifierFamily._dependencies,
          allTransitiveDependencies:
              MapPageNotifierFamily._allTransitiveDependencies,
          places: places,
        );

  MapPageNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.places,
  }) : super.internal();

  final List<Place> places;

  @override
  FutureOr<MapPageState> runNotifierBuild(
    covariant MapPageNotifier notifier,
  ) {
    return notifier.build(
      places,
    );
  }

  @override
  Override overrideWith(MapPageNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: MapPageNotifierProvider._internal(
        () => create()..places = places,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        places: places,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<MapPageNotifier, MapPageState>
      createElement() {
    return _MapPageNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is MapPageNotifierProvider && other.places == places;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, places.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin MapPageNotifierRef on AutoDisposeAsyncNotifierProviderRef<MapPageState> {
  /// The parameter `places` of this provider.
  List<Place> get places;
}

class _MapPageNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<MapPageNotifier,
        MapPageState> with MapPageNotifierRef {
  _MapPageNotifierProviderElement(super.provider);

  @override
  List<Place> get places => (origin as MapPageNotifierProvider).places;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
