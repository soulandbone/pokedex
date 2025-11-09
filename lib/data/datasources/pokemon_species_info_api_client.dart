import 'package:dio/dio.dart';

class PokemonSpeciesInfoApiClient {
  PokemonSpeciesInfoApiClient(this.dio);
  final Dio dio;

  Future<List<Map<String, dynamic>>> fetchPokemonSpeciesInfo(String id) async {
    final response =
        await dio.get('https://pokeapi.co/api/v2/pokemon-species/$id');
    final results = response.data;

    return List<Map<String, dynamic>>.from(
        results.map((item) => Map<String, dynamic>.from(item)));
  }
}
