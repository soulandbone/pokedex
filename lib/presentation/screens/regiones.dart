import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon_info.dart';

class Regiones extends StatelessWidget {
  const Regiones({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Whatever')),
      body: Center(child: Image.asset('assets/grass.png')),
    );
  }
}
