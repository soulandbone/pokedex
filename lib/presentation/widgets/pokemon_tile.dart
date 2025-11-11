import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/constants/app_colors.dart';
import 'package:pokedex/constants/app_maps.dart';
import 'package:pokedex/domain/entities/pokemon_full/pokemon_full.dart';
import 'package:pokedex/helpers/capitalizer.dart';
import 'package:pokedex/helpers/number_formatter.dart';
import 'package:pokedex/helpers/string_to_icon_mapper.dart';
import 'package:pokedex/presentation/widgets/pokemon_information.dart';
import 'package:pokedex/providers/favorites.dart';

class PokemonTile extends ConsumerWidget {
  const PokemonTile({required this.pokemon, super.key});

  final PokemonFull pokemon;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final detailsAsync = ref.watch(fetchPokemonDetailsProvider(pokemon.url));

    final isFav = ref.watch(favoritesProvider).contains(pokemon.id);

    // print('Details Async: $detailsAsync');

    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => PokemonInformation(
                  pokemonInfo: pokemon,
                )));
      },
      child: Container(
        decoration: BoxDecoration(
          color: AppMaps.typeTransparentColorMap[pokemon.types[0]],
          borderRadius: BorderRadius.circular(12),
        ),
        margin: EdgeInsets.only(bottom: 10, left: 20, right: 20),
        height: 102,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 4,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'N°${numberFormatter(pokemon.id)} ',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Text(
                        capitalizer(pokemon.name),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        height: 20,
                        child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: mapStringToIcons(pokemon.types)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  color: AppMaps.typeColorMap[pokemon.types[0]],
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Stack(
                  children: [
                    Center(child: AppMaps.typeIconMapLarge[pokemon.types[0]]!),
                    Center(child: Image.network(pokemon.spriteUrl)),
                    Positioned(
                        right: 8,
                        top: 10,
                        child: GestureDetector(
                            onTap: () {
                              ref
                                  .read(favoritesProvider.notifier)
                                  .toggle(pokemon.id);
                            },
                            child: CircleAvatar(
                              radius: 18,
                              backgroundColor: Colors.white,
                              child: CircleAvatar(
                                radius: 16, // Adjust the radius as needed
                                backgroundColor: AppColors
                                    .kLikeCircleBackground, // Background color of the circle
                                child: Icon(
                                  size: 20,
                                  isFav
                                      ? Icons.favorite
                                      : Icons.favorite_border_outlined,
                                  color: isFav ? Colors.red : Colors.white,
                                ),
                              ),
                            ))),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



// detailsAsync.when(
//       data: (details) => GestureDetector(
//         onTap: () {
//           Navigator.of(context).push(MaterialPageRoute(
//               builder: (context) => PokemonInformation(
//                   id: pokemon.id, name: pokemon.name, pokemonInfo: details)));
//         },
//         child: Container(
//           decoration: BoxDecoration(
//             color: AppMaps.typeTransparentColorMap[details.types[0]],
//             borderRadius: BorderRadius.circular(12),
//           ),
//           margin: EdgeInsets.only(bottom: 10, left: 20, right: 20),
//           height: 102,
//           child: Row(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Expanded(
//                 flex: 3,
//                 child: Container(
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.only(
//                       topLeft: Radius.circular(12),
//                       bottomLeft: Radius.circular(12),
//                     ),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(
//                       horizontal: 10,
//                       vertical: 4,
//                     ),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           'N°${numberFormatter(pokemon.id)} ',
//                           style: TextStyle(fontWeight: FontWeight.bold),
//                         ),
//                         Text(
//                           capitalizer(pokemon.name),
//                           style: TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 22,
//                           ),
//                         ),
//                         SizedBox(
//                           height: 40,
//                           child: Row(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: mapStringToIcons(details.types)),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//               Expanded(
//                 flex: 2,
//                 child: Container(
//                   decoration: BoxDecoration(
//                     color: AppMaps.typeColorMap[details.types[0]],
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   child: Center(
//                     child: Stack(
//                       children: [
//                         AppMaps.typeIconMapLarge[details.types[0]]!,
//                         Image.network(details.frontDefault),
//                         Positioned(
//                             right: 5,
//                             top: 10,
//                             child: GestureDetector(
//                               onTap: () {
//                                 ref
//                                     .read(favoritesProvider.notifier)
//                                     .toggle(pokemon.id);
//                               },
//                               child: Icon(
//                                 isFav
//                                     ? Icons.favorite
//                                     : Icons.favorite_border_outlined,
//                                 color: isFav ? Colors.red : Colors.black,
//                               ),
//                             )),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//       error: (err, _) => Text('whatever'),
//       loading: () => CircularProgressIndicator(),
//     );