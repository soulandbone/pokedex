import 'package:pokedex/domain/entities/pokemon_type_info/pokemon_type_info.dart';

List<String> calculateWeaknesses(List<PokemonTypeInfo> pokemonTypeInfoList) {
  Set<String> doubleDamageFrom = {};
  Set<String> halfDamageFrom = {};
  Set<String> noDamageFrom = {};

  for (var pokemonTypeInfo in pokemonTypeInfoList) {
    List<String> doubleDamageFromList = pokemonTypeInfo.doubleDamageFrom;
    List<String> halfDamageFromList = pokemonTypeInfo.halfDamageFrom;
    List<String> noDamageFromList = pokemonTypeInfo.noDamageFrom;

    for (var type in doubleDamageFromList) {
      doubleDamageFrom.add(type);
    }
    for (var type in halfDamageFromList) {
      halfDamageFrom.add(type);
    }
    for (var type in noDamageFromList) {
      noDamageFrom.add(type);
    }
  }

  var resistances = {...halfDamageFrom, ...noDamageFrom};
  print('resistances are $resistances');

  return doubleDamageFrom.difference(resistances).toList();
}
