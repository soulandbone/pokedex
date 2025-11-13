import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Regiones extends ConsumerWidget {
  const Regiones({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // print('Pokemons list in regions is $pokemonsList');
    return Scaffold(
      body: Center(child: Image.asset('assets/regions_pokemon.jpg')),
    );
  }
}
