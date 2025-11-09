// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_base_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonBaseInfoImpl _$$PokemonBaseInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonBaseInfoImpl(
      frontDefault: json['frontDefault'] as String,
      weight: (json['weight'] as num).toInt(),
      height: (json['height'] as num).toInt(),
      types: (json['types'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$PokemonBaseInfoImplToJson(
        _$PokemonBaseInfoImpl instance) =>
    <String, dynamic>{
      'frontDefault': instance.frontDefault,
      'weight': instance.weight,
      'height': instance.height,
      'types': instance.types,
    };
