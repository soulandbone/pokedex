import 'package:pokedex/domain/entities/pokemon_full/pokemon_full.dart';
import 'package:pokedex/domain/states/pokemon_state.dart';
import 'package:pokedex/providers/providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pokemon_state_notifier.g.dart';

@Riverpod(keepAlive: true)
class PokemonStateNotifier extends _$PokemonStateNotifier {
  bool isLoadingMore = false;

  @override
  PokemonState build() => PokemonLoading();

  void setPokemonList(List<PokemonFull> pokemons) {
    state = PokemonLoaded(pokemons);
  }

  void addPokemons(List<PokemonFull> newPokemons) {
    if (state is PokemonLoaded) {
      final currentPokemons = (state as PokemonLoaded).fullPokemons;
      state = PokemonLoaded([...currentPokemons, ...newPokemons]);
    }
  }

  void setError(String message) {
    state = PokemonError(message);
  }

  void loadPokemons({required int offset, required int limit}) async {
    if (isLoadingMore) return;

    if (offset > 0) {
      isLoadingMore = true;
    }

    try {
      final pokemons = await ref
          .read(FetchPokemonFullProvider(offSet: offset, limit: limit).future);

      // print("Fetched ${pokemons.length} pokemons");
      if (offset == 0) {
        setPokemonList(pokemons);
      } else {
        addPokemons(pokemons);
      }
    } catch (e) {
      state = PokemonError(e.toString());
    } finally {
      if (offset > 0) {
        isLoadingMore = false;
      }
    }
  }
}
