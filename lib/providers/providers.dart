import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/data/datasources/pokemon_species_info_api_client.dart';

import 'package:pokedex/data/datasources/pokemon_tile_data_api_client.dart';
import 'package:pokedex/data/datasources/pokemon_type_info_api_client.dart';
import 'package:pokedex/data/repositories/pokemon_full_repository_impl.dart';
import 'package:pokedex/data/repositories/pokemon_species_info_repository_impl.dart';
import 'package:pokedex/data/repositories/pokemon_tile_data_repository.impl.dart';
import 'package:pokedex/data/repositories/pokemon_type_info_repository_impl.dart';
import 'package:pokedex/domain/entities/pokemon_full/pokemon_full.dart';
import 'package:pokedex/domain/entities/pokemon_species_info/pokemon_species_info.dart';

import 'package:pokedex/domain/entities/pokemon_tile_data/pokemon_tile_data.dart';
import 'package:pokedex/domain/entities/pokemon_type_info/pokemon_type_info.dart';
import 'package:pokedex/domain/pokemon_full_repository.dart';
import 'package:pokedex/domain/pokemon_species_info_repository.dart';

import 'package:pokedex/domain/pokemon_tile_data_repository.dart';
import 'package:pokedex/domain/pokemon_type_info_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:dio/dio.dart';

import 'package:pokedex/data/datasources/pokemon_api_client.dart';
import 'package:pokedex/domain/entities/pokemon/pokemon.dart';
import 'package:pokedex/domain/pokemon_repository.dart';
import 'package:pokedex/data/repositories/pokemon_repository_impl.dart';

part 'providers.g.dart';

@riverpod
Dio dio(Ref ref) {
  return Dio();
}

@riverpod
PokemonApiClient pokemonApiClient(Ref ref) {
  //PokemonApiClientRef
  final dioInstance = ref.read(dioProvider);
  return PokemonApiClient(dioInstance);
}

@riverpod
PokemonRepository pokemonRepository(Ref ref) {
  //PokemonRepositoryRef
  return PokemonRepositoryImpl(ref.read(pokemonApiClientProvider));
}

@Riverpod(keepAlive: true)
Future<List<Pokemon>> pokemonList(Ref ref) async {
  //PokemonListRef
  final repository = ref.watch(pokemonRepositoryProvider);
  return repository.fetchPokemons();
}

@riverpod
PokemonTileDataApiClient pokemonTileDataApiClient(Ref ref) {
  //PokemonApiClientRef
  final dioInstance = ref.read(dioProvider);
  return PokemonTileDataApiClient(dioInstance);
}

@riverpod
PokemonTileDataRepository pokemonTileDataRepository(Ref ref) {
  //PokemonRepositoryRef
  return PokemonTileDataRepositoryImpl(
      ref.read(pokemonTileDataApiClientProvider));
}

@Riverpod(keepAlive: true)
Future<PokemonTileData> fetchPokemonDetails(Ref ref, String url) async {
  //fetchPokemonDetailsRef
  final repository = ref.read(pokemonTileDataRepositoryProvider);
  return repository.fetchPokemonTileData(url);
}

@riverpod
PokemonSpeciesInfoApiClient pokemonSpeciesInfoApiClient(Ref ref) {
  //PokemonApiClientRef
  final dioInstance = ref.read(dioProvider);
  return PokemonSpeciesInfoApiClient(dioInstance);
}

@riverpod
PokemonSpeciesInfoRepository pokemonSpeciesInfoRepository(Ref ref) {
  //PokemonRepositoryRef
  return PokemonSpeciesInfoRepositoryImpl(
      ref.read(pokemonSpeciesInfoApiClientProvider));
}

@riverpod
Future<PokemonSpeciesInfo> fetchPokemonSpeciesInfo(Ref ref, String id) async {
  //fetchPokemonDetailsRef
  final repository = ref.read(pokemonSpeciesInfoRepositoryProvider);
  return repository.fetchPokemonSpeciesInfo(id);
}

@riverpod
PokemonFullRepository pokemonFullRepository(Ref ref) {
  //PokemonRepositoryRef
  return PokemonFullRepositoryImpl(ref.read(pokemonApiClientProvider),
      ref.read(pokemonTileDataApiClientProvider));
}

@Riverpod(keepAlive: true)
Future<List<PokemonFull>> fetchPokemonFull(Ref ref,
    {required int offSet, required int limit}) async {
  //fetchPokemonDetailsRef
  final repository = ref.read(pokemonFullRepositoryProvider);
  return repository.fetchPokemonFullList(limit: limit, offset: offSet);
}

@riverpod
PokemonTypeInfoApiClient pokemonTypeInfoApiClient(Ref ref) {
  //PokemonApiClientRef
  final dioInstance = ref.read(dioProvider);
  return PokemonTypeInfoApiClient(dioInstance);
}

@riverpod
PokemonTypeInfoRepository pokemonTypeInfoRepository(Ref ref) {
  //PokemonRepositoryRef
  return PokemonTypeInfoRepositoryImpl(
      ref.read(pokemonTypeInfoApiClientProvider));
}

@riverpod
Future<List<PokemonTypeInfo>> fetchPokemonTypeInfo(
    Ref ref, List<String> types) async {
  //fetchPokemonDetailsRef
  final repository = ref.read(pokemonTypeInfoRepositoryProvider);

  return repository.fetchTypeInfo(types);
}
