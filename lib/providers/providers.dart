import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dio/dio.dart';

import 'package:pokedex/data/datasources/pokemon_api_client.dart';
import 'package:pokedex/domain/entities/pokemon.dart';
import 'package:pokedex/domain/pokemon_repository.dart';
import 'package:pokedex/data/repositories/pokemon_repository_impl.dart';

part 'providers.g.dart';

@riverpod
Dio dio(DioRef ref) {
  return Dio(); // or your customized Dio instance
}

@riverpod
PokemonApiClient pokemonApiClient(PokemonApiClientRef ref) {
  final dioInstance = ref.read(dioProvider);
  return PokemonApiClient(dioInstance);
}

@riverpod
PokemonRepository pokemonRepository(PokemonRepositoryRef ref) {
  return PokemonRepositoryImpl(ref.read(pokemonApiClientProvider));
}

@riverpod
Future<List<Pokemon>> pokemonList(PokemonListRef ref) async {
  final repository = ref.watch(pokemonRepositoryProvider);
  return repository.fetchPokemons();
}
