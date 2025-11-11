import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex/constants/app_colors.dart';
import 'package:pokedex/constants/app_maps.dart';
import 'package:pokedex/constants/app_strings.dart';
import 'package:pokedex/domain/entities/pokemon_full/pokemon_full.dart';
import 'package:pokedex/helpers/capitalizer.dart';
import 'package:pokedex/helpers/description_formatter.dart';
import 'package:pokedex/helpers/number_formatter.dart';
import 'package:pokedex/helpers/string_to_icon_mapper.dart';
import 'package:pokedex/presentation/widgets/colored_line.dart';

import 'package:pokedex/presentation/widgets/custom_top_background.dart';
import 'package:pokedex/presentation/widgets/label_value.dart';
import 'package:pokedex/presentation/widgets/weaknesses_grid.dart';
import 'package:pokedex/providers/favorites.dart';
import 'package:pokedex/providers/providers.dart';

class PokemonInformation extends ConsumerWidget {
  const PokemonInformation({required this.pokemonInfo, super.key});

  final PokemonFull pokemonInfo;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    double marginHorizontal = 10;
    final isFav = ref.watch(favoritesProvider).contains(pokemonInfo.id);
    final speciesInfo =
        ref.watch(fetchPokemonSpeciesInfoProvider(pokemonInfo.id));
    return Scaffold(
        appBar: AppBar(
          title: Text(capitalizer(pokemonInfo.name)),
        ),
        body: speciesInfo.when(
            data: (data) => SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Center(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: 350,
                              width: double.infinity,
                              child: CustomPaint(
                                  painter: CustomTopBackground(
                                      color: AppMaps
                                          .typeColorMap[pokemonInfo.types[0]])),
                            ),
                            Center(
                                child: (AppMaps
                                    .typeIconMapLarge[pokemonInfo.types[0]])),
                            Positioned(
                                bottom: 0,
                                left: 0,
                                right: 0,
                                child: Center(
                                    child: SizedBox(
                                  width: 300,
                                  child: Image.network(
                                    fit: BoxFit.contain,
                                    pokemonInfo.spriteUrl,
                                  ),
                                ))),
                            Positioned(
                              right: 30,
                              top: 30,
                              child: GestureDetector(
                                onTap: () {
                                  ref
                                      .read(favoritesProvider.notifier)
                                      .toggle(pokemonInfo.id);
                                },
                                child: Icon(
                                  size: 40,
                                  isFav
                                      ? Icons.favorite
                                      : Icons.favorite_border_outlined,
                                  color: isFav ? Colors.red : Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: marginHorizontal),
                        child: Text(
                          capitalizer(pokemonInfo.name),
                          style: GoogleFonts.poppins(
                              fontSize: 32, fontWeight: FontWeight.w500),
                        ),
                      ),
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: marginHorizontal),
                        child: Text('N° ${numberFormatter(pokemonInfo.id)}',
                            style: TextStyle(fontSize: 22)),
                      ),
                      SizedBox(height: 10),
                      Container(
                        margin:
                            EdgeInsets.symmetric(horizontal: marginHorizontal),
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children:
                                mapStringToIconsMedium(pokemonInfo.types)),
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        child: Text(descriptionFormatter(data.description),
                            softWrap: true),
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: LabelValue(
                              textLabel: AppStrings.kPeso.toUpperCase(),
                              icon: Icons.balance,
                              value:
                                  '${(pokemonInfo.weight / 10).toString()} KG',
                            ),
                          ),
                          Expanded(
                            child: LabelValue(
                              textLabel: AppStrings.kAltura.toUpperCase(),
                              icon: Icons.height,
                              value: '${pokemonInfo.height / 10} m',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Expanded(
                            child: LabelValue(
                              textLabel: AppStrings.kCategoria.toUpperCase(),
                              icon: Icons.category_outlined,
                              value: data.genus,
                            ),
                          ),
                          Expanded(
                            child: LabelValue(
                              textLabel: AppStrings.kHabilidad.toUpperCase(),
                              icon: Icons.catching_pokemon_outlined,
                              value: pokemonInfo.abilities[0],
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 30),
                      Center(child: Text('GENERO')),
                      SizedBox(height: 30),
                      ColoredLine(
                          backgroundColor: Colors.red,
                          fillColor: Colors.blue,
                          genderRate: data.genderRate),
                      SizedBox(
                        height: 120,
                      ),
                      Text(
                        'Debilidades',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 32),
                      ),
                      WeaknessesGrid(
                          types: ['grass', 'poison', 'flying', 'fighting']),
                      SizedBox(
                        height: 100,
                      )
                    ],
                  ),
                ),
            error: (err, stack) => Text('Error: $err'),
            loading: () => CircularProgressIndicator()));
  }
}
