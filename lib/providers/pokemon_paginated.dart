// lib/providers/pokemon_paginated.dart
import 'package:pokedex/providers/providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:pokedex/domain/entities/pokemon_full/pokemon_full.dart';

part 'pokemon_paginated.g.dart';

@riverpod
class PokemonPaginated extends _$PokemonPaginated {
  int _offset = 0; // your offset
  final int _limit = 20;

  int get offset => _offset;

  @override
  List<PokemonFull> build() {
    return [];
  }

  // call this method to load more Pokémon
  Future<void> loadMore() async {
    final repository = ref.read(pokemonFullRepositoryProvider);
    final newPokemons = await repository.fetchPokemonFullList(
      limit: _limit,
      offset: _offset,
    );
    state = [...state, ...newPokemons]; // append new items
    _offset += _limit; // update offset
  }
}
