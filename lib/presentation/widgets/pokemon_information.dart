import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/constants/app_maps.dart';
import 'package:pokedex/constants/app_strings.dart';
import 'package:pokedex/domain/entities/pokemon_tile_data/pokemon_tile_data.dart';
import 'package:pokedex/helpers/capitalizer.dart';
import 'package:pokedex/helpers/description_formatter.dart';
import 'package:pokedex/helpers/number_formatter.dart';
import 'package:pokedex/helpers/string_to_icon_mapper.dart';
import 'package:pokedex/presentation/widgets/colored_line.dart';

import 'package:pokedex/presentation/widgets/custom_top_background.dart';
import 'package:pokedex/presentation/widgets/label_value.dart';
import 'package:pokedex/providers/providers.dart';

class PokemonInformation extends ConsumerWidget {
  const PokemonInformation(
      {required this.name,
      required this.id,
      required this.pokemonInfo,
      super.key});

  final PokemonTileData pokemonInfo;
  final String name;
  final String id;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detailsAsync = ref.watch(fetchPokemonSpeciesInfoProvider(id));

    return Scaffold(
        appBar: AppBar(
          title: Text(name),
          actions: [Icon(Icons.favorite_border_outlined)],
        ),
        body: detailsAsync.when(
          data: (data) => SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Stack(
                    children: [
                      SizedBox(
                        height: 400,
                        width: double.infinity,
                        child: CustomPaint(painter: CustomTopBackground()),
                      ),
                      Center(
                          child:
                              (AppMaps.typeIconMapLarge[pokemonInfo.types[0]])),
                      Positioned(
                          bottom: 0,
                          left: 0,
                          right: 0,
                          child: Center(
                              child: SizedBox(
                            width: 300,
                            child: Image.network(
                              fit: BoxFit.contain,
                              pokemonInfo.frontDefault,
                            ),
                          ))),
                    ],
                  ),
                ),
                Text(
                  capitalizer(name),
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                Text('N° ${numberFormatter(id)}',
                    style: TextStyle(fontSize: 22)),
                SizedBox(height: 10),
                Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: mapStringToIconsMedium(pokemonInfo.types)),
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
                        value: '${(pokemonInfo.weight / 10).toString()} KG',
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
                        value: 'SEMILLA',
                      ),
                    ),
                    Expanded(
                      child: LabelValue(
                        textLabel: AppStrings.kHabilidad.toUpperCase(),
                        icon: Icons.catching_pokemon_outlined,
                        value: 'ESPESURA',
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
                Divider(),
                Text(
                  'Debilidades',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
                ),
                SizedBox(height: 80),
              ],
            ),
          ),
          error: (err, stack) => Text('Error: $err'),
          loading: () => CircularProgressIndicator(),
        ));
  }
}
