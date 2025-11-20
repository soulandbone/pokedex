import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/constants/app_strings.dart';
import 'package:pokedex/presentation/screens/favoritos.dart';
import 'package:pokedex/presentation/screens/perfil.dart';
import 'package:pokedex/presentation/screens/pokedex.dart';
import 'package:pokedex/presentation/screens/regiones.dart';
import 'package:pokedex/providers/pokemon_state_notifier.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  int _selectedIndex = 0;

  void onSelection(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  void initState() {
    super.initState();
    ref
        .read(pokemonStateNotifierProvider.notifier)
        .loadPokemons(offset: 0, limit: 125);
  }

  List<Widget> screens = [Pokedex(), Regiones(), Favoritos(), Perfil()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 12,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        currentIndex: _selectedIndex,
        onTap: onSelection,
        items: [
          BottomNavigationBarItem(
            label: AppStrings.kPokeDexTab,
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: AppStrings.kRegionesTab,
            icon: Icon(Icons.language),
          ),
          BottomNavigationBarItem(
            label: AppStrings.kFavoritosTab,
            icon: Icon(Icons.favorite),
          ),
          BottomNavigationBarItem(
            label: AppStrings.kPerfilTab,
            icon: Icon(Icons.person),
          ),
        ],
      ),
      body: screens[_selectedIndex],
    );
  }
}
