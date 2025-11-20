// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'pokemon_type_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PokemonTypeInfo _$PokemonTypeInfoFromJson(Map<String, dynamic> json) {
  return _PokemonTypeInfo.fromJson(json);
}

/// @nodoc
mixin _$PokemonTypeInfo {
  List<String> get doubleDamageFrom => throw _privateConstructorUsedError;
  List<String> get halfDamageFrom => throw _privateConstructorUsedError;
  List<String> get noDamageFrom => throw _privateConstructorUsedError;

  /// Serializes this PokemonTypeInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PokemonTypeInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PokemonTypeInfoCopyWith<PokemonTypeInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PokemonTypeInfoCopyWith<$Res> {
  factory $PokemonTypeInfoCopyWith(
          PokemonTypeInfo value, $Res Function(PokemonTypeInfo) then) =
      _$PokemonTypeInfoCopyWithImpl<$Res, PokemonTypeInfo>;
  @useResult
  $Res call(
      {List<String> doubleDamageFrom,
      List<String> halfDamageFrom,
      List<String> noDamageFrom});
}

/// @nodoc
class _$PokemonTypeInfoCopyWithImpl<$Res, $Val extends PokemonTypeInfo>
    implements $PokemonTypeInfoCopyWith<$Res> {
  _$PokemonTypeInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PokemonTypeInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doubleDamageFrom = null,
    Object? halfDamageFrom = null,
    Object? noDamageFrom = null,
  }) {
    return _then(_value.copyWith(
      doubleDamageFrom: null == doubleDamageFrom
          ? _value.doubleDamageFrom
          : doubleDamageFrom // ignore: cast_nullable_to_non_nullable
              as List<String>,
      halfDamageFrom: null == halfDamageFrom
          ? _value.halfDamageFrom
          : halfDamageFrom // ignore: cast_nullable_to_non_nullable
              as List<String>,
      noDamageFrom: null == noDamageFrom
          ? _value.noDamageFrom
          : noDamageFrom // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PokemonTypeInfoImplCopyWith<$Res>
    implements $PokemonTypeInfoCopyWith<$Res> {
  factory _$$PokemonTypeInfoImplCopyWith(_$PokemonTypeInfoImpl value,
          $Res Function(_$PokemonTypeInfoImpl) then) =
      __$$PokemonTypeInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<String> doubleDamageFrom,
      List<String> halfDamageFrom,
      List<String> noDamageFrom});
}

/// @nodoc
class __$$PokemonTypeInfoImplCopyWithImpl<$Res>
    extends _$PokemonTypeInfoCopyWithImpl<$Res, _$PokemonTypeInfoImpl>
    implements _$$PokemonTypeInfoImplCopyWith<$Res> {
  __$$PokemonTypeInfoImplCopyWithImpl(
      _$PokemonTypeInfoImpl _value, $Res Function(_$PokemonTypeInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of PokemonTypeInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? doubleDamageFrom = null,
    Object? halfDamageFrom = null,
    Object? noDamageFrom = null,
  }) {
    return _then(_$PokemonTypeInfoImpl(
      doubleDamageFrom: null == doubleDamageFrom
          ? _value._doubleDamageFrom
          : doubleDamageFrom // ignore: cast_nullable_to_non_nullable
              as List<String>,
      halfDamageFrom: null == halfDamageFrom
          ? _value._halfDamageFrom
          : halfDamageFrom // ignore: cast_nullable_to_non_nullable
              as List<String>,
      noDamageFrom: null == noDamageFrom
          ? _value._noDamageFrom
          : noDamageFrom // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc

@JsonSerializable(createToJson: true)
class _$PokemonTypeInfoImpl implements _PokemonTypeInfo {
  const _$PokemonTypeInfoImpl(
      {required final List<String> doubleDamageFrom,
      required final List<String> halfDamageFrom,
      required final List<String> noDamageFrom})
      : _doubleDamageFrom = doubleDamageFrom,
        _halfDamageFrom = halfDamageFrom,
        _noDamageFrom = noDamageFrom;

  factory _$PokemonTypeInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$PokemonTypeInfoImplFromJson(json);

  final List<String> _doubleDamageFrom;
  @override
  List<String> get doubleDamageFrom {
    if (_doubleDamageFrom is EqualUnmodifiableListView)
      return _doubleDamageFrom;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_doubleDamageFrom);
  }

  final List<String> _halfDamageFrom;
  @override
  List<String> get halfDamageFrom {
    if (_halfDamageFrom is EqualUnmodifiableListView) return _halfDamageFrom;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_halfDamageFrom);
  }

  final List<String> _noDamageFrom;
  @override
  List<String> get noDamageFrom {
    if (_noDamageFrom is EqualUnmodifiableListView) return _noDamageFrom;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_noDamageFrom);
  }

  @override
  String toString() {
    return 'PokemonTypeInfo(doubleDamageFrom: $doubleDamageFrom, halfDamageFrom: $halfDamageFrom, noDamageFrom: $noDamageFrom)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PokemonTypeInfoImpl &&
            const DeepCollectionEquality()
                .equals(other._doubleDamageFrom, _doubleDamageFrom) &&
            const DeepCollectionEquality()
                .equals(other._halfDamageFrom, _halfDamageFrom) &&
            const DeepCollectionEquality()
                .equals(other._noDamageFrom, _noDamageFrom));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_doubleDamageFrom),
      const DeepCollectionEquality().hash(_halfDamageFrom),
      const DeepCollectionEquality().hash(_noDamageFrom));

  /// Create a copy of PokemonTypeInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PokemonTypeInfoImplCopyWith<_$PokemonTypeInfoImpl> get copyWith =>
      __$$PokemonTypeInfoImplCopyWithImpl<_$PokemonTypeInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PokemonTypeInfoImplToJson(
      this,
    );
  }
}

abstract class _PokemonTypeInfo implements PokemonTypeInfo {
  const factory _PokemonTypeInfo(
      {required final List<String> doubleDamageFrom,
      required final List<String> halfDamageFrom,
      required final List<String> noDamageFrom}) = _$PokemonTypeInfoImpl;

  factory _PokemonTypeInfo.fromJson(Map<String, dynamic> json) =
      _$PokemonTypeInfoImpl.fromJson;

  @override
  List<String> get doubleDamageFrom;
  @override
  List<String> get halfDamageFrom;
  @override
  List<String> get noDamageFrom;

  /// Create a copy of PokemonTypeInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PokemonTypeInfoImplCopyWith<_$PokemonTypeInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
