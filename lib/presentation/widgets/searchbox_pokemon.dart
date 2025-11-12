import 'package:flutter/material.dart';
import 'package:pokedex/constants/app_strings.dart';

class SearchBoxPokemon extends StatefulWidget {
  const SearchBoxPokemon({
    super.key,
  });

  @override
  State<SearchBoxPokemon> createState() => _SearchBoxPokemonState();
}

class _SearchBoxPokemonState extends State<SearchBoxPokemon> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose(); // limpieza tipica cn controllers
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.grey),
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Row(
        children: [
          Icon(Icons.search, color: Colors.grey),
          SizedBox(width: 8),
          Expanded(
            child: TextField(
              controller: _controller,
              onChanged: (value) {},
              decoration: InputDecoration(
                hintText: AppStrings.kBuscarPokemon,
                border: InputBorder.none,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
