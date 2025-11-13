import 'package:pokedex/domain/entities/pokemon_full/pokemon_full.dart';
import 'package:pokedex/domain/states/pokemon_state.dart';
import 'package:pokedex/providers/providers.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'pokemon_state_notifier.g.dart';

@Riverpod(keepAlive: true)
class PokemonStateNotifier extends _$PokemonStateNotifier {
  @override
  PokemonState build() => PokemonLoading();

  void setPokemonList(List<PokemonFull> pokemons) {
    state = PokemonLoaded(pokemons);
  }

  void setError(String message) {
    state = PokemonError(message);
  }

  void loadPokemons() async {
    print('starting to load pokemons');
    // state = PokemonLoading();

    try {
      final pokemons = await ref
          .read(FetchPokemonFullProvider(offSet: 0, limit: 125).future);

      print("Fetched ${pokemons.length} pokemons");
      setPokemonList(pokemons);
    } catch (e) {
      state = PokemonError(e.toString());
    }
  }
}
