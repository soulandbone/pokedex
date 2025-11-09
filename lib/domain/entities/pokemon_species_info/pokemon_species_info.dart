import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_species_info.freezed.dart';
part 'pokemon_species_info.g.dart';

@freezed
class PokemonSpeciesInfo with _$PokemonSpeciesInfo {
  @JsonSerializable(createToJson: true) // optional, default is true
  const factory PokemonSpeciesInfo({
    required int genderRate,
    required String description,
  }) = _PokemonSpeciesInfo;

  factory PokemonSpeciesInfo.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpeciesInfoFromJson(_getJsonAtPath(json));
}

Map<String, dynamic> _getJsonAtPath(Map<String, dynamic> json) {
  var flavorTextEntries = json['flavor_text_entries'];
  var description = flavorTextEntries[0]['flavor_text'];

  return {
    'genderRate': json['gender_rate'],
    'description': description,
  };
}
//TODO: Genus still to do, but I first want to test it simple
