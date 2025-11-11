import 'package:flutter/material.dart';
import 'package:pokedex/constants/app_strings.dart';
import 'package:pokedex/presentation/screens/favoritos.dart';
import 'package:pokedex/presentation/screens/modals/filters_modal.dart';
import 'package:pokedex/presentation/screens/perfil.dart';
import 'package:pokedex/presentation/screens/pokedex.dart';
import 'package:pokedex/presentation/screens/regiones.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void onSelection(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  List<Widget> screens = [Pokedex(), Regiones(), Favoritos(), Perfil()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.kTitle),
      ),
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
