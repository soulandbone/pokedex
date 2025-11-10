import 'package:pokedex/domain/entities/pokemon_species_info/pokemon_species_info.dart';

abstract class PokemonSpeciesInfoRepository {
  Future<PokemonSpeciesInfo> fetchPokemonSpeciesInfo(String id);
}
