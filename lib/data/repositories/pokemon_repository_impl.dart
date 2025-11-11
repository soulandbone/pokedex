import 'package:pokedex/data/datasources/pokemon_api_client.dart';
import 'package:pokedex/domain/entities/pokemon/pokemon.dart';
import 'package:pokedex/domain/pokemon_repository.dart';

class PokemonRepositoryImpl implements PokemonRepository {
  PokemonRepositoryImpl(this.apiClient);

  final PokemonApiClient apiClient;

  @override
  Future<List<Pokemon>> fetchPokemons() async {
    final results = await apiClient.fetchPokemons(offset: 0, limit: 1328);

    return results.map((json) {
      return Pokemon.fromJson(json);
    }).toList();
  }
}
