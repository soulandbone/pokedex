import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_base_info.freezed.dart';
part 'pokemon_base_info.g.dart';

@freezed
class PokemonBaseInfo with _$PokemonBaseInfo {
  @JsonSerializable(createToJson: true) // optional, default is true
  const factory PokemonBaseInfo({
    required String frontDefault,
    required int weight,
    required int height,
    required List<String> types,
    // required String ability,
  }) = _PokemonBaseInfo;

  factory PokemonBaseInfo.fromJson(Map<String, dynamic> json) =>
      _$PokemonBaseInfoFromJson(_getJsonAtPath(json));
}

Map<String, dynamic> _getJsonAtPath(Map<String, dynamic> json) {
  final sprites = json['sprites'] as Map<String, dynamic>;
  final frontDefaultUrl = sprites['front_default'] ?? '';
  final typesJson = json['types'] as List<dynamic>;
  final species = json['species'] as Map<String, dynamic>;
  final name = species['name'] ?? '';

  final types = typesJson
      .map((typeItem) =>
          (typeItem as Map<String, dynamic>)['type']['name'] as String)
      .toList();

  return {
    'name': name,
    'frontDefault': frontDefaultUrl,
    'weight': json['weight'],
    'types': types,
    'height': json['height'],
  };
}
