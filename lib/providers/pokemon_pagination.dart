// lib/providers/pokemon_pagination.dart
import 'package:pokedex/providers/providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:pokedex/domain/entities/pokemon_full/pokemon_full.dart';
import 'package:pokedex/domain/pokemon_full_repository.dart';

part 'pokemon_pagination.g.dart';

@Riverpod(keepAlive: true)
class PokemonPagination extends _$PokemonPagination {
  int _offset = 0; // Internal offset
  final int _limit = 100; // Batch size

  @override
  FutureOr<List<PokemonFull>> build() async {
    // Initialize repository here
    final repository = ref.read(pokemonFullRepositoryProvider);

    // Start with an empty list
    return [];
  }

  // Function to load next batch
  Future<void> loadNext() async {
    // Ensure we're not already loading
    if (state.isLoading) return;

    state = const AsyncValue.loading();

    try {
      final repository = ref.read(pokemonFullRepositoryProvider);
      final newPokemons = await repository.fetchPokemonFullList(
        limit: _limit,
        offset: _offset,
      );

      // Update state with new data
      state = AsyncValue.data([...state.value ?? [], ...newPokemons]);
      _offset += _limit; // Increment offset
    } catch (e, st) {
      state = AsyncValue.error(e, st);
    }
  }
}
