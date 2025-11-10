// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_full.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonFull _$PokemonFullFromJson(Map<String, dynamic> json) {
  return _PokemonFull.fromJson(json);
}

/// @nodoc
mixin _$PokemonFull {
  String get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  String get spriteUrl => throw _privateConstructorUsedError;
  int get weight => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  List<String> get types => throw _privateConstructorUsedError;

  /// Serializes this PokemonFull to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonFull
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonFullCopyWith<PokemonFull> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonFullCopyWith<$Res> {
  factory $PokemonFullCopyWith(
          PokemonFull value, $Res Function(PokemonFull) then) =
      _$PokemonFullCopyWithImpl<$Res, PokemonFull>;
  @useResult
  $Res call(
      {String id,
      String name,
      String url,
      String spriteUrl,
      int weight,
      int height,
      List<String> types});
}

/// @nodoc
class _$PokemonFullCopyWithImpl<$Res, $Val extends PokemonFull>
    implements $PokemonFullCopyWith<$Res> {
  _$PokemonFullCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonFull
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? url = null,
    Object? spriteUrl = null,
    Object? weight = null,
    Object? height = null,
    Object? types = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      spriteUrl: null == spriteUrl
          ? _value.spriteUrl
          : spriteUrl // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      types: null == types
          ? _value.types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonFullImplCopyWith<$Res>
    implements $PokemonFullCopyWith<$Res> {
  factory _$$PokemonFullImplCopyWith(
          _$PokemonFullImpl value, $Res Function(_$PokemonFullImpl) then) =
      __$$PokemonFullImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String name,
      String url,
      String spriteUrl,
      int weight,
      int height,
      List<String> types});
}

/// @nodoc
class __$$PokemonFullImplCopyWithImpl<$Res>
    extends _$PokemonFullCopyWithImpl<$Res, _$PokemonFullImpl>
    implements _$$PokemonFullImplCopyWith<$Res> {
  __$$PokemonFullImplCopyWithImpl(
      _$PokemonFullImpl _value, $Res Function(_$PokemonFullImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonFull
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? url = null,
    Object? spriteUrl = null,
    Object? weight = null,
    Object? height = null,
    Object? types = null,
  }) {
    return _then(_$PokemonFullImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      spriteUrl: null == spriteUrl
          ? _value.spriteUrl
          : spriteUrl // ignore: cast_nullable_to_non_nullable
              as String,
      weight: null == weight
          ? _value.weight
          : weight // ignore: cast_nullable_to_non_nullable
              as int,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      types: null == types
          ? _value._types
          : types // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PokemonFullImpl implements _PokemonFull {
  const _$PokemonFullImpl(
      {required this.id,
      required this.name,
      required this.url,
      required this.spriteUrl,
      required this.weight,
      required this.height,
      required final List<String> types})
      : _types = types;

  factory _$PokemonFullImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonFullImplFromJson(json);

  @override
  final String id;
  @override
  final String name;
  @override
  final String url;
  @override
  final String spriteUrl;
  @override
  final int weight;
  @override
  final int height;
  final List<String> _types;
  @override
  List<String> get types {
    if (_types is EqualUnmodifiableListView) return _types;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_types);
  }

  @override
  String toString() {
    return 'PokemonFull(id: $id, name: $name, url: $url, spriteUrl: $spriteUrl, weight: $weight, height: $height, types: $types)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonFullImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.spriteUrl, spriteUrl) ||
                other.spriteUrl == spriteUrl) &&
            (identical(other.weight, weight) || other.weight == weight) &&
            (identical(other.height, height) || other.height == height) &&
            const DeepCollectionEquality().equals(other._types, _types));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, url, spriteUrl, weight,
      height, const DeepCollectionEquality().hash(_types));

  /// Create a copy of PokemonFull
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonFullImplCopyWith<_$PokemonFullImpl> get copyWith =>
      __$$PokemonFullImplCopyWithImpl<_$PokemonFullImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonFullImplToJson(
      this,
    );
  }
}

abstract class _PokemonFull implements PokemonFull {
  const factory _PokemonFull(
      {required final String id,
      required final String name,
      required final String url,
      required final String spriteUrl,
      required final int weight,
      required final int height,
      required final List<String> types}) = _$PokemonFullImpl;

  factory _PokemonFull.fromJson(Map<String, dynamic> json) =
      _$PokemonFullImpl.fromJson;

  @override
  String get id;
  @override
  String get name;
  @override
  String get url;
  @override
  String get spriteUrl;
  @override
  int get weight;
  @override
  int get height;
  @override
  List<String> get types;

  /// Create a copy of PokemonFull
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonFullImplCopyWith<_$PokemonFullImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
