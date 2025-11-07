import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon_info.dart';
import 'package:pokedex/presentation/widgets/custom_ellipse.dart';
import 'package:pokedex/presentation/widgets/label_value.dart';

class PokemonInformation extends StatelessWidget {
  const PokemonInformation({required this.pokemonInfo, super.key});

  final PokemonInfo pokemonInfo;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(pokemonInfo.name),
        actions: [Icon(Icons.favorite_border_outlined)],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Stack(
                children: [
                  SizedBox(
                    height: 500,
                    width: double.infinity,
                    child: CustomPaint(painter: CustomEllipse()),
                  ),
                  Image.asset('assets/large_icons/grass.png'),
                ],
              ),
            ),
            Text(
              pokemonInfo.name,
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            Text(pokemonInfo.id.toString(), style: TextStyle(fontSize: 22)),
            SizedBox(height: 90),
            Row(children: [Text('Veneno'), Text('Planta')]),
            Text(pokemonInfo.description),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                LabelValue(
                  textLabel: 'Peso',
                  icon: Icons.balance,
                  value: '6.9 kg',
                ),
                LabelValue(
                  textLabel: 'Altura',
                  icon: Icons.height,
                  value: '0.7 m',
                ),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                LabelValue(
                  textLabel: 'Categoria',
                  icon: Icons.category,
                  value: 'SEMILLA',
                ),
                LabelValue(
                  textLabel: 'Habilidad',
                  icon: Icons.sports_basketball,
                  value: 'ESPESURA',
                ),
              ],
            ),
            SizedBox(height: 30),
            Center(child: Text('GENERO')),
            SizedBox(height: 140),
            Divider(),
            Text(
              'Debilidades',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 32),
            ),
            SizedBox(height: 80),
          ],
        ),
      ),
    );
  }
}
