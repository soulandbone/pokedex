import 'package:flutter/material.dart';

class PokemonModel {
  PokemonModel({
    required this.id,
    required this.name,
    required this.color,
    required this.spriteUrl,
    required this.backgroundIcon,
    required this.tipos,
  });

  final int id;
  final String name;
  final Color color;
  final String spriteUrl;
  final String backgroundIcon;
  final List<Widget> tipos;
}
