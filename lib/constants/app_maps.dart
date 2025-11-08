import 'package:flutter/material.dart';

double width = 70;
double height = 70;

class AppMaps {
  static Map<String, Widget> typeIconMapSmall = {
    'grass': Image.asset(
      'assets/small_icons/planta.png',
      width: width,
      height: height,
    ), // example icon
    'bug': Image.asset(
      'assets/small_icons/bicho.png',
      width: width,
      height: height,
    ),
    'normal': Image.asset(
      'assets/small_icons/normal.png',
      width: width,
      height: height,
    ),
    'flying': Image.asset(
      'assets/small_icons/volador.png',
      width: width,
      height: height,
    ),
    'poison': Image.asset(
      'assets/small_icons/veneno.png',
      width: width,
      height: height,
    ),
    'fire': Image.asset(
      'assets/small_icons/fuego.png',
      width: width,
      height: height,
    ),
    'water': Image.asset(
      'assets/small_icons/agua.png',
      width: width,
      height: height,
    ),
    'electric': Image.asset(
      'assets/small_icons/electrico.png',
      width: width,
      height: height,
    ),
    'ground': Image.asset(
      'assets/small_icons/tierra.png',
      width: width,
      height: height,
    ),
    'fairy': Image.asset(
      'assets/small_icons/hada.png',
      width: width,
      height: height,
    ),
    'fighting': Image.asset(
      'assets/small_icons/lucha.png',
      width: width,
      height: height,
    ),
    'psychic': Image.asset(
      'assets/small_icons/psiquico.png',
      width: width,
      height: height,
    ),
    'rock': Image.asset(
      'assets/small_icons/roca.png',
      width: width,
      height: height,
    ),
    'steel': Image.asset(
      'assets/small_icons/acero.png',
      width: width,
      height: height,
    ),
    'ice': Image.asset(
      'assets/small_icons/hielo.png',
      width: width,
      height: height,
    ),
    'ghost': Image.asset(
      'assets/small_icons/fantasma.png',
      width: width,
      height: height,
    ),
    'dragon': Image.asset(
      'assets/small_icons/dragon.png',
      width: width,
      height: height,
    ),
    'dark': Image.asset(
      'assets/small_icons/siniestro.png',
      width: width,
      height: height,
    )

    // more icons
  };

  static Map<String, Widget> typeIconMapLarge = {
    'grass': Image.asset(
      'assets/large_icons/grass.png',
    ), // example icon
    'bug': Image.asset(
      'assets/large_icons/bug.png',
    ),
    'normal': Image.asset(
      'assets/large_icons/normal.png',
    ),
    'flying': Image.asset(
      'assets/large_icons/flying.png',
    ),
    'poison': Image.asset(
      'assets/large_icons/poison.png',
    ),
    'fire': Image.asset(
      'assets/large_icons/fire.png',
    ),
    'water': Image.asset(
      'assets/large_icons/water.png',
    ),
    'electric': Image.asset(
      'assets/large_icons/electric.png',
    ),
    'ground': Image.asset(
      'assets/large_icons/ground.png',
    ),
    'fairy': Image.asset(
      'assets/large_icons/fairy.png',
    ),
    'fighting': Image.asset(
      'assets/large_icons/fighting.png',
    ),
    'psychic': Image.asset(
      'assets/large_icons/psychic.png',
    ),
    'rock': Image.asset(
      'assets/large_icons/rock.png',
    ),
    'steel': Image.asset(
      'assets/large_icons/steel.png',
    ),
    'ice': Image.asset(
      'assets/large_icons/ice.png',
    ),
    'ghost': Image.asset(
      'assets/large_icons/ghost.png',
    ),
    'dragon': Image.asset(
      'assets/large_icons/dragon.png',
    ),
    'dark': Image.asset(
      'assets/large_icons/dark.png',
    )
  };

  // static Map<String, Color> typeColorMap = {
  //   'grass': Color()// example icon
  //   'bug': Color(),
  //   'normal': Color(),
  //   'flying': Color(),
  //   'poison':Color(),
  //   'fire': Color(),
  //   'water': Color(),
  //   'electric': Color(),
  //   'ground': Color(),
  //   'fairy': Color(),
  //   'fighting': Color(),
  //   'psychic': Color(),
  //   'rock': Color(),
  //   'steel': Color(),
  //   'ice': Color(),
  //   'ghost': Color(),
  //   'dragon': Color(),
  //   'dark': Color()
  // };
}
