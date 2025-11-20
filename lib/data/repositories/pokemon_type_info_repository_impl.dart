import 'package:pokedex/data/datasources/pokemon_type_info_api_client.dart';

import 'package:pokedex/domain/entities/pokemon_type_info/pokemon_type_info.dart';

import 'package:pokedex/domain/pokemon_type_info_repository.dart';

class PokemonTypeInfoRepositoryImpl implements PokemonTypeInfoRepository {
  PokemonTypeInfoRepositoryImpl(this.typeInfoApiClient);

  final PokemonTypeInfoApiClient typeInfoApiClient;

  @override
  Future<List<PokemonTypeInfo>> fetchTypeInfo(List<String> types) async {
    List<Map<String, dynamic>> dataList = [];
    List<PokemonTypeInfo> results = [];

    for (var type in types) {
      final data = await typeInfoApiClient.fetchTypeInfo(type);
      dataList.add(data);
    }

    for (var data in dataList) {
      var result = PokemonTypeInfo.fromJson(data);
      results.add(result);
    }

    return results;
  }
}
