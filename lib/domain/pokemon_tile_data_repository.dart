import 'package:pokedex/domain/entities/pokemon_tile_data/pokemon_tile_data.dart';

abstract class PokemonTileDataRepository {
  Future<PokemonTileData> fetchPokemonTileData(String url);
}
