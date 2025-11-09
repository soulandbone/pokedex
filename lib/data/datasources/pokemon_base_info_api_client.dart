import 'package:dio/dio.dart';

class PokemonBaseInfoApiClient {
  PokemonBaseInfoApiClient(this.dio);
  final Dio dio;

  Future<Map<String, dynamic>> fetchPokemonBaseInfo(String id) async {
    final response = await dio.get('https://pokeapi.co/api/v2/pokemon/$id');
    return response.data;
  }
}
