import 'package:dio/dio.dart';

class PokemonApiClient {
  PokemonApiClient(this.dio);
  final Dio dio;

  Future<List<Map<String, dynamic>>> fetchPokemons() async {
    final response =
        await dio.get('https://pokeapi.co/api/v2/pokemon?limit=1328');
    final results = response.data['results'];

    return List<Map<String, dynamic>>.from(
        results.map((item) => Map<String, dynamic>.from(item)));
  }
}
