import 'package:dio/dio.dart';

class PokemonSpeciesInfoApiClient {
  PokemonSpeciesInfoApiClient(this.dio);
  final Dio dio;

  Future<Map<String, dynamic>> fetchPokemonSpeciesInfo(String id) async {
    final response =
        await dio.get('https://pokeapi.co/api/v2/pokemon-species/$id');
    return response.data;
  }
}
