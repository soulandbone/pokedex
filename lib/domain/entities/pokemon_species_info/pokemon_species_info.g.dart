// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon_species_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PokemonSpeciesInfoImpl _$$PokemonSpeciesInfoImplFromJson(
        Map<String, dynamic> json) =>
    _$PokemonSpeciesInfoImpl(
      genderRate: (json['genderRate'] as num).toInt(),
      description: json['description'] as String,
      genus: json['genus'] as String,
    );

Map<String, dynamic> _$$PokemonSpeciesInfoImplToJson(
        _$PokemonSpeciesInfoImpl instance) =>
    <String, dynamic>{
      'genderRate': instance.genderRate,
      'description': instance.description,
      'genus': instance.genus,
    };
