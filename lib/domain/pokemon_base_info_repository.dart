import 'package:pokedex/domain/entities/pokemon/pokemon.dart';

abstract class PokemonBaseInfoRepository {
  Future<List<Pokemon>> fetchPokemonBaseInfo(); //Change type probably
}
