import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon_model.dart';

import 'package:pokedex/presentation/screens/widgets/pokemon_tile.dart';

class Pokedex extends StatelessWidget {
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
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: pokemonNames.length,
        itemBuilder:
            (BuildContext context, int index) =>
                PokemonTile(pokemon: pokemonNames[index]),
      ),
    );
  }
}
