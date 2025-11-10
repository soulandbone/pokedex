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
    final asyncPokemons = ref.watch(fetchPokemonFullProvider);
    return asyncPokemons.when(
      data: (pokemons) {
        final filters = ref.watch(filtersProvider); // List<bool>
        final activeIndices = filters
            .asMap()
            .entries
            .where((entry) => entry.value)
            .map((entry) => entry.key)
            .toList();
        print('Active filters are $activeIndices');

        final activeTypes = activeIndices
            .map((index) => AppLists.typesOfPokemon[index])
            .toList();

        final filteredPokemons = pokemons.where((pokemon) {
          if (activeTypes.isEmpty) return true;
          return pokemon.types.any((type) => activeTypes.contains(type));
        }).toList();

        print('Active types are $activeTypes');

        return ListView.builder(
          itemCount: filteredPokemons.length,
          itemBuilder: (_, index) =>
              PokemonTile(pokemon: filteredPokemons[index]),
        );
      },
      loading: () => CircularProgressIndicator(),
      error: (_, __) => Text('Error loading Pokémon'),
    );
  }
}



// return filteredPokemonsAsync.when(
//   data: (pokemons) {
//     final activeTypes =
//         ref.watch(filtersProvider).where((_, active) => active).keys.toList();

//     final filteredPokemons = pokemons.where((pokemon) {
//       if (activeTypes.isEmpty) return true;
//       return pokemon.types.any((type) => activeTypes.contains(type));
//     }).toList();

//     return ListView.builder(
//       itemCount: filteredPokemons.length,
//       itemBuilder: (_, index) {
//         return PokemonTile(pokemon: filteredPokemons[index]);
//       },
//     );
//   },
//   loading: () => CircularProgressIndicator(),
//   error: (_, __) => Text('Error loading Pokémon'),
// );



// class Pokedex extends ConsumerWidget {
//   const Pokedex({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final pokemons = ref.watch(fetchPokemonFullProvider);

//     print('Provider data  is $pokemons');

//     final filters = ref.watch(filtersProvider);
// // 'filters' is List<bool>
//     final activeIndices = filters
//         .asMap()
//         .entries
//         .where((entry) => entry.value) // where filter is true
//         .map((entry) => entry.key) // extract index
//         .toList();

//     print('Active filters are $activeIndices');

//     final activeTypes =
//         activeIndices.map((index) => AppLists.tipos[index]).toList();

//     print('Active types are $activeTypes');

//     final filteredPokemons = pokemons.where((pokemon) {
//       // If no filters active, show all
//       if (activeTypes.isEmpty) return true;

//       // Otherwise, show Pokémon that have **at least one** type in activeTypes
//       return pokemon.types.any((type) => activeTypes.contains(type));
//     }).toList();

//     return Scaffold(
//         body: pokemonAsyncValue.when(
//       data: (pokemons) => ListView.builder(
//         itemCount: pokemons.length,
//         itemBuilder: (context, index) => PokemonTile(
//           pokemon: pokemons[index],
//         ),
//       ),
//       loading: () => CircularProgressIndicator(),
//       error: (err, stack) => Text('Error: $err'),
//     ));
//   }
// }