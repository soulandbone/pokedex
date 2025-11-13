import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex/constants/app_lists.dart';
import 'package:pokedex/domain/states/pokemon_state.dart';
import 'package:pokedex/presentation/screens/error_screen.dart';
import 'package:pokedex/presentation/screens/modals/filters_modal.dart';

import 'package:pokedex/presentation/widgets/pokemon_tile.dart';
import 'package:pokedex/presentation/widgets/searchbox_pokemon.dart';
import 'package:pokedex/providers/filters.dart';
import 'package:pokedex/providers/pokemon_state_notifier.dart';
import 'package:pokedex/providers/search_box_filters.dart';

class Pokedex extends ConsumerWidget {
  const Pokedex({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentState = ref.watch(pokemonStateNotifierProvider);

    final filters = ref.watch(filtersProvider);
    final searchBoxFilters = ref.watch(searchBoxFiltersProvider);

    bool containsFilter = filters.contains(true);

    final activeIndices = filters
        .asMap()
        .entries
        .where((entry) => entry.value)
        .map((entry) => entry.key)
        .toList();

    final activeTypes =
        activeIndices.map((index) => AppLists.typesOfPokemon[index]).toList();

    // print('Active types are $activeTypes');

    if (currentState is PokemonLoading) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else if (currentState is PokemonLoaded) {
      final filteredPokemons = currentState.fullPokemons.where((pokemon) {
        if (activeTypes.isEmpty) return true;
        return pokemon.types.any((type) => activeTypes.contains(type));
      }).toList();

      final filteredPokemonsByEverything = filteredPokemons
          .where(
            (element) => element.name.contains(searchBoxFilters),
          )
          .toList();

      return GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
            appBar: AppBar(
              title: Text('Pokedex App'),
              automaticallyImplyLeading: false,
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
                  itemCount: filteredPokemonsByEverything.length,
                  itemBuilder: (_, index) =>
                      PokemonTile(pokemon: filteredPokemonsByEverything[index]),
                ))
              ],
            )),
      );
    } else if (currentState is PokemonError) {
      return ErrorScreen();
    }
    return ErrorScreen();
  }
}
