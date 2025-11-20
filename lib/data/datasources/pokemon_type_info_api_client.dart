import 'package:dio/dio.dart';

class PokemonTypeInfoApiClient {
  PokemonTypeInfoApiClient(this.dio);
  final Dio dio;

  Future<Map<String, dynamic>> fetchTypeInfo(String type) async {
    final response = await dio.get(
        'https://pokeapi.co/api/v2/type/$type'); //makes the call to the entrypoint of type
    return response.data;
  }
}
