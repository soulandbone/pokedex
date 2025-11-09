import 'package:pokedex/data/datasources/pokemon_base_info_api_client.dart';
import 'package:pokedex/domain/entities/pokemon_base_info/pokemon_base_info.dart';
import 'package:pokedex/domain/pokemon_base_info_repository.dart';

class PokemonBaseInfoRepositoryImpl implements PokemonBaseInfoRepository {
  PokemonBaseInfoRepositoryImpl(this.baseInfoApiClient);

  final PokemonBaseInfoApiClient baseInfoApiClient;

  @override
  Future<PokemonBaseInfo> fetchPokemonBaseInfo(String id) async {
    final data = await baseInfoApiClient.fetchPokemonBaseInfo(id);
    return PokemonBaseInfo.fromJson(data);
  }
}
