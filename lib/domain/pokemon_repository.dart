import 'package:pokedex/models/pokemon_model.dart';

abstract class PokemonRepository {
  Future<List<PokemonModel>> fetchPokemons();
}
