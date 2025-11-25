import 'package:pokedex/data/datasources/pokemon_api_client.dart';
import 'package:pokedex/data/datasources/pokemon_tile_data_api_client.dart';
import 'package:pokedex/domain/entities/pokemon_full/pokemon_full.dart';
import 'package:pokedex/domain/pokemon_full_repository.dart';

class PokemonFullRepositoryImpl implements PokemonFullRepository {
  PokemonFullRepositoryImpl(this.apiClient, this.detailsApiClient);

  final PokemonApiClient apiClient;
  final PokemonTileDataApiClient detailsApiClient;

  @override
  Future<List<PokemonFull>> fetchPokemonFullList(
      {required int limit, required int offset}) async {
    final listResults =
        await apiClient.fetchPokemons(offset: offset, limit: limit);

    final List<Future<PokemonFull>> fullDataFutures =
        listResults.map((result) async {
      final url = result['url'] as String;
      final name = result['name'] as String;
      final jsonData = await detailsApiClient.fetchPokemonTileData(url);

      print('jsonData is $jsonData');

      return PokemonFull.fromJson({
        //...jsonData,
        'name': name,
        'url': url,
        'id': extractIdFromUrl(url).toString(),
        'weight': jsonData['weight'],
        'spriteUrl': jsonData['sprites']?['front_default'] as String? ?? '',
        'height': jsonData['height'],
        'types': jsonData['types'],
        'abilities': jsonData['abilities']
      });
    }).toList();
    return await Future.wait(fullDataFutures);
  }
}
