import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex/constants/app_lists.dart';
import 'package:pokedex/constants/app_strings.dart';
import 'package:pokedex/domain/states/pokemon_state.dart';
import 'package:pokedex/presentation/screens/error_screen.dart';
import 'package:pokedex/presentation/screens/modals/filters_modal.dart';

import 'package:pokedex/presentation/widgets/pokemon_tile.dart';
import 'package:pokedex/presentation/widgets/searchbox_pokemon.dart';
import 'package:pokedex/providers/filters.dart';
import 'package:pokedex/providers/pokemon_state_notifier.dart';
import 'package:pokedex/providers/search_box_filters.dart';

class Pokedex extends ConsumerStatefulWidget {
  const Pokedex({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _PokedexState();
}

class _PokedexState extends ConsumerState<Pokedex> {
  final TextEditingController _textController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _textController.text = ref.read(
        searchBoxFiltersProvider); //Inicializo el controller para que tenga el valor por default
  }

  @override
  void dispose() {
    _textController
        .dispose(); //dispongo del controller para que no haya memory leak
    super.dispose();
  }

  void clearSearchBox() {
    ref
        .read(searchBoxFiltersProvider.notifier)
        .setSearchBoxFilter(''); //I set the filter to an empty string
    _textController.clear(); // I clear the controller
    FocusScope.of(context).unfocus(); // Unfocus the keyboard
  }

  @override
  Widget build(BuildContext context) {
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
                      Expanded(
                          child: SearchBoxPokemon(
                        controller: _textController,
                      )),
                      SizedBox(
                        width: 30,
                      ),
                      InkWell(
                        onTap: () {
                          clearSearchBox();
                        }, // This is to clear what is in the controller
                        child: Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(color: Colors.grey, width: 1)),
                          child: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Icon(Icons.clear)),
                        ),
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
                filteredPokemonsByEverything.isEmpty
                    ? Text(
                        AppStrings.kNoHayPokemonesConCriterioDeBusq,
                        style: GoogleFonts.poppins(),
                      )
                    : Expanded(
                        child: ListView.builder(
                        itemCount: filteredPokemonsByEverything.length,
                        itemBuilder: (_, index) => PokemonTile(
                            pokemon: filteredPokemonsByEverything[index]),
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
