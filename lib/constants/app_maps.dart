import 'package:flutter/material.dart';
import 'package:pokedex/constants/app_colors.dart';

double width = 70;
double height = 70;

double widthMedium = 90;
double heightMedium = 90;

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
