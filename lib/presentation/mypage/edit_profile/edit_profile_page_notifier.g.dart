// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'edit_profile_page_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$editProfilePageNotifierHash() =>
    r'7d9e78e2407816b03b57efc34855cdb3aecdfa35';

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

abstract class _$EditProfilePageNotifier
    extends BuildlessAutoDisposeAsyncNotifier<EditProfilePageState> {
  late final User user;

  FutureOr<EditProfilePageState> build(
    User user,
  );
}

/// See also [EditProfilePageNotifier].
@ProviderFor(EditProfilePageNotifier)
const editProfilePageNotifierProvider = EditProfilePageNotifierFamily();

/// See also [EditProfilePageNotifier].
class EditProfilePageNotifierFamily
    extends Family<AsyncValue<EditProfilePageState>> {
  /// See also [EditProfilePageNotifier].
  const EditProfilePageNotifierFamily();

  /// See also [EditProfilePageNotifier].
  EditProfilePageNotifierProvider call(
    User user,
  ) {
    return EditProfilePageNotifierProvider(
      user,
    );
  }

  @override
  EditProfilePageNotifierProvider getProviderOverride(
    covariant EditProfilePageNotifierProvider provider,
  ) {
    return call(
      provider.user,
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
  String? get name => r'editProfilePageNotifierProvider';
}

/// See also [EditProfilePageNotifier].
class EditProfilePageNotifierProvider
    extends AutoDisposeAsyncNotifierProviderImpl<EditProfilePageNotifier,
        EditProfilePageState> {
  /// See also [EditProfilePageNotifier].
  EditProfilePageNotifierProvider(
    User user,
  ) : this._internal(
          () => EditProfilePageNotifier()..user = user,
          from: editProfilePageNotifierProvider,
          name: r'editProfilePageNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$editProfilePageNotifierHash,
          dependencies: EditProfilePageNotifierFamily._dependencies,
          allTransitiveDependencies:
              EditProfilePageNotifierFamily._allTransitiveDependencies,
          user: user,
        );

  EditProfilePageNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.user,
  }) : super.internal();

  final User user;

  @override
  FutureOr<EditProfilePageState> runNotifierBuild(
    covariant EditProfilePageNotifier notifier,
  ) {
    return notifier.build(
      user,
    );
  }

  @override
  Override overrideWith(EditProfilePageNotifier Function() create) {
    return ProviderOverride(
      origin: this,
      override: EditProfilePageNotifierProvider._internal(
        () => create()..user = user,
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        user: user,
      ),
    );
  }

  @override
  AutoDisposeAsyncNotifierProviderElement<EditProfilePageNotifier,
      EditProfilePageState> createElement() {
    return _EditProfilePageNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is EditProfilePageNotifierProvider && other.user == user;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, user.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin EditProfilePageNotifierRef
    on AutoDisposeAsyncNotifierProviderRef<EditProfilePageState> {
  /// The parameter `user` of this provider.
  User get user;
}

class _EditProfilePageNotifierProviderElement
    extends AutoDisposeAsyncNotifierProviderElement<EditProfilePageNotifier,
        EditProfilePageState> with EditProfilePageNotifierRef {
  _EditProfilePageNotifierProviderElement(super.provider);

  @override
  User get user => (origin as EditProfilePageNotifierProvider).user;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
