import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/models/pokemon_model.dart';

import 'package:pokedex/presentation/widgets/pokemon_tile.dart';
import 'package:pokedex/providers/providers.dart';

class Pokedex extends ConsumerWidget {
  Pokedex({super.key});

  List<PokemonModel> pokemonNames = [
    PokemonModel(
      id: 1,
      name: 'Bulbasaur',
      color: Colors.deepOrange,
      spriteUrl: 'assets/bulbasaur_sprite.png',
      backgroundIcon: 'assets/grass.png',
      tipos: [
        Image.asset('assets/planta.png', width: 70, height: 70),
        Image.asset('assets/veneno.png', width: 70, height: 70),
      ],
    ),
    PokemonModel(
      id: 2,
      name: 'Charmander',
      color: Colors.amber,
      spriteUrl: 'assets/bulbasaur_sprite.png',
      backgroundIcon: 'assets/grass.png',
      tipos: [
        Image.asset('assets/planta.png', width: 70, height: 70),
        Image.asset('assets/veneno.png', width: 70, height: 70),
      ],
    ),
  ];

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final pokemonAsyncValue = ref.watch(pokemonListProvider);

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
