import 'package:pokedex/data/datasources/pokemon_species_info_api_client.dart';
import 'package:pokedex/domain/entities/pokemon_species_info/pokemon_species_info.dart';
import 'package:pokedex/domain/pokemon_species_info.dart';

class PokemonSpeciesInfoRepositoryImpl implements PokemonSpeciesInfoRepository {
  PokemonSpeciesInfoRepositoryImpl(this.speciesInfoApiClient);

  final PokemonSpeciesInfoApiClient speciesInfoApiClient;

  @override
  Future<PokemonSpeciesInfo> fetchPokemonSpeciesInfo(String id) async {
    final details = await speciesInfoApiClient.fetchPokemonSpeciesInfo(id);

    return PokemonSpeciesInfo.fromJson(details);
  }
}
