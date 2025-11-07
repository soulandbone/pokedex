import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/models/pokemon_info.dart';

import 'package:pokedex/presentation/widgets/pokemon_information.dart';

void main() {
  runApp(
    // For widgets to be able to read providers, we need to wrap the entire
    // application in a "ProviderScope" widget.
    // This is where the state of our providers will be stored.
    ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: PokemonInformation(
          pokemonInfo: PokemonInfo(
              name: 'Bulbasaur',
              description: 'This is the short description about the Pokemon',
              id: 1,
              weight: 69,
              height: 7,
              category: 'Planta',
              skill: 'Germinar',
              gender: 2,
              weaknesses: ['Veneno'])),
    );
  }
}
