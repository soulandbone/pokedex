import 'package:flutter/material.dart';
import 'package:pokedex/constants/app_strings.dart';

class FavoritesEmpty extends StatelessWidget {
  const FavoritesEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset('assets/magikarp.png'),
        Text(AppStrings.kAlgoSalioMal),
        Text(AppStrings.kNoPudimosCargar)
      ],
    );
  }
}
