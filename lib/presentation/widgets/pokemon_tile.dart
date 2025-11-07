import 'package:flutter/material.dart';
import 'package:pokedex/models/pokemon_model.dart';

class PokemonTile extends StatefulWidget {
  const PokemonTile({required this.pokemon, super.key});

  final PokemonModel pokemon;

  @override
  State<PokemonTile> createState() => _PokemonTileState();
}

class _PokemonTileState extends State<PokemonTile> {
  bool _isPressed = false;

  void toggleFav() {
    setState(() {
      _isPressed = !_isPressed;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Dismissible(
      key: ValueKey(widget.pokemon.id),
      child: Container(
        decoration: BoxDecoration(
          color: widget.pokemon.color,

          borderRadius: BorderRadius.circular(12),
        ),
        margin: EdgeInsets.only(bottom: 10, left: 20, right: 20),
        height: 102,

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 3,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                  ),
                ),

                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 4,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('N° ${widget.pokemon.id.toString()}'),
                      Text(
                        widget.pokemon.name,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                      SizedBox(
                        height: 40,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: widget.pokemon.tipos,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),

            Expanded(
              flex: 2,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.pink,
                  borderRadius: BorderRadius.circular(12),
                ),

                child: Stack(
                  children: [
                    Image.asset(
                      widget.pokemon.backgroundIcon,
                      fit: BoxFit.fitHeight,
                    ),

                    Image.asset(widget.pokemon.spriteUrl),
                    Positioned(
                      right: 10,
                      top: 10,
                      child: GestureDetector(
                        onTap: toggleFav,
                        child:
                            _isPressed
                                ? Icon(Icons.favorite)
                                : Icon(Icons.favorite_border_outlined),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
