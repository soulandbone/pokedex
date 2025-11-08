import 'package:pokedex/domain/entities/pokemon/pokemon.dart';

abstract class PokemonRepository {
  Future<List<Pokemon>> fetchPokemons();
}
