import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/constants/app_lists.dart';

import 'package:pokedex/presentation/widgets/pokemon_tile.dart';
import 'package:pokedex/providers/filters.dart';
import 'package:pokedex/providers/providers.dart';

class Pokedex extends ConsumerWidget {
  const Pokedex({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemonAsyncValue = ref.watch(fetchPokemonFullProvider);

    print('Provider data  is $pokemonAsyncValue');

    final filters = ref.watch(filtersProvider);
// 'filters' is List<bool>
    final activeIndices = filters
        .asMap()
        .entries
        .where((entry) => entry.value) // where filter is true
        .map((entry) => entry.key) // extract index
        .toList();

    final activeTypes =
        activeIndices.map((index) => AppLists.tipos[index]).toList();

    // final filteredPokemons = pokemonAsyncValue.when(
    //   data: (pokemons) {
    //     if (activeTypes.isEmpty) {
    //       // no filters selected; show all
    //       return pokemons;
    //     } else {
    //       // filter pokemons whose types intersect with activeTypes
    //       return pokemons
    //           .where((p) => p.types.any((t) => activeTypes.contains(t)))
    //           .toList();
    //     }
    //   },
    //   loading: () => [],
    //   error: (_, __) => [],
    // );

    return Scaffold(
        body: pokemonAsyncValue.when(
      data: (pokemons) => ListView.builder(
        itemCount: pokemons.length,
        itemBuilder: (context, index) => PokemonTile(
          pokemon: pokemons[index],
        ),
      ),
      loading: () => CircularProgressIndicator(),
      error: (err, stack) => Text('Error: $err'),
    ));
  }
}
