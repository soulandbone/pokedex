import 'package:flutter/material.dart';
import 'package:pokedex/constants/app_strings.dart';

class SearchBoxPokemon extends StatelessWidget {
  final TextEditingController controller;
  final void Function(String) onChanged;

  const SearchBoxPokemon(
      {super.key, required this.controller, required this.onChanged});

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
              controller: controller,
              onChanged: onChanged,
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
