// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_full.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonFullImpl _$$PokemonFullImplFromJson(Map<String, dynamic> json) =>
    _$PokemonFullImpl(
      id: json['id'] as String,
      name: json['name'] as String,
      url: json['url'] as String,
      spriteUrl: json['spriteUrl'] as String,
      weight: (json['weight'] as num).toInt(),
      height: (json['height'] as num).toInt(),
      types: (json['types'] as List<dynamic>).map((e) => e as String).toList(),
      abilities:
          (json['abilities'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$PokemonFullImplToJson(_$PokemonFullImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'url': instance.url,
      'spriteUrl': instance.spriteUrl,
      'weight': instance.weight,
      'height': instance.height,
      'types': instance.types,
      'abilities': instance.abilities,
    };
