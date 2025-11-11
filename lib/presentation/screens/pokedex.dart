import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex/constants/app_lists.dart';
import 'package:pokedex/presentation/screens/error_screen.dart';
import 'package:pokedex/presentation/screens/modals/filters_modal.dart';

import 'package:pokedex/presentation/widgets/pokemon_tile.dart';
import 'package:pokedex/presentation/widgets/searchbox_pokemon.dart';
import 'package:pokedex/providers/filters.dart';
import 'package:pokedex/providers/providers.dart';

class Pokedex extends ConsumerWidget {
  const Pokedex({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final asyncPokemons =
        ref.watch(FetchPokemonFullProvider(offSet: 0, limit: 200));

    final filters = ref.watch(filtersProvider);
    bool containsFilter = filters.contains(true);

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

        // print('Active types are $activeTypes');

        return Scaffold(
            appBar: AppBar(
              actions: [
                IconButton(
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (context) => FiltersModal());
                    },
                    icon: Icon(Icons.filter_alt))
              ],
            ),
            body: Column(
              children: [
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Row(
                    children: [
                      Expanded(child: SearchBoxPokemon()),
                      SizedBox(
                        width: 30,
                      ),
                      Container(
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(color: Colors.grey, width: 1)),
                        child: CircleAvatar(
                            backgroundColor: Colors.white,
                            child: Icon(Icons.search)),
                      )
                    ],
                  ),
                ),
                containsFilter
                    ? Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Se han encontrado ',
                              style: GoogleFonts.montserrat(fontSize: 14),
                            ),
                            Text(
                              '${filteredPokemons.length} resultados ',
                              style: GoogleFonts.montserrat(
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                  color: Color.fromRGBO(158, 158, 158, 1)),
                            ),
                            GestureDetector(
                                onTap: () {
                                  ref
                                      .read(filtersProvider.notifier)
                                      .clearFilters();
                                },
                                child: Text(
                                  'Borrar filtro',
                                  style: GoogleFonts.montserrat(
                                      decoration: TextDecoration.underline,
                                      color: Colors.blue),
                                ))
                          ],
                        ),
                      )
                    : SizedBox(),
                SizedBox(
                  height: 10,
                ),
                Expanded(
                    child: ListView.builder(
                  itemCount: filteredPokemons.length,
                  itemBuilder: (_, index) =>
                      PokemonTile(pokemon: filteredPokemons[index]),
                ))
              ],
            ));
      },
      loading: () => Center(child: CircularProgressIndicator()),
      error: (_, __) => ErrorScreen(),
    );
  }
}





// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:pokedex/constants/app_lists.dart';

// import 'package:pokedex/presentation/widgets/pokemon_tile.dart';
// import 'package:pokedex/providers/filters.dart';
// import 'package:pokedex/providers/offset_controller.dart';
// import 'package:pokedex/providers/providers.dart';

// class Pokedex extends ConsumerWidget {
//   const Pokedex({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final currentOffset = ref.read(offsetControllerProvider);

    // final asyncPokemons =
    //     ref.watch(fetchPokemonFullProvider(limit: 100, offSet: currentOffset));
    // return asyncPokemons.when(
    //   data: (pokemons) {
    //     final filters = ref.watch(filtersProvider); // List<bool>
    //     final activeIndices = filters
    //         .asMap()
    //         .entries
    //         .where((entry) => entry.value)
    //         .map((entry) => entry.key)
    //         .toList();
    //     print('Active filters are $activeIndices');

    //     final activeTypes = activeIndices
    //         .map((index) => AppLists.typesOfPokemon[index])
    //         .toList();

    //     final filteredPokemons = pokemons.where((pokemon) {
    //       if (activeTypes.isEmpty) return true;
    //       return pokemon.types.any((type) => activeTypes.contains(type));
    //     }).toList();

    //     print('Active types are $activeTypes');

//         return ListView.builder(
//           itemCount: filteredPokemons.length,
//           itemBuilder: (_, index) =>
//               PokemonTile(pokemon: filteredPokemons[index]),
//         );
//       },
//       loading: () => CircularProgressIndicator(),
//       error: (_, __) => Text('Error loading Pokémon'),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:pokedex/constants/app_lists.dart';
// import 'package:pokedex/domain/entities/pokemon_full/pokemon_full.dart';
// import 'package:pokedex/presentation/screens/error_screen.dart';
// import 'package:pokedex/presentation/widgets/pokemon_tile.dart';
// import 'package:pokedex/providers/filters.dart';
// import 'package:pokedex/providers/pokemon_pagination.dart';

// class Pokedex extends ConsumerStatefulWidget {
//   const Pokedex({super.key});

//   @override
//   _PokedexState createState() => _PokedexState();
// }

// class _PokedexState extends ConsumerState<Pokedex> {
//   final ScrollController _scrollController = ScrollController();
//   bool _isLoadingMore = false;

//   @override
//   void initState() {
//     super.initState();
//     _scrollController.addListener(_onScroll);
//   }

//   @override
//   void dispose() {
//     _scrollController.dispose();
//     super.dispose();
//   }

//   void _onScroll() {
//     if (_scrollController.position.pixels >=
//         _scrollController.position.maxScrollExtent - 200) {
//       _loadMore();
//     }
//   }

//   Future<void> _loadMore() async {
//     if (!_isLoadingMore) {
//       _isLoadingMore = true;
//       await ref.read(pokemonPaginationProvider.notifier).loadNext();
//       _isLoadingMore = false;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     final asyncPokemons = ref.watch(pokemonPaginationProvider);

//     return asyncPokemons.when(
//       data: (pokemons) {
//         final filters = ref.watch(filtersProvider);
//         final activeIndices = filters
//             .asMap()
//             .entries
//             .where((entry) => entry.value)
//             .map((entry) => entry.key)
//             .toList();

//         final activeTypes = activeIndices
//             .map((index) => AppLists.typesOfPokemon[index])
//             .toList();

//         final filteredPokemons = pokemons.where((pokemon) {
//           if (activeTypes.isEmpty) return true;
//           return pokemon.types.any((type) => activeTypes.contains(type));
//         }).toList();

//         return CustomScrollView(
//           controller: _scrollController,
//           slivers: [
//             SliverList(
//               delegate: SliverChildBuilderDelegate(
//                 (context, index) {
//                   if (index < filteredPokemons.length) {
//                     return PokemonTile(pokemon: filteredPokemons[index]);
//                   } else if (index == filteredPokemons.length) {
//                     return Center(
//                       child: asyncPokemons.isLoading
//                           ? CircularProgressIndicator()
//                           : ElevatedButton(
//                               onPressed: _loadMore,
//                               child: Text('Load More'),
//                             ),
//                     );
//                   }
//                   return null;
//                 },
//                 childCount: filteredPokemons.length + 1,
//               ),
//             ),
//           ],
//         );
//       },
//       loading: () => Center(child: CircularProgressIndicator()),
//       error: (error, _) => ErrorScreen(),
//     );
//   }
// }