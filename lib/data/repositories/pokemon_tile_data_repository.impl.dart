import 'package:pokedex/data/datasources/pokemon_tile_data_api_client.dart';
import 'package:pokedex/domain/entities/pokemon_tile_data/pokemon_tile_data.dart';
import 'package:pokedex/domain/pokemon_tile_data_repository.dart';

class PokemonTileDataRepositoryImpl implements PokemonTileDataRepository {
  PokemonTileDataRepositoryImpl(this.tileDataApiClient);

  final PokemonTileDataApiClient tileDataApiClient;

  @override
  Future<PokemonTileData> fetchPokemonTileData(String url) async {
    final details = await tileDataApiClient.fetchPokemonTileData(url);
    //print('details are ${details['sprites']['front_default']}');
    return PokemonTileData.fromJson(details);
  }
}
