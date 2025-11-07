import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon_info.dart';

import 'package:pokedex/presentation/screens/home_page.dart';
import 'package:pokedex/presentation/screens/onboarding_1.dart';
import 'package:pokedex/presentation/screens/onboarding_2.dart';
import 'package:pokedex/presentation/screens/widgets/pokemon_information.dart';

void main() {
  runApp(const MyApp());
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
      home: OnBoarding1(),
    );
  }
}
