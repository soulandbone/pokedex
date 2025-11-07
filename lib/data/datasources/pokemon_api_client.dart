import 'package:dio/dio.dart';

class PokemonApiClient {
  PokemonApiClient(this.dio);
  final Dio dio;

  Future<List<dynamic>> fetchPokemons() async {
    final response =
        await dio.get('https://pokeapi.co/api/v2/pokemon?limit=1328');
    return response.data['results'];
  }
}
