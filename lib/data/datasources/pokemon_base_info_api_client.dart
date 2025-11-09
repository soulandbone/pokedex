import 'package:dio/dio.dart';

class PokemonBaseInfoApiClient {
  PokemonBaseInfoApiClient(this.dio);
  final Dio dio;

  Future<List<Map<String, dynamic>>> fetchPokemonBaseInfo(String id) async {
    final response = await dio.get('https://pokeapi.co/api/v2/pokemon/$id');
    final results = response.data;

    return List<Map<String, dynamic>>.from(
        results.map((item) => Map<String, dynamic>.from(item)));
  }
}
