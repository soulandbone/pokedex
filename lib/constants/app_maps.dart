import 'package:flutter/material.dart';
import 'package:pokedex/constants/app_colors.dart';

double width = 20;
double height = 20;

double widthMedium = 90;
double heightMedium = 90;

class AppMaps {
  static Map<String, Widget> typeIconMapSmall = {
    'grass': Image.asset(
      'assets/small_icons/planta.png',
    ), // example icon
    'bug': Image.asset(
      'assets/small_icons/bicho.png',
    ),
    'normal': Image.asset(
      'assets/small_icons/normal.png',
    ),
    'flying': Image.asset(
      'assets/small_icons/volador.png',
    ),
    'poison': Image.asset(
      'assets/small_icons/veneno.png',
    ),
    'fire': Image.asset(
      'assets/small_icons/fuego.png',
    ),
    'water': Image.asset(
      'assets/small_icons/agua.png',
    ),
    'electric': Image.asset(
      'assets/small_icons/electrico.png',
    ),
    'ground': Image.asset(
      'assets/small_icons/tierra.png',
    ),
    'fairy': Image.asset(
      'assets/small_icons/hada.png',
    ),
    'fighting': Image.asset(
      'assets/small_icons/lucha.png',
    ),
    'psychic': Image.asset(
      'assets/small_icons/psiquico.png',
    ),
    'rock': Image.asset(
      'assets/small_icons/roca.png',
    ),
    'steel': Image.asset(
      'assets/small_icons/acero.png',
    ),
    'ice': Image.asset(
      'assets/small_icons/hielo.png',
    ),
    'ghost': Image.asset(
      'assets/small_icons/fantasma.png',
    ),
    'dragon': Image.asset(
      'assets/small_icons/dragon.png',
    ),
    'dark': Image.asset(
      'assets/small_icons/siniestro.png',
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

  static Map<String, Color> typeColorMap = {
    'grass': AppColors.kGrassSolid,
    'bug': AppColors.kBugSolid,
    'normal': AppColors.kGrassSolid,
    'flying': AppColors.kFlyingSolid,
    'poison': AppColors.kPoisonSolid,
    'fire': AppColors.kFireSolid,
    'water': AppColors.kWaterSolid,
    'electric': AppColors.kElectricSolid,
    'ground': AppColors.kElectricSolid,
    'fairy': AppColors.kFairySolid,
    'fighting': AppColors.kFightingSolid,
    'psychic': AppColors.kPsychicSolid,
    'rock': AppColors.kRockSolid,
    'steel': AppColors.kGrassSolid,
    'ice': AppColors.kIceSolid,
    'ghost': AppColors.kGhostSolid,
    'dragon': AppColors.kDragonSolid,
    'dark': AppColors.kGrassSolid,
  };

  static Map<String, Color> typeTransparentColorMap = {
    'grass': AppColors.kGrassTransparent,
    'bug': AppColors.kBugTransparent,
    'normal': AppColors.kGrassTransparent,
    'flying': AppColors.kFlyingTransparent,
    'poison': AppColors.kPoisonTransparent,
    'fire': AppColors.kFireTransparent,
    'water': AppColors.kWaterTransparent,
    'electric': AppColors.kElectricTransparent,
    'ground': AppColors.kElectricTransparent,
    'fairy': AppColors.kFairyTransparent,
    'fighting': AppColors.kFightingTransparent,
    'psychic': AppColors.kPsychicTransparent,
    'rock': AppColors.kRockTransparent,
    'steel': AppColors.kGrassTransparent,
    'ice': AppColors.kIceTransparent,
    'ghost': AppColors.kGhostTransparent,
    'dragon': AppColors.kDragonTransparent,
    'dark': AppColors.kGrassTransparent,
  };

  static Map<String, Widget> typeIconMapMedium = {
    'grass': Image.asset(
      'assets/small_icons/planta.png',
      width: widthMedium,
      height: heightMedium,
    ), // example icon
    'bug': Image.asset(
      'assets/small_icons/bicho.png',
      width: widthMedium,
      height: heightMedium,
    ),
    'normal': Image.asset(
      'assets/small_icons/normal.png',
      width: widthMedium,
      height: heightMedium,
    ),
    'flying': Image.asset(
      'assets/small_icons/volador.png',
      width: widthMedium,
      height: heightMedium,
    ),
    'poison': Image.asset(
      'assets/small_icons/veneno.png',
      width: widthMedium,
      height: heightMedium,
    ),
    'fire': Image.asset(
      'assets/small_icons/fuego.png',
      width: widthMedium,
      height: heightMedium,
    ),
    'water': Image.asset(
      'assets/small_icons/agua.png',
      width: widthMedium,
      height: heightMedium,
    ),
    'electric': Image.asset(
      'assets/small_icons/electrico.png',
      width: widthMedium,
      height: heightMedium,
    ),
    'ground': Image.asset(
      'assets/small_icons/tierra.png',
      width: widthMedium,
      height: heightMedium,
    ),
    'fairy': Image.asset(
      'assets/small_icons/hada.png',
      width: widthMedium,
      height: heightMedium,
    ),
    'fighting': Image.asset(
      'assets/small_icons/lucha.png',
      width: widthMedium,
      height: heightMedium,
    ),
    'psychic': Image.asset(
      'assets/small_icons/psiquico.png',
      width: widthMedium,
      height: heightMedium,
    ),
    'rock': Image.asset(
      'assets/small_icons/roca.png',
      width: widthMedium,
      height: heightMedium,
    ),
    'steel': Image.asset(
      'assets/small_icons/acero.png',
      width: widthMedium,
      height: heightMedium,
    ),
    'ice': Image.asset(
      'assets/small_icons/hielo.png',
      width: widthMedium,
      height: heightMedium,
    ),
    'ghost': Image.asset(
      'assets/small_icons/fantasma.png',
      width: widthMedium,
      height: heightMedium,
    ),
    'dragon': Image.asset(
      'assets/small_icons/dragon.png',
      width: widthMedium,
      height: heightMedium,
    ),
    'dark': Image.asset(
      'assets/small_icons/siniestro.png',
      width: widthMedium,
      height: heightMedium,
    )

    // more icons
  };
}
