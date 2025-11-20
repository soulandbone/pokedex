import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokedex/helpers/type_map_to_list.dart';

part 'pokemon_type_info.freezed.dart';
part 'pokemon_type_info.g.dart';

@freezed
class PokemonTypeInfo with _$PokemonTypeInfo {
  @JsonSerializable(createToJson: true) // optional, default is true
  const factory PokemonTypeInfo({
    required List<String> doubleDamageFrom,
    required List<String> halfDamageFrom,
    required List<String> noDamageFrom,
  }) = _PokemonTypeInfo;

  factory PokemonTypeInfo.fromJson(Map<String, dynamic> json) =>
      _$PokemonTypeInfoFromJson(_getJsonAtPath(json));
}

Map<String, dynamic> _getJsonAtPath(Map<String, dynamic> json) {
  var damageRelations = json['damage_relations'];

  var doubleDamageFrom = damageRelations['double_damage_from'] as List<dynamic>;
  var halfDamageFrom = damageRelations['half_damage_from'] as List<dynamic>;
  var noDamageFrom = damageRelations['no_damage_from'] as List<dynamic>;

  var doubleDamageFromListString = mapToList(doubleDamageFrom);
  var halfDamageFromListString = mapToList(halfDamageFrom);
  var noDamageFromListString = mapToList(noDamageFrom);

  return {
    'doubleDamageFrom': doubleDamageFromListString,
    'halfDamageFrom': halfDamageFromListString,
    'noDamageFrom': noDamageFromListString
  };
}
