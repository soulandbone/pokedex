import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_tile_data.freezed.dart';
part 'pokemon_tile_data.g.dart';

@freezed
class PokemonTileData with _$PokemonTileData {
  @JsonSerializable(createToJson: true) // optional, default is true
  const factory PokemonTileData({
    required String frontDefault,
    required int weight,
  }) = _PokemonTileData;

  factory PokemonTileData.fromJson(Map<String, dynamic> json) =>
      _$PokemonTileDataFromJson(_getJsonAtPath(json));
}

Map<String, dynamic> _getJsonAtPath(Map<String, dynamic> json) {
  final sprites = json['sprites'] as Map<String, dynamic>;
  final frontDefaultUrl = sprites['front_default'] ?? '';
  // Create a new map that contains only the flattened data
  return {
    'frontDefault': frontDefaultUrl,
    'weight': json['weight'],
  };
}
