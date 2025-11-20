import 'package:pokedex/domain/entities/pokemon_type_info/pokemon_type_info.dart';

abstract class PokemonTypeInfoRepository {
  Future<List<PokemonTypeInfo>> fetchTypeInfo(List<String> types);
}
