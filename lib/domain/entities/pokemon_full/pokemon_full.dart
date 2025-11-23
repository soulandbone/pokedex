import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_full.freezed.dart';
part 'pokemon_full.g.dart';

@freezed
class PokemonFull with _$PokemonFull {
  const factory PokemonFull({
    required String id,
    required String name,
    required String url,
    required String spriteUrl,
    required int weight,
    required int height,
    required List<String> types,
    required List<String> abilities,
  }) = _PokemonFull;

  factory PokemonFull.fromJson(Map<String, dynamic> json) =>
      _$PokemonFullFromJson(_getJsonAtPath(json));
}

Map<String, dynamic> _getJsonAtPath(Map<String, dynamic> json) {
  final typesJson = json['types'] as List<dynamic>;
  final abilitiesJson = json['abilities'] as List<dynamic>;
  final types = typesJson
      .map((t) => (t as Map<String, dynamic>)['type']['name'] as String)
      .toList();
  final abilities = abilitiesJson
      .map((t) => (t as Map<String, dynamic>)['ability']['name'] as String)
      .toList();

  return {
    'id': extractIdFromUrl(json['url']).toString(),
    'name': json['name'], // From full JSON // 'name' : json['name]
    'url': json['url'], // From full JSON // 'url' : json['url']
    'spriteUrl': json['spriteUrl'],
    'weight': json['weight'],
    'height': json['height'],
    'types': types,
    'abilities': abilities
  };
}

int extractIdFromUrl(String url) {
  final segments = url.split('/');
  return int.parse(segments[segments.length - 2]);
}
