import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_species_info.freezed.dart';
part 'pokemon_species_info.g.dart';

@freezed
class PokemonSpeciesInfo with _$PokemonSpeciesInfo {
  @JsonSerializable(createToJson: true) // optional, default is true
  const factory PokemonSpeciesInfo({
    required int genderRate,
    required String description,
    required String genus,
  }) = _PokemonSpeciesInfo;

  factory PokemonSpeciesInfo.fromJson(Map<String, dynamic> json) =>
      _$PokemonSpeciesInfoFromJson(_getJsonAtPath(json));
}

Map<String, dynamic> _getJsonAtPath(Map<String, dynamic> json) {
  var flavorTextEntries = json['flavor_text_entries'];
  var genera = json['genera'];

  List<dynamic> englishFlavorTexts = flavorTextEntries
      .where((entry) =>
          (entry as Map<String, dynamic>)['language']['name'] == 'en')
      .map((entry) => (entry as Map<String, dynamic>)['flavor_text'] as String)
      .toList();
  List<dynamic> genus = genera
      .where((entry) =>
          (entry as Map<String, dynamic>)['language']['name'] == 'en')
      .map((entry) => (entry as Map<String, dynamic>)['genus'] as String)
      .toList();

  return {
    'genderRate': json['gender_rate'],
    'description': englishFlavorTexts[0],
    'genus': genus[0]
  };
}
