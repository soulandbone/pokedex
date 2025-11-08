// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_tile_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonTileData _$PokemonTileDataFromJson(Map<String, dynamic> json) {
  return _PokemonTileData.fromJson(json);
}

/// @nodoc
mixin _$PokemonTileData {
  String get frontDefault => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;

  /// Serializes this PokemonTileData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonTileData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonTileDataCopyWith<PokemonTileData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonTileDataCopyWith<$Res> {
  factory $PokemonTileDataCopyWith(
          PokemonTileData value, $Res Function(PokemonTileData) then) =
      _$PokemonTileDataCopyWithImpl<$Res, PokemonTileData>;
  @useResult
  $Res call({String frontDefault, int weight});
}

/// @nodoc
class _$PokemonTileDataCopyWithImpl<$Res, $Val extends PokemonTileData>
    implements $PokemonTileDataCopyWith<$Res> {
  _$PokemonTileDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonTileData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = null,
    Object? weight = null,
  }) {
    return _then(_value.copyWith(
      frontDefault: null == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonTileDataImplCopyWith<$Res>
    implements $PokemonTileDataCopyWith<$Res> {
  factory _$$PokemonTileDataImplCopyWith(_$PokemonTileDataImpl value,
          $Res Function(_$PokemonTileDataImpl) then) =
      __$$PokemonTileDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String frontDefault, int weight});
}

/// @nodoc
class __$$PokemonTileDataImplCopyWithImpl<$Res>
    extends _$PokemonTileDataCopyWithImpl<$Res, _$PokemonTileDataImpl>
    implements _$$PokemonTileDataImplCopyWith<$Res> {
  __$$PokemonTileDataImplCopyWithImpl(
      _$PokemonTileDataImpl _value, $Res Function(_$PokemonTileDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonTileData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? frontDefault = null,
    Object? weight = null,
  }) {
    return _then(_$PokemonTileDataImpl(
      frontDefault: null == frontDefault
          ? _value.frontDefault
          : frontDefault // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(createToJson: true)
class _$PokemonTileDataImpl implements _PokemonTileData {
  const _$PokemonTileDataImpl(
      {required this.frontDefault, required this.weight});

  factory _$PokemonTileDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonTileDataImplFromJson(json);

  @override
  final String frontDefault;
  @override
  final int weight;

  @override
  String toString() {
    return 'PokemonTileData(frontDefault: $frontDefault, weight: $weight)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonTileDataImpl &&
            (identical(other.frontDefault, frontDefault) ||
                other.frontDefault == frontDefault) &&
            (identical(other.weight, weight) || other.weight == weight));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, frontDefault, weight);

  /// Create a copy of PokemonTileData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonTileDataImplCopyWith<_$PokemonTileDataImpl> get copyWith =>
      __$$PokemonTileDataImplCopyWithImpl<_$PokemonTileDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonTileDataImplToJson(
      this,
    );
  }
}

abstract class _PokemonTileData implements PokemonTileData {
  const factory _PokemonTileData(
      {required final String frontDefault,
      required final int weight}) = _$PokemonTileDataImpl;

  factory _PokemonTileData.fromJson(Map<String, dynamic> json) =
      _$PokemonTileDataImpl.fromJson;

  @override
  String get frontDefault;
  @override
  int get weight;

  /// Create a copy of PokemonTileData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonTileDataImplCopyWith<_$PokemonTileDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
