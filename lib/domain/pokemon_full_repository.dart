import 'package:pokedex/domain/entities/pokemon_full/pokemon_full.dart';

abstract class PokemonFullRepository {
  Future<List<PokemonFull>> fetchPokemonFullList();
}
