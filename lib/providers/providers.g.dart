// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dioHash() => r'58eeefbd0832498ca2574c1fe69ed783c58d1d8f';

/// See also [dio].
@ProviderFor(dio)
final dioProvider = AutoDisposeProvider<Dio>.internal(
  dio,
  name: r'dioProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$dioHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef DioRef = AutoDisposeProviderRef<Dio>;
String _$pokemonApiClientHash() => r'cbb0ffff8c6f3efa0d2391f8854f14ec5d627e60';

/// See also [pokemonApiClient].
@ProviderFor(pokemonApiClient)
final pokemonApiClientProvider = AutoDisposeProvider<PokemonApiClient>.internal(
  pokemonApiClient,
  name: r'pokemonApiClientProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$pokemonApiClientHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef PokemonApiClientRef = AutoDisposeProviderRef<PokemonApiClient>;
String _$pokemonRepositoryHash() => r'64debbff39fcf41164c518f56e6f269dc499fedd';

/// See also [pokemonRepository].
@ProviderFor(pokemonRepository)
final pokemonRepositoryProvider =
    AutoDisposeProvider<PokemonRepository>.internal(
  pokemonRepository,
  name: r'pokemonRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$pokemonRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef PokemonRepositoryRef = AutoDisposeProviderRef<PokemonRepository>;
String _$pokemonListHash() => r'255488b2357cace100a263d28dfb588e52039f72';

/// See also [pokemonList].
@ProviderFor(pokemonList)
final pokemonListProvider = AutoDisposeFutureProvider<List<Pokemon>>.internal(
  pokemonList,
  name: r'pokemonListProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$pokemonListHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef PokemonListRef = AutoDisposeFutureProviderRef<List<Pokemon>>;
String _$fetchPokemonDetailsHash() =>
    r'c30768f402d29ff37a710dad84e33e1e0f896bbd';

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

/// See also [fetchPokemonDetails].
@ProviderFor(fetchPokemonDetails)
const fetchPokemonDetailsProvider = FetchPokemonDetailsFamily();

/// See also [fetchPokemonDetails].
class FetchPokemonDetailsFamily
    extends Family<AsyncValue<Map<String, dynamic>>> {
  /// See also [fetchPokemonDetails].
  const FetchPokemonDetailsFamily();

  /// See also [fetchPokemonDetails].
  FetchPokemonDetailsProvider call(
    String url,
  ) {
    return FetchPokemonDetailsProvider(
      url,
    );
  }

  @override
  FetchPokemonDetailsProvider getProviderOverride(
    covariant FetchPokemonDetailsProvider provider,
  ) {
    return call(
      provider.url,
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
  String? get name => r'fetchPokemonDetailsProvider';
}

/// See also [fetchPokemonDetails].
class FetchPokemonDetailsProvider
    extends AutoDisposeFutureProvider<Map<String, dynamic>> {
  /// See also [fetchPokemonDetails].
  FetchPokemonDetailsProvider(
    String url,
  ) : this._internal(
          (ref) => fetchPokemonDetails(
            ref as FetchPokemonDetailsRef,
            url,
          ),
          from: fetchPokemonDetailsProvider,
          name: r'fetchPokemonDetailsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$fetchPokemonDetailsHash,
          dependencies: FetchPokemonDetailsFamily._dependencies,
          allTransitiveDependencies:
              FetchPokemonDetailsFamily._allTransitiveDependencies,
          url: url,
        );

  FetchPokemonDetailsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.url,
  }) : super.internal();

  final String url;

  @override
  Override overrideWith(
    FutureOr<Map<String, dynamic>> Function(FetchPokemonDetailsRef provider)
        create,
  ) {
    return ProviderOverride(
      origin: this,
      override: FetchPokemonDetailsProvider._internal(
        (ref) => create(ref as FetchPokemonDetailsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        url: url,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<Map<String, dynamic>> createElement() {
    return _FetchPokemonDetailsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is FetchPokemonDetailsProvider && other.url == url;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, url.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin FetchPokemonDetailsRef
    on AutoDisposeFutureProviderRef<Map<String, dynamic>> {
  /// The parameter `url` of this provider.
  String get url;
}

class _FetchPokemonDetailsProviderElement
    extends AutoDisposeFutureProviderElement<Map<String, dynamic>>
    with FetchPokemonDetailsRef {
  _FetchPokemonDetailsProviderElement(super.provider);

  @override
  String get url => (origin as FetchPokemonDetailsProvider).url;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
