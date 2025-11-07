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
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
