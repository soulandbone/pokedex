import 'package:freezed_annotation/freezed_annotation.dart';

part 'pokemon_tile_data.freezed.dart';
part 'pokemon_tile_data.g.dart';

@freezed
class PokemonTileData with _$PokemonTileData {
  const factory PokemonTileData({
    required int weight,
  }) = _PokemonTileData;

  factory PokemonTileData.fromJson(Map<String, dynamic> json) =>
      _$PokemonTileDataFromJson(json);
}

// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'pokemon_tile_data.freezed.dart';
// part 'pokemon_tile_data.g.dart';

// @freezed
// class PokemonTileData with _$PokemonTileData {
//   const factory PokemonTileData({
//     required List<String> types,
//     required String spriteUrl,
//   }) = _PokemonTileData;

//   factory PokemonTileData.fromJson(Map<String, dynamic> json) =>
//       _$PokemonTileDataFromJson(json);
// }
