import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/domain/entities/pokemon/pokemon.dart';
import 'package:pokedex/helpers/string_to_icon_mapper.dart';
import 'package:pokedex/providers/providers.dart';

class PokemonTile extends ConsumerWidget {
  const PokemonTile({required this.pokemon, super.key});

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final detailsAsync = ref.watch(fetchPokemonDetailsProvider(pokemon.url));
    print('Details Async: $detailsAsync');

    return detailsAsync.when(
        data: (details) => Dismissible(
              key: ValueKey(pokemon.name),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.amber,
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
                              Text(details.weight.toString()),
                              Text(
                                pokemon.name,
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 22,
                                ),
                              ),
                              SizedBox(
                                height: 40,
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: mapStringToIcons(details.types)),
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
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Stack(
                          children: [
                            Image.asset(
                              'assets/large_icons/grass.png',
                              fit: BoxFit.fitHeight,
                            ),
                            Image.network(details.frontDefault),
                            Positioned(
                              right: 10,
                              top: 10,
                              child: Icon(Icons.favorite_border_outlined),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
        error: (err, _) => Text('whatever'),
        loading: () => Text('Test'));
  }
}
