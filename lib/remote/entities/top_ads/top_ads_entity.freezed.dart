// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'top_ads_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TopAdsEntity _$TopAdsEntityFromJson(Map<String, dynamic> json) {
  return _TopAdsEntity.fromJson(json);
}

/// @nodoc
mixin _$TopAdsEntity {
  String? get name => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  AdsLocationEntity? get location => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'item_id')
  int? get itemId => throw _privateConstructorUsedError;

  /// Serializes this TopAdsEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TopAdsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TopAdsEntityCopyWith<TopAdsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TopAdsEntityCopyWith<$Res> {
  factory $TopAdsEntityCopyWith(
          TopAdsEntity value, $Res Function(TopAdsEntity) then) =
      _$TopAdsEntityCopyWithImpl<$Res, TopAdsEntity>;
  @useResult
  $Res call(
      {String? name,
      String? type,
      String? phone,
      String? image,
      String? price,
      AdsLocationEntity? location,
      String? description,
      @JsonKey(name: 'item_id') int? itemId});

  $AdsLocationEntityCopyWith<$Res>? get location;
}

/// @nodoc
class _$TopAdsEntityCopyWithImpl<$Res, $Val extends TopAdsEntity>
    implements $TopAdsEntityCopyWith<$Res> {
  _$TopAdsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TopAdsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? type = freezed,
    Object? phone = freezed,
    Object? image = freezed,
    Object? price = freezed,
    Object? location = freezed,
    Object? description = freezed,
    Object? itemId = freezed,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as AdsLocationEntity?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      itemId: freezed == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  /// Create a copy of TopAdsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AdsLocationEntityCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $AdsLocationEntityCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TopAdsEntityImplCopyWith<$Res>
    implements $TopAdsEntityCopyWith<$Res> {
  factory _$$TopAdsEntityImplCopyWith(
          _$TopAdsEntityImpl value, $Res Function(_$TopAdsEntityImpl) then) =
      __$$TopAdsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String? type,
      String? phone,
      String? image,
      String? price,
      AdsLocationEntity? location,
      String? description,
      @JsonKey(name: 'item_id') int? itemId});

  @override
  $AdsLocationEntityCopyWith<$Res>? get location;
}

/// @nodoc
class __$$TopAdsEntityImplCopyWithImpl<$Res>
    extends _$TopAdsEntityCopyWithImpl<$Res, _$TopAdsEntityImpl>
    implements _$$TopAdsEntityImplCopyWith<$Res> {
  __$$TopAdsEntityImplCopyWithImpl(
      _$TopAdsEntityImpl _value, $Res Function(_$TopAdsEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of TopAdsEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? type = freezed,
    Object? phone = freezed,
    Object? image = freezed,
    Object? price = freezed,
    Object? location = freezed,
    Object? description = freezed,
    Object? itemId = freezed,
  }) {
    return _then(_$TopAdsEntityImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as AdsLocationEntity?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      itemId: freezed == itemId
          ? _value.itemId
          : itemId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TopAdsEntityImpl implements _TopAdsEntity {
  const _$TopAdsEntityImpl(
      {this.name,
      this.type,
      this.phone,
      this.image,
      this.price,
      this.location,
      this.description,
      @JsonKey(name: 'item_id') this.itemId});

  factory _$TopAdsEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$TopAdsEntityImplFromJson(json);

  @override
  final String? name;
  @override
  final String? type;
  @override
  final String? phone;
  @override
  final String? image;
  @override
  final String? price;
  @override
  final AdsLocationEntity? location;
  @override
  final String? description;
  @override
  @JsonKey(name: 'item_id')
  final int? itemId;

  @override
  String toString() {
    return 'TopAdsEntity(name: $name, type: $type, phone: $phone, image: $image, price: $price, location: $location, description: $description, itemId: $itemId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TopAdsEntityImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.itemId, itemId) || other.itemId == itemId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, type, phone, image, price,
      location, description, itemId);

  /// Create a copy of TopAdsEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TopAdsEntityImplCopyWith<_$TopAdsEntityImpl> get copyWith =>
      __$$TopAdsEntityImplCopyWithImpl<_$TopAdsEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TopAdsEntityImplToJson(
      this,
    );
  }
}

abstract class _TopAdsEntity implements TopAdsEntity {
  const factory _TopAdsEntity(
      {final String? name,
      final String? type,
      final String? phone,
      final String? image,
      final String? price,
      final AdsLocationEntity? location,
      final String? description,
      @JsonKey(name: 'item_id') final int? itemId}) = _$TopAdsEntityImpl;

  factory _TopAdsEntity.fromJson(Map<String, dynamic> json) =
      _$TopAdsEntityImpl.fromJson;

  @override
  String? get name;
  @override
  String? get type;
  @override
  String? get phone;
  @override
  String? get image;
  @override
  String? get price;
  @override
  AdsLocationEntity? get location;
  @override
  String? get description;
  @override
  @JsonKey(name: 'item_id')
  int? get itemId;

  /// Create a copy of TopAdsEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TopAdsEntityImplCopyWith<_$TopAdsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
