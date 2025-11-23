import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_tile_data.freezed.dart';
part 'pokemon_tile_data.g.dart';

@freezed
class PokemonTileData with _$PokemonTileData {
  const factory PokemonTileData({
    required String frontDefault,
    required int weight,
    required int height,
    required List<String> types,
  }) = _PokemonTileData;

  factory PokemonTileData.fromJson(Map<String, dynamic> json) =>
      _$PokemonTileDataFromJson(_getJsonAtPath(json));
}

Map<String, dynamic> _getJsonAtPath(Map<String, dynamic> json) {
  final sprites = json['sprites'] as Map<String, dynamic>;
  final frontDefaultUrl = sprites['front_default'] ?? '';
  final typesJson = json['types'] as List<dynamic>;
  final types = typesJson
      .map((typeItem) =>
          (typeItem as Map<String, dynamic>)['type']['name'] as String)
      .toList();

  return {
    'frontDefault': frontDefaultUrl,
    'weight': json['weight'],
    'types': types,
    'height': json['height'],
  };
}
