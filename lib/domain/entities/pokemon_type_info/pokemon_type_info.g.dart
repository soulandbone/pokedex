// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_type_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonTypeInfoImpl _$$PokemonTypeInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonTypeInfoImpl(
      doubleDamageFrom: (json['doubleDamageFrom'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      halfDamageFrom: (json['halfDamageFrom'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      noDamageFrom: (json['noDamageFrom'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$PokemonTypeInfoImplToJson(
        _$PokemonTypeInfoImpl instance) =>
    <String, dynamic>{
      'doubleDamageFrom': instance.doubleDamageFrom,
      'halfDamageFrom': instance.halfDamageFrom,
      'noDamageFrom': instance.noDamageFrom,
    };
