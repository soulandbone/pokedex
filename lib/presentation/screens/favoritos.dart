import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/domain/states/pokemon_state.dart';
import 'package:pokedex/presentation/screens/favorites_empty.dart';
import 'package:pokedex/presentation/widgets/pokemon_tile.dart';
import 'package:pokedex/providers/favorites.dart';
import 'package:pokedex/providers/pokemon_state_notifier.dart';

class Favoritos extends ConsumerWidget {
  const Favoritos({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemonState = ref.watch(pokemonStateNotifierProvider);

    if (pokemonState is! PokemonLoaded) {
      return Center(
        child: CircularProgressIndicator(),
      );
    }

    final favorites = ref.watch(favoritesProvider);
    final allPokemons = pokemonState.fullPokemons;

    print('favorites in favorites are $favorites');
    final filteredPokemons =
        allPokemons.where((p) => favorites.contains(p.id)).toList();

    return filteredPokemons.isEmpty
        ? FavoritesEmpty()
        : ListView.builder(
            itemCount: filteredPokemons.length,
            itemBuilder: (context, index) {
              final pokemon = filteredPokemons[index];
              // print('${pokemon.id}');
              return Dismissible(
                  background: Container(),
                  secondaryBackground: Container(
                    color: Colors.redAccent,
                    alignment: Alignment.centerRight,
                    padding: EdgeInsets.only(right: 20),
                    child: Icon(
                      Icons.delete_outline,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  onDismissed: (direction) {
                    ref.read(favoritesProvider.notifier).toggle(pokemon.id);
                  },
                  key: ValueKey(pokemon.id),
                  child: PokemonTile(pokemon: pokemon));
            },
          );
  }
}
