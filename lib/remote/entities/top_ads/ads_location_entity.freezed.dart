// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ads_location_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AdsLocationEntity _$AdsLocationEntityFromJson(Map<String, dynamic> json) {
  return _AdsLocationEntity.fromJson(json);
}

/// @nodoc
mixin _$AdsLocationEntity {
  String? get name => throw _privateConstructorUsedError;
  String? get parent => throw _privateConstructorUsedError;

  /// Serializes this AdsLocationEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AdsLocationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AdsLocationEntityCopyWith<AdsLocationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdsLocationEntityCopyWith<$Res> {
  factory $AdsLocationEntityCopyWith(
          AdsLocationEntity value, $Res Function(AdsLocationEntity) then) =
      _$AdsLocationEntityCopyWithImpl<$Res, AdsLocationEntity>;
  @useResult
  $Res call({String? name, String? parent});
}

/// @nodoc
class _$AdsLocationEntityCopyWithImpl<$Res, $Val extends AdsLocationEntity>
    implements $AdsLocationEntityCopyWith<$Res> {
  _$AdsLocationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AdsLocationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? parent = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AdsLocationEntityImplCopyWith<$Res>
    implements $AdsLocationEntityCopyWith<$Res> {
  factory _$$AdsLocationEntityImplCopyWith(_$AdsLocationEntityImpl value,
          $Res Function(_$AdsLocationEntityImpl) then) =
      __$$AdsLocationEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, String? parent});
}

/// @nodoc
class __$$AdsLocationEntityImplCopyWithImpl<$Res>
    extends _$AdsLocationEntityCopyWithImpl<$Res, _$AdsLocationEntityImpl>
    implements _$$AdsLocationEntityImplCopyWith<$Res> {
  __$$AdsLocationEntityImplCopyWithImpl(_$AdsLocationEntityImpl _value,
      $Res Function(_$AdsLocationEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of AdsLocationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? parent = freezed,
  }) {
    return _then(_$AdsLocationEntityImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AdsLocationEntityImpl implements _AdsLocationEntity {
  const _$AdsLocationEntityImpl({this.name, this.parent});

  factory _$AdsLocationEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$AdsLocationEntityImplFromJson(json);

  @override
  final String? name;
  @override
  final String? parent;

  @override
  String toString() {
    return 'AdsLocationEntity(name: $name, parent: $parent)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AdsLocationEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.parent, parent) || other.parent == parent));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, parent);

  /// Create a copy of AdsLocationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AdsLocationEntityImplCopyWith<_$AdsLocationEntityImpl> get copyWith =>
      __$$AdsLocationEntityImplCopyWithImpl<_$AdsLocationEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AdsLocationEntityImplToJson(
      this,
    );
  }
}

abstract class _AdsLocationEntity implements AdsLocationEntity {
  const factory _AdsLocationEntity({final String? name, final String? parent}) =
      _$AdsLocationEntityImpl;

  factory _AdsLocationEntity.fromJson(Map<String, dynamic> json) =
      _$AdsLocationEntityImpl.fromJson;

  @override
  String? get name;
  @override
  String? get parent;

  /// Create a copy of AdsLocationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AdsLocationEntityImplCopyWith<_$AdsLocationEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
