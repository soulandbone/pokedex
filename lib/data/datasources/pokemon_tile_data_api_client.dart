import 'package:dio/dio.dart';

class PokemonTileDataApiClient {
  PokemonTileDataApiClient(this.dio);
  final Dio dio;

  Future<Map<String, dynamic>> fetchPokemonTileData(String url) async {
    final response = await dio.get(url);
    return response.data;
  }
}
