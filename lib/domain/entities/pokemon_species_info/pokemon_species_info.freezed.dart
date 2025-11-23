// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_species_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonSpeciesInfo _$PokemonSpeciesInfoFromJson(Map<String, dynamic> json) {
  return _PokemonSpeciesInfo.fromJson(json);
}

/// @nodoc
mixin _$PokemonSpeciesInfo {
  int get genderRate => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get genus => throw _privateConstructorUsedError;

  /// Serializes this PokemonSpeciesInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonSpeciesInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonSpeciesInfoCopyWith<PokemonSpeciesInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonSpeciesInfoCopyWith<$Res> {
  factory $PokemonSpeciesInfoCopyWith(
          PokemonSpeciesInfo value, $Res Function(PokemonSpeciesInfo) then) =
      _$PokemonSpeciesInfoCopyWithImpl<$Res, PokemonSpeciesInfo>;
  @useResult
  $Res call({int genderRate, String description, String genus});
}

/// @nodoc
class _$PokemonSpeciesInfoCopyWithImpl<$Res, $Val extends PokemonSpeciesInfo>
    implements $PokemonSpeciesInfoCopyWith<$Res> {
  _$PokemonSpeciesInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonSpeciesInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genderRate = null,
    Object? description = null,
    Object? genus = null,
  }) {
    return _then(_value.copyWith(
      genderRate: null == genderRate
          ? _value.genderRate
          : genderRate // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      genus: null == genus
          ? _value.genus
          : genus // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonSpeciesInfoImplCopyWith<$Res>
    implements $PokemonSpeciesInfoCopyWith<$Res> {
  factory _$$PokemonSpeciesInfoImplCopyWith(_$PokemonSpeciesInfoImpl value,
          $Res Function(_$PokemonSpeciesInfoImpl) then) =
      __$$PokemonSpeciesInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int genderRate, String description, String genus});
}

/// @nodoc
class __$$PokemonSpeciesInfoImplCopyWithImpl<$Res>
    extends _$PokemonSpeciesInfoCopyWithImpl<$Res, _$PokemonSpeciesInfoImpl>
    implements _$$PokemonSpeciesInfoImplCopyWith<$Res> {
  __$$PokemonSpeciesInfoImplCopyWithImpl(_$PokemonSpeciesInfoImpl _value,
      $Res Function(_$PokemonSpeciesInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonSpeciesInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? genderRate = null,
    Object? description = null,
    Object? genus = null,
  }) {
    return _then(_$PokemonSpeciesInfoImpl(
      genderRate: null == genderRate
          ? _value.genderRate
          : genderRate // ignore: cast_nullable_to_non_nullable
              as int,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      genus: null == genus
          ? _value.genus
          : genus // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonSpeciesInfoImpl implements _PokemonSpeciesInfo {
  const _$PokemonSpeciesInfoImpl(
      {required this.genderRate,
      required this.description,
      required this.genus});

  factory _$PokemonSpeciesInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonSpeciesInfoImplFromJson(json);

  @override
  final int genderRate;
  @override
  final String description;
  @override
  final String genus;

  @override
  String toString() {
    return 'PokemonSpeciesInfo(genderRate: $genderRate, description: $description, genus: $genus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonSpeciesInfoImpl &&
            (identical(other.genderRate, genderRate) ||
                other.genderRate == genderRate) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.genus, genus) || other.genus == genus));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, genderRate, description, genus);

  /// Create a copy of PokemonSpeciesInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonSpeciesInfoImplCopyWith<_$PokemonSpeciesInfoImpl> get copyWith =>
      __$$PokemonSpeciesInfoImplCopyWithImpl<_$PokemonSpeciesInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonSpeciesInfoImplToJson(
      this,
    );
  }
}

abstract class _PokemonSpeciesInfo implements PokemonSpeciesInfo {
  const factory _PokemonSpeciesInfo(
      {required final int genderRate,
      required final String description,
      required final String genus}) = _$PokemonSpeciesInfoImpl;

  factory _PokemonSpeciesInfo.fromJson(Map<String, dynamic> json) =
      _$PokemonSpeciesInfoImpl.fromJson;

  @override
  int get genderRate;
  @override
  String get description;
  @override
  String get genus;

  /// Create a copy of PokemonSpeciesInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonSpeciesInfoImplCopyWith<_$PokemonSpeciesInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
