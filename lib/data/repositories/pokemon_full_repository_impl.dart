import 'package:pokedex/data/datasources/pokemon_api_client.dart';
import 'package:pokedex/data/datasources/pokemon_tile_data_api_client.dart';
import 'package:pokedex/domain/entities/pokemon_full/pokemon_full.dart';
import 'package:pokedex/domain/pokemon_full_repository.dart';

class PokemonFullRepositoryImpl implements PokemonFullRepository {
  PokemonFullRepositoryImpl(this.apiClient, this.detailsApiClient);

  final PokemonApiClient apiClient;
  final PokemonTileDataApiClient detailsApiClient;

  @override
  Future<List<PokemonFull>> fetchPokemonFullList() async {
    final listResults = await apiClient.fetchPokemons();

    final List<Future<PokemonFull>> fullDataFutures =
        listResults.map((result) async {
      final url = result['url'] as String;
      final name = result['name'] as String;
      final jsonData = await detailsApiClient.fetchPokemonTileData(url);
      return PokemonFull.fromJson({
        ...jsonData,
        'name': name,
        'url': url,
        'id': extractIdFromUrl(url).toString()
      });
    }).toList();
    return await Future.wait(fullDataFutures);
  }
}
