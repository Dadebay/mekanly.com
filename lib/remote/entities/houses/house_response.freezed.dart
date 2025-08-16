// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'house_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HouseResponse _$HouseResponseFromJson(Map<String, dynamic> json) {
  return _HouseResponse.fromJson(json);
}

/// @nodoc
mixin _$HouseResponse {
  @JsonKey(name: 'data')
  List<HouseEntity>? get houses => throw _privateConstructorUsedError;

  /// Serializes this HouseResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HouseResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HouseResponseCopyWith<HouseResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HouseResponseCopyWith<$Res> {
  factory $HouseResponseCopyWith(
          HouseResponse value, $Res Function(HouseResponse) then) =
      _$HouseResponseCopyWithImpl<$Res, HouseResponse>;
  @useResult
  $Res call({@JsonKey(name: 'data') List<HouseEntity>? houses});
}

/// @nodoc
class _$HouseResponseCopyWithImpl<$Res, $Val extends HouseResponse>
    implements $HouseResponseCopyWith<$Res> {
  _$HouseResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HouseResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? houses = freezed,
  }) {
    return _then(_value.copyWith(
      houses: freezed == houses
          ? _value.houses
          : houses // ignore: cast_nullable_to_non_nullable
              as List<HouseEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$HouseResponseImplCopyWith<$Res>
    implements $HouseResponseCopyWith<$Res> {
  factory _$$HouseResponseImplCopyWith(
          _$HouseResponseImpl value, $Res Function(_$HouseResponseImpl) then) =
      __$$HouseResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: 'data') List<HouseEntity>? houses});
}

/// @nodoc
class __$$HouseResponseImplCopyWithImpl<$Res>
    extends _$HouseResponseCopyWithImpl<$Res, _$HouseResponseImpl>
    implements _$$HouseResponseImplCopyWith<$Res> {
  __$$HouseResponseImplCopyWithImpl(
      _$HouseResponseImpl _value, $Res Function(_$HouseResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of HouseResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? houses = freezed,
  }) {
    return _then(_$HouseResponseImpl(
      houses: freezed == houses
          ? _value._houses
          : houses // ignore: cast_nullable_to_non_nullable
              as List<HouseEntity>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HouseResponseImpl implements _HouseResponse {
  const _$HouseResponseImpl(
      {@JsonKey(name: 'data') final List<HouseEntity>? houses})
      : _houses = houses;

  factory _$HouseResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$HouseResponseImplFromJson(json);

  final List<HouseEntity>? _houses;
  @override
  @JsonKey(name: 'data')
  List<HouseEntity>? get houses {
    final value = _houses;
    if (value == null) return null;
    if (_houses is EqualUnmodifiableListView) return _houses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'HouseResponse(houses: $houses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HouseResponseImpl &&
            const DeepCollectionEquality().equals(other._houses, _houses));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_houses));

  /// Create a copy of HouseResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HouseResponseImplCopyWith<_$HouseResponseImpl> get copyWith =>
      __$$HouseResponseImplCopyWithImpl<_$HouseResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HouseResponseImplToJson(
      this,
    );
  }
}

abstract class _HouseResponse implements HouseResponse {
  const factory _HouseResponse(
          {@JsonKey(name: 'data') final List<HouseEntity>? houses}) =
      _$HouseResponseImpl;

  factory _HouseResponse.fromJson(Map<String, dynamic> json) =
      _$HouseResponseImpl.fromJson;

  @override
  @JsonKey(name: 'data')
  List<HouseEntity>? get houses;

  /// Create a copy of HouseResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HouseResponseImplCopyWith<_$HouseResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
