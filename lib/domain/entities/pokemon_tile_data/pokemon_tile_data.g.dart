// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_tile_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonTileDataImpl _$$PokemonTileDataImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonTileDataImpl(
      frontDefault: json['frontDefault'] as String,
      weight: (json['weight'] as num).toInt(),
      types: (json['types'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$PokemonTileDataImplToJson(
        _$PokemonTileDataImpl instance) =>
    <String, dynamic>{
      'frontDefault': instance.frontDefault,
      'weight': instance.weight,
      'types': instance.types,
    };
