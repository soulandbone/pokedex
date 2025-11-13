import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokedex/constants/app_strings.dart';
import 'package:pokedex/providers/search_box_filters.dart';

class SearchBoxPokemon extends ConsumerStatefulWidget {
  const SearchBoxPokemon({
    super.key,
  });

  @override
  ConsumerState<SearchBoxPokemon> createState() => _SearchBoxPokemonState();
}

class _SearchBoxPokemonState extends ConsumerState<SearchBoxPokemon> {
  final TextEditingController _controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _controller.text = ref.read(searchBoxFiltersProvider);
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
              onChanged: (value) {
                setState(() {
                  _controller.text = value;
                  ref
                      .read(searchBoxFiltersProvider.notifier)
                      .setSearchBoxFilter(value);
                });
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
