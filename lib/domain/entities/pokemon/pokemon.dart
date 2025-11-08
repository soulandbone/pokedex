import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon.freezed.dart';
part 'pokemon.g.dart';

@freezed
class Pokemon with _$Pokemon {
  const factory Pokemon({
    required String id,
    required String name,
    required String url,
  }) = _Pokemon;

  factory Pokemon.fromJson(Map<String, dynamic> json) =>
      _$PokemonFromJson(_getJsonAtPath(json));
}

Map<String, dynamic> _getJsonAtPath(Map<String, dynamic> json) {
  // Create a new map that contains only the flattened data
  return {
    'id': extractIdFromUrl(json['url']).toString(),
    'name': json['name'],
    'url': json['url'],
  };
}

int extractIdFromUrl(String url) {
  final segments = url.split('/');
  return int.parse(segments[segments.length - 2]);
}
