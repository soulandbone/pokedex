// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'providers.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$dioHash() => r'a03da399b44b3740dc4fcfc6716203041d66ff01';

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
String _$pokemonApiClientHash() => r'b9bece61d8fd5c3f9c56085c1cad866ed9963b94';

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
String _$pokemonRepositoryHash() => r'cffc944c11f09266e58435914a662fa4380727b4';

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
String _$pokemonListHash() => r'7229a4142a0f278b487495f1616218946e475679';

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
String _$pokemonTileDataApiClientHash() =>
    r'2f57224f1a1d318ef1fa524d1f5aa5aab3b21b9f';

/// See also [pokemonTileDataApiClient].
@ProviderFor(pokemonTileDataApiClient)
final pokemonTileDataApiClientProvider =
    AutoDisposeProvider<PokemonTileDataApiClient>.internal(
  pokemonTileDataApiClient,
  name: r'pokemonTileDataApiClientProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$pokemonTileDataApiClientHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef PokemonTileDataApiClientRef
    = AutoDisposeProviderRef<PokemonTileDataApiClient>;
String _$pokemonTileDataRepositoryHash() =>
    r'02d2ef0f4b331a64edaff4dc336b704e65ddeba8';

/// See also [pokemonTileDataRepository].
@ProviderFor(pokemonTileDataRepository)
final pokemonTileDataRepositoryProvider =
    AutoDisposeProvider<PokemonTileDataRepository>.internal(
  pokemonTileDataRepository,
  name: r'pokemonTileDataRepositoryProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$pokemonTileDataRepositoryHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef PokemonTileDataRepositoryRef
    = AutoDisposeProviderRef<PokemonTileDataRepository>;
String _$fetchPokemonDetailsHash() =>
    r'80aae89554bab8b5ef17530e9fbb3a386ba18a3f';

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
class FetchPokemonDetailsFamily extends Family<AsyncValue<PokemonTileData>> {
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
    extends AutoDisposeFutureProvider<PokemonTileData> {
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
    FutureOr<PokemonTileData> Function(FetchPokemonDetailsRef provider) create,
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
  AutoDisposeFutureProviderElement<PokemonTileData> createElement() {
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
mixin FetchPokemonDetailsRef on AutoDisposeFutureProviderRef<PokemonTileData> {
  /// The parameter `url` of this provider.
  String get url;
}

class _FetchPokemonDetailsProviderElement
    extends AutoDisposeFutureProviderElement<PokemonTileData>
    with FetchPokemonDetailsRef {
  _FetchPokemonDetailsProviderElement(super.provider);

  @override
  String get url => (origin as FetchPokemonDetailsProvider).url;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
