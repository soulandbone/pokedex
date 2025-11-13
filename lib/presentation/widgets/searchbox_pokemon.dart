import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/constants/app_strings.dart';
import 'package:pokedex/providers/search_box_filters.dart';

class SearchBoxPokemon extends ConsumerWidget {
  const SearchBoxPokemon({
    required this.controller,
    super.key,
  });

  final TextEditingController controller;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
              onChanged: (value) {
                ref
                    .read(searchBoxFiltersProvider.notifier)
                    .setSearchBoxFilter(value);
              },
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
