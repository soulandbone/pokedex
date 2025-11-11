import 'package:dio/dio.dart';

class PokemonApiClient {
  PokemonApiClient(this.dio);
  final Dio dio;

  Future<List<Map<String, dynamic>>> fetchPokemons(
      {required int offset, required int limit}) async {
    final response = await dio.get(
        'https://pokeapi.co/api/v2/pokemon?offset=$offset&limit=$limit'); //was set to 1328
    final results = response.data['results'];

    return List<Map<String, dynamic>>.from(
        results.map((item) => Map<String, dynamic>.from(item)));
  }
}
