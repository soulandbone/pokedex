import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/presentation/widgets/pokemon_tile.dart';
import 'package:pokedex/providers/favorites.dart';
import 'package:pokedex/providers/providers.dart';

class Favoritos extends ConsumerWidget {
  const Favoritos({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final allPokemons = ref.watch(pokemonListProvider);
    final favorites = ref.watch(favoritesProvider);
    final filteredPokemons = allPokemons.when(
      data: (allPokemons) =>
          allPokemons.where((p) => favorites.contains(p.id)).toList(),
      loading: () => [],
      error: (e, st) => [],
    );
    return ListView.builder(
      itemCount: filteredPokemons.length,
      itemBuilder: (context, index) {
        final pokemon = filteredPokemons[index];
        print('${pokemon.id}');
        return Dismissible(
            onDismissed: (direction) {
              ref.read(favoritesProvider.notifier).toggle(pokemon.id);
            },
            key: ValueKey(pokemon.id),
            child: PokemonTile(pokemon: pokemon));
      },
    );
  }
}
