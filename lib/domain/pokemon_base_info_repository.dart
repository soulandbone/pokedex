import 'package:pokedex/domain/entities/pokemon_base_info/pokemon_base_info.dart';

abstract class PokemonBaseInfoRepository {
  Future<PokemonBaseInfo> fetchPokemonBaseInfo(String id);
}
