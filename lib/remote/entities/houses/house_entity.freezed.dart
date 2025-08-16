// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'house_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

HouseEntity _$HouseEntityFromJson(Map<String, dynamic> json) {
  return _HouseEntity.fromJson(json);
}

/// @nodoc
mixin _$HouseEntity {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_name')
  String? get categoryName => throw _privateConstructorUsedError;
  LocationEntity? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_phone')
  String? get userPhone => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'lover_percentage', fromJson: _stringToInt)
  int? get loverPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: 'lover_price', fromJson: _stringToInt)
  int? get loverPrice => throw _privateConstructorUsedError;
  int? get viewed => throw _privateConstructorUsedError;
  String? get star => throw _privateConstructorUsedError;
  @JsonKey(name: 'comment_count')
  int? get commentCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'room_number')
  int? get roomNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'floor_number')
  int? get floorNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'property_type')
  PropertyTypeEntity? get propertyType => throw _privateConstructorUsedError;
  @JsonKey(name: 'repair_type')
  RepairTypeEntity? get repairType => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  bool? get luxe => throw _privateConstructorUsedError;
  @JsonKey(name: 'luxe_status')
  bool? get luxeStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'luxe_expire')
  String? get luxeExpire => throw _privateConstructorUsedError;
  @JsonKey(name: 'vip_status')
  bool? get vipStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'vip_expire')
  String? get vipExpire => throw _privateConstructorUsedError;
  @JsonKey(name: 'bron_number')
  String? get bronNumber => throw _privateConstructorUsedError;
  List<ImageEntity>? get images => throw _privateConstructorUsedError;
  List<PossibilityEntity>? get possibilities =>
      throw _privateConstructorUsedError;
  int? get comment => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_comment')
  String? get isComment => throw _privateConstructorUsedError;
  @JsonKey(name: 'write_comment')
  String? get writeComment => throw _privateConstructorUsedError;
  String? get who => throw _privateConstructorUsedError;
  int? get area => throw _privateConstructorUsedError;
  int? get exclusisive => throw _privateConstructorUsedError;
  @JsonKey(name: 'exclusive')
  int? get exclusive => throw _privateConstructorUsedError;
  String? get hashtag => throw _privateConstructorUsedError;
  @JsonKey(name: 'level_number')
  int? get levelNumber => throw _privateConstructorUsedError;
  bool? get favorited => throw _privateConstructorUsedError;
  bool? get liked => throw _privateConstructorUsedError;
  ShopEntity? get shop => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'contacted')
  bool? get contacted => throw _privateConstructorUsedError;
  @JsonKey(name: 'has_seen')
  bool? get hasSeen => throw _privateConstructorUsedError;
  bool? get contact => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_owner')
  bool? get isOwner => throw _privateConstructorUsedError;

  /// Serializes this HouseEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HouseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HouseEntityCopyWith<HouseEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HouseEntityCopyWith<$Res> {
  factory $HouseEntityCopyWith(
          HouseEntity value, $Res Function(HouseEntity) then) =
      _$HouseEntityCopyWithImpl<$Res, HouseEntity>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'category_name') String? categoryName,
      LocationEntity? location,
      @JsonKey(name: 'user_id') int? userId,
      String? username,
      @JsonKey(name: 'user_phone') String? userPhone,
      String? name,
      String? description,
      String? price,
      @JsonKey(name: 'lover_percentage', fromJson: _stringToInt)
      int? loverPercentage,
      @JsonKey(name: 'lover_price', fromJson: _stringToInt) int? loverPrice,
      int? viewed,
      String? star,
      @JsonKey(name: 'comment_count') int? commentCount,
      @JsonKey(name: 'room_number') int? roomNumber,
      @JsonKey(name: 'floor_number') int? floorNumber,
      @JsonKey(name: 'property_type') PropertyTypeEntity? propertyType,
      @JsonKey(name: 'repair_type') RepairTypeEntity? repairType,
      String? status,
      bool? luxe,
      @JsonKey(name: 'luxe_status') bool? luxeStatus,
      @JsonKey(name: 'luxe_expire') String? luxeExpire,
      @JsonKey(name: 'vip_status') bool? vipStatus,
      @JsonKey(name: 'vip_expire') String? vipExpire,
      @JsonKey(name: 'bron_number') String? bronNumber,
      List<ImageEntity>? images,
      List<PossibilityEntity>? possibilities,
      int? comment,
      @JsonKey(name: 'is_comment') String? isComment,
      @JsonKey(name: 'write_comment') String? writeComment,
      String? who,
      int? area,
      int? exclusisive,
      @JsonKey(name: 'exclusive') int? exclusive,
      String? hashtag,
      @JsonKey(name: 'level_number') int? levelNumber,
      bool? favorited,
      bool? liked,
      ShopEntity? shop,
      String? type,
      String? date,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'contacted') bool? contacted,
      @JsonKey(name: 'has_seen') bool? hasSeen,
      bool? contact,
      @JsonKey(name: 'is_owner') bool? isOwner});

  $LocationEntityCopyWith<$Res>? get location;
  $PropertyTypeEntityCopyWith<$Res>? get propertyType;
  $RepairTypeEntityCopyWith<$Res>? get repairType;
  $ShopEntityCopyWith<$Res>? get shop;
}

/// @nodoc
class _$HouseEntityCopyWithImpl<$Res, $Val extends HouseEntity>
    implements $HouseEntityCopyWith<$Res> {
  _$HouseEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HouseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? categoryName = freezed,
    Object? location = freezed,
    Object? userId = freezed,
    Object? username = freezed,
    Object? userPhone = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? loverPercentage = freezed,
    Object? loverPrice = freezed,
    Object? viewed = freezed,
    Object? star = freezed,
    Object? commentCount = freezed,
    Object? roomNumber = freezed,
    Object? floorNumber = freezed,
    Object? propertyType = freezed,
    Object? repairType = freezed,
    Object? status = freezed,
    Object? luxe = freezed,
    Object? luxeStatus = freezed,
    Object? luxeExpire = freezed,
    Object? vipStatus = freezed,
    Object? vipExpire = freezed,
    Object? bronNumber = freezed,
    Object? images = freezed,
    Object? possibilities = freezed,
    Object? comment = freezed,
    Object? isComment = freezed,
    Object? writeComment = freezed,
    Object? who = freezed,
    Object? area = freezed,
    Object? exclusisive = freezed,
    Object? exclusive = freezed,
    Object? hashtag = freezed,
    Object? levelNumber = freezed,
    Object? favorited = freezed,
    Object? liked = freezed,
    Object? shop = freezed,
    Object? type = freezed,
    Object? date = freezed,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
    Object? contacted = freezed,
    Object? hasSeen = freezed,
    Object? contact = freezed,
    Object? isOwner = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationEntity?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      userPhone: freezed == userPhone
          ? _value.userPhone
          : userPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      loverPercentage: freezed == loverPercentage
          ? _value.loverPercentage
          : loverPercentage // ignore: cast_nullable_to_non_nullable
              as int?,
      loverPrice: freezed == loverPrice
          ? _value.loverPrice
          : loverPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      viewed: freezed == viewed
          ? _value.viewed
          : viewed // ignore: cast_nullable_to_non_nullable
              as int?,
      star: freezed == star
          ? _value.star
          : star // ignore: cast_nullable_to_non_nullable
              as String?,
      commentCount: freezed == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int?,
      roomNumber: freezed == roomNumber
          ? _value.roomNumber
          : roomNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      floorNumber: freezed == floorNumber
          ? _value.floorNumber
          : floorNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      propertyType: freezed == propertyType
          ? _value.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as PropertyTypeEntity?,
      repairType: freezed == repairType
          ? _value.repairType
          : repairType // ignore: cast_nullable_to_non_nullable
              as RepairTypeEntity?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      luxe: freezed == luxe
          ? _value.luxe
          : luxe // ignore: cast_nullable_to_non_nullable
              as bool?,
      luxeStatus: freezed == luxeStatus
          ? _value.luxeStatus
          : luxeStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      luxeExpire: freezed == luxeExpire
          ? _value.luxeExpire
          : luxeExpire // ignore: cast_nullable_to_non_nullable
              as String?,
      vipStatus: freezed == vipStatus
          ? _value.vipStatus
          : vipStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      vipExpire: freezed == vipExpire
          ? _value.vipExpire
          : vipExpire // ignore: cast_nullable_to_non_nullable
              as String?,
      bronNumber: freezed == bronNumber
          ? _value.bronNumber
          : bronNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageEntity>?,
      possibilities: freezed == possibilities
          ? _value.possibilities
          : possibilities // ignore: cast_nullable_to_non_nullable
              as List<PossibilityEntity>?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as int?,
      isComment: freezed == isComment
          ? _value.isComment
          : isComment // ignore: cast_nullable_to_non_nullable
              as String?,
      writeComment: freezed == writeComment
          ? _value.writeComment
          : writeComment // ignore: cast_nullable_to_non_nullable
              as String?,
      who: freezed == who
          ? _value.who
          : who // ignore: cast_nullable_to_non_nullable
              as String?,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as int?,
      exclusisive: freezed == exclusisive
          ? _value.exclusisive
          : exclusisive // ignore: cast_nullable_to_non_nullable
              as int?,
      exclusive: freezed == exclusive
          ? _value.exclusive
          : exclusive // ignore: cast_nullable_to_non_nullable
              as int?,
      hashtag: freezed == hashtag
          ? _value.hashtag
          : hashtag // ignore: cast_nullable_to_non_nullable
              as String?,
      levelNumber: freezed == levelNumber
          ? _value.levelNumber
          : levelNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      favorited: freezed == favorited
          ? _value.favorited
          : favorited // ignore: cast_nullable_to_non_nullable
              as bool?,
      liked: freezed == liked
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool?,
      shop: freezed == shop
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as ShopEntity?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      contacted: freezed == contacted
          ? _value.contacted
          : contacted // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasSeen: freezed == hasSeen
          ? _value.hasSeen
          : hasSeen // ignore: cast_nullable_to_non_nullable
              as bool?,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as bool?,
      isOwner: freezed == isOwner
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  /// Create a copy of HouseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationEntityCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationEntityCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  /// Create a copy of HouseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PropertyTypeEntityCopyWith<$Res>? get propertyType {
    if (_value.propertyType == null) {
      return null;
    }

    return $PropertyTypeEntityCopyWith<$Res>(_value.propertyType!, (value) {
      return _then(_value.copyWith(propertyType: value) as $Val);
    });
  }

  /// Create a copy of HouseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RepairTypeEntityCopyWith<$Res>? get repairType {
    if (_value.repairType == null) {
      return null;
    }

    return $RepairTypeEntityCopyWith<$Res>(_value.repairType!, (value) {
      return _then(_value.copyWith(repairType: value) as $Val);
    });
  }

  /// Create a copy of HouseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShopEntityCopyWith<$Res>? get shop {
    if (_value.shop == null) {
      return null;
    }

    return $ShopEntityCopyWith<$Res>(_value.shop!, (value) {
      return _then(_value.copyWith(shop: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HouseEntityImplCopyWith<$Res>
    implements $HouseEntityCopyWith<$Res> {
  factory _$$HouseEntityImplCopyWith(
          _$HouseEntityImpl value, $Res Function(_$HouseEntityImpl) then) =
      __$$HouseEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'category_name') String? categoryName,
      LocationEntity? location,
      @JsonKey(name: 'user_id') int? userId,
      String? username,
      @JsonKey(name: 'user_phone') String? userPhone,
      String? name,
      String? description,
      String? price,
      @JsonKey(name: 'lover_percentage', fromJson: _stringToInt)
      int? loverPercentage,
      @JsonKey(name: 'lover_price', fromJson: _stringToInt) int? loverPrice,
      int? viewed,
      String? star,
      @JsonKey(name: 'comment_count') int? commentCount,
      @JsonKey(name: 'room_number') int? roomNumber,
      @JsonKey(name: 'floor_number') int? floorNumber,
      @JsonKey(name: 'property_type') PropertyTypeEntity? propertyType,
      @JsonKey(name: 'repair_type') RepairTypeEntity? repairType,
      String? status,
      bool? luxe,
      @JsonKey(name: 'luxe_status') bool? luxeStatus,
      @JsonKey(name: 'luxe_expire') String? luxeExpire,
      @JsonKey(name: 'vip_status') bool? vipStatus,
      @JsonKey(name: 'vip_expire') String? vipExpire,
      @JsonKey(name: 'bron_number') String? bronNumber,
      List<ImageEntity>? images,
      List<PossibilityEntity>? possibilities,
      int? comment,
      @JsonKey(name: 'is_comment') String? isComment,
      @JsonKey(name: 'write_comment') String? writeComment,
      String? who,
      int? area,
      int? exclusisive,
      @JsonKey(name: 'exclusive') int? exclusive,
      String? hashtag,
      @JsonKey(name: 'level_number') int? levelNumber,
      bool? favorited,
      bool? liked,
      ShopEntity? shop,
      String? type,
      String? date,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'contacted') bool? contacted,
      @JsonKey(name: 'has_seen') bool? hasSeen,
      bool? contact,
      @JsonKey(name: 'is_owner') bool? isOwner});

  @override
  $LocationEntityCopyWith<$Res>? get location;
  @override
  $PropertyTypeEntityCopyWith<$Res>? get propertyType;
  @override
  $RepairTypeEntityCopyWith<$Res>? get repairType;
  @override
  $ShopEntityCopyWith<$Res>? get shop;
}

/// @nodoc
class __$$HouseEntityImplCopyWithImpl<$Res>
    extends _$HouseEntityCopyWithImpl<$Res, _$HouseEntityImpl>
    implements _$$HouseEntityImplCopyWith<$Res> {
  __$$HouseEntityImplCopyWithImpl(
      _$HouseEntityImpl _value, $Res Function(_$HouseEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of HouseEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? categoryName = freezed,
    Object? location = freezed,
    Object? userId = freezed,
    Object? username = freezed,
    Object? userPhone = freezed,
    Object? name = freezed,
    Object? description = freezed,
    Object? price = freezed,
    Object? loverPercentage = freezed,
    Object? loverPrice = freezed,
    Object? viewed = freezed,
    Object? star = freezed,
    Object? commentCount = freezed,
    Object? roomNumber = freezed,
    Object? floorNumber = freezed,
    Object? propertyType = freezed,
    Object? repairType = freezed,
    Object? status = freezed,
    Object? luxe = freezed,
    Object? luxeStatus = freezed,
    Object? luxeExpire = freezed,
    Object? vipStatus = freezed,
    Object? vipExpire = freezed,
    Object? bronNumber = freezed,
    Object? images = freezed,
    Object? possibilities = freezed,
    Object? comment = freezed,
    Object? isComment = freezed,
    Object? writeComment = freezed,
    Object? who = freezed,
    Object? area = freezed,
    Object? exclusisive = freezed,
    Object? exclusive = freezed,
    Object? hashtag = freezed,
    Object? levelNumber = freezed,
    Object? favorited = freezed,
    Object? liked = freezed,
    Object? shop = freezed,
    Object? type = freezed,
    Object? date = freezed,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
    Object? contacted = freezed,
    Object? hasSeen = freezed,
    Object? contact = freezed,
    Object? isOwner = freezed,
  }) {
    return _then(_$HouseEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryName: freezed == categoryName
          ? _value.categoryName
          : categoryName // ignore: cast_nullable_to_non_nullable
              as String?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as LocationEntity?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      userPhone: freezed == userPhone
          ? _value.userPhone
          : userPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as String?,
      loverPercentage: freezed == loverPercentage
          ? _value.loverPercentage
          : loverPercentage // ignore: cast_nullable_to_non_nullable
              as int?,
      loverPrice: freezed == loverPrice
          ? _value.loverPrice
          : loverPrice // ignore: cast_nullable_to_non_nullable
              as int?,
      viewed: freezed == viewed
          ? _value.viewed
          : viewed // ignore: cast_nullable_to_non_nullable
              as int?,
      star: freezed == star
          ? _value.star
          : star // ignore: cast_nullable_to_non_nullable
              as String?,
      commentCount: freezed == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int?,
      roomNumber: freezed == roomNumber
          ? _value.roomNumber
          : roomNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      floorNumber: freezed == floorNumber
          ? _value.floorNumber
          : floorNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      propertyType: freezed == propertyType
          ? _value.propertyType
          : propertyType // ignore: cast_nullable_to_non_nullable
              as PropertyTypeEntity?,
      repairType: freezed == repairType
          ? _value.repairType
          : repairType // ignore: cast_nullable_to_non_nullable
              as RepairTypeEntity?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      luxe: freezed == luxe
          ? _value.luxe
          : luxe // ignore: cast_nullable_to_non_nullable
              as bool?,
      luxeStatus: freezed == luxeStatus
          ? _value.luxeStatus
          : luxeStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      luxeExpire: freezed == luxeExpire
          ? _value.luxeExpire
          : luxeExpire // ignore: cast_nullable_to_non_nullable
              as String?,
      vipStatus: freezed == vipStatus
          ? _value.vipStatus
          : vipStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      vipExpire: freezed == vipExpire
          ? _value.vipExpire
          : vipExpire // ignore: cast_nullable_to_non_nullable
              as String?,
      bronNumber: freezed == bronNumber
          ? _value.bronNumber
          : bronNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ImageEntity>?,
      possibilities: freezed == possibilities
          ? _value._possibilities
          : possibilities // ignore: cast_nullable_to_non_nullable
              as List<PossibilityEntity>?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as int?,
      isComment: freezed == isComment
          ? _value.isComment
          : isComment // ignore: cast_nullable_to_non_nullable
              as String?,
      writeComment: freezed == writeComment
          ? _value.writeComment
          : writeComment // ignore: cast_nullable_to_non_nullable
              as String?,
      who: freezed == who
          ? _value.who
          : who // ignore: cast_nullable_to_non_nullable
              as String?,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as int?,
      exclusisive: freezed == exclusisive
          ? _value.exclusisive
          : exclusisive // ignore: cast_nullable_to_non_nullable
              as int?,
      exclusive: freezed == exclusive
          ? _value.exclusive
          : exclusive // ignore: cast_nullable_to_non_nullable
              as int?,
      hashtag: freezed == hashtag
          ? _value.hashtag
          : hashtag // ignore: cast_nullable_to_non_nullable
              as String?,
      levelNumber: freezed == levelNumber
          ? _value.levelNumber
          : levelNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      favorited: freezed == favorited
          ? _value.favorited
          : favorited // ignore: cast_nullable_to_non_nullable
              as bool?,
      liked: freezed == liked
          ? _value.liked
          : liked // ignore: cast_nullable_to_non_nullable
              as bool?,
      shop: freezed == shop
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as ShopEntity?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      contacted: freezed == contacted
          ? _value.contacted
          : contacted // ignore: cast_nullable_to_non_nullable
              as bool?,
      hasSeen: freezed == hasSeen
          ? _value.hasSeen
          : hasSeen // ignore: cast_nullable_to_non_nullable
              as bool?,
      contact: freezed == contact
          ? _value.contact
          : contact // ignore: cast_nullable_to_non_nullable
              as bool?,
      isOwner: freezed == isOwner
          ? _value.isOwner
          : isOwner // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HouseEntityImpl implements _HouseEntity {
  const _$HouseEntityImpl(
      {this.id,
      @JsonKey(name: 'category_name') this.categoryName,
      this.location,
      @JsonKey(name: 'user_id') this.userId,
      this.username,
      @JsonKey(name: 'user_phone') this.userPhone,
      this.name,
      this.description,
      this.price,
      @JsonKey(name: 'lover_percentage', fromJson: _stringToInt)
      this.loverPercentage,
      @JsonKey(name: 'lover_price', fromJson: _stringToInt) this.loverPrice,
      this.viewed,
      this.star,
      @JsonKey(name: 'comment_count') this.commentCount,
      @JsonKey(name: 'room_number') this.roomNumber,
      @JsonKey(name: 'floor_number') this.floorNumber,
      @JsonKey(name: 'property_type') this.propertyType,
      @JsonKey(name: 'repair_type') this.repairType,
      this.status,
      this.luxe,
      @JsonKey(name: 'luxe_status') this.luxeStatus,
      @JsonKey(name: 'luxe_expire') this.luxeExpire,
      @JsonKey(name: 'vip_status') this.vipStatus,
      @JsonKey(name: 'vip_expire') this.vipExpire,
      @JsonKey(name: 'bron_number') this.bronNumber,
      final List<ImageEntity>? images,
      final List<PossibilityEntity>? possibilities,
      this.comment,
      @JsonKey(name: 'is_comment') this.isComment,
      @JsonKey(name: 'write_comment') this.writeComment,
      this.who,
      this.area,
      this.exclusisive,
      @JsonKey(name: 'exclusive') this.exclusive,
      this.hashtag,
      @JsonKey(name: 'level_number') this.levelNumber,
      this.favorited,
      this.liked,
      this.shop,
      this.type,
      this.date,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'contacted') this.contacted,
      @JsonKey(name: 'has_seen') this.hasSeen,
      this.contact,
      @JsonKey(name: 'is_owner') this.isOwner})
      : _images = images,
        _possibilities = possibilities;

  factory _$HouseEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$HouseEntityImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'category_name')
  final String? categoryName;
  @override
  final LocationEntity? location;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  final String? username;
  @override
  @JsonKey(name: 'user_phone')
  final String? userPhone;
  @override
  final String? name;
  @override
  final String? description;
  @override
  final String? price;
  @override
  @JsonKey(name: 'lover_percentage', fromJson: _stringToInt)
  final int? loverPercentage;
  @override
  @JsonKey(name: 'lover_price', fromJson: _stringToInt)
  final int? loverPrice;
  @override
  final int? viewed;
  @override
  final String? star;
  @override
  @JsonKey(name: 'comment_count')
  final int? commentCount;
  @override
  @JsonKey(name: 'room_number')
  final int? roomNumber;
  @override
  @JsonKey(name: 'floor_number')
  final int? floorNumber;
  @override
  @JsonKey(name: 'property_type')
  final PropertyTypeEntity? propertyType;
  @override
  @JsonKey(name: 'repair_type')
  final RepairTypeEntity? repairType;
  @override
  final String? status;
  @override
  final bool? luxe;
  @override
  @JsonKey(name: 'luxe_status')
  final bool? luxeStatus;
  @override
  @JsonKey(name: 'luxe_expire')
  final String? luxeExpire;
  @override
  @JsonKey(name: 'vip_status')
  final bool? vipStatus;
  @override
  @JsonKey(name: 'vip_expire')
  final String? vipExpire;
  @override
  @JsonKey(name: 'bron_number')
  final String? bronNumber;
  final List<ImageEntity>? _images;
  @override
  List<ImageEntity>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PossibilityEntity>? _possibilities;
  @override
  List<PossibilityEntity>? get possibilities {
    final value = _possibilities;
    if (value == null) return null;
    if (_possibilities is EqualUnmodifiableListView) return _possibilities;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final int? comment;
  @override
  @JsonKey(name: 'is_comment')
  final String? isComment;
  @override
  @JsonKey(name: 'write_comment')
  final String? writeComment;
  @override
  final String? who;
  @override
  final int? area;
  @override
  final int? exclusisive;
  @override
  @JsonKey(name: 'exclusive')
  final int? exclusive;
  @override
  final String? hashtag;
  @override
  @JsonKey(name: 'level_number')
  final int? levelNumber;
  @override
  final bool? favorited;
  @override
  final bool? liked;
  @override
  final ShopEntity? shop;
  @override
  final String? type;
  @override
  final String? date;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'contacted')
  final bool? contacted;
  @override
  @JsonKey(name: 'has_seen')
  final bool? hasSeen;
  @override
  final bool? contact;
  @override
  @JsonKey(name: 'is_owner')
  final bool? isOwner;

  @override
  String toString() {
    return 'HouseEntity(id: $id, categoryName: $categoryName, location: $location, userId: $userId, username: $username, userPhone: $userPhone, name: $name, description: $description, price: $price, loverPercentage: $loverPercentage, loverPrice: $loverPrice, viewed: $viewed, star: $star, commentCount: $commentCount, roomNumber: $roomNumber, floorNumber: $floorNumber, propertyType: $propertyType, repairType: $repairType, status: $status, luxe: $luxe, luxeStatus: $luxeStatus, luxeExpire: $luxeExpire, vipStatus: $vipStatus, vipExpire: $vipExpire, bronNumber: $bronNumber, images: $images, possibilities: $possibilities, comment: $comment, isComment: $isComment, writeComment: $writeComment, who: $who, area: $area, exclusisive: $exclusisive, exclusive: $exclusive, hashtag: $hashtag, levelNumber: $levelNumber, favorited: $favorited, liked: $liked, shop: $shop, type: $type, date: $date, updatedAt: $updatedAt, createdAt: $createdAt, contacted: $contacted, hasSeen: $hasSeen, contact: $contact, isOwner: $isOwner)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HouseEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.categoryName, categoryName) ||
                other.categoryName == categoryName) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.userPhone, userPhone) ||
                other.userPhone == userPhone) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.loverPercentage, loverPercentage) ||
                other.loverPercentage == loverPercentage) &&
            (identical(other.loverPrice, loverPrice) ||
                other.loverPrice == loverPrice) &&
            (identical(other.viewed, viewed) || other.viewed == viewed) &&
            (identical(other.star, star) || other.star == star) &&
            (identical(other.commentCount, commentCount) ||
                other.commentCount == commentCount) &&
            (identical(other.roomNumber, roomNumber) ||
                other.roomNumber == roomNumber) &&
            (identical(other.floorNumber, floorNumber) ||
                other.floorNumber == floorNumber) &&
            (identical(other.propertyType, propertyType) ||
                other.propertyType == propertyType) &&
            (identical(other.repairType, repairType) ||
                other.repairType == repairType) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.luxe, luxe) || other.luxe == luxe) &&
            (identical(other.luxeStatus, luxeStatus) ||
                other.luxeStatus == luxeStatus) &&
            (identical(other.luxeExpire, luxeExpire) ||
                other.luxeExpire == luxeExpire) &&
            (identical(other.vipStatus, vipStatus) ||
                other.vipStatus == vipStatus) &&
            (identical(other.vipExpire, vipExpire) ||
                other.vipExpire == vipExpire) &&
            (identical(other.bronNumber, bronNumber) ||
                other.bronNumber == bronNumber) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            const DeepCollectionEquality()
                .equals(other._possibilities, _possibilities) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.isComment, isComment) ||
                other.isComment == isComment) &&
            (identical(other.writeComment, writeComment) ||
                other.writeComment == writeComment) &&
            (identical(other.who, who) || other.who == who) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.exclusisive, exclusisive) ||
                other.exclusisive == exclusisive) &&
            (identical(other.exclusive, exclusive) ||
                other.exclusive == exclusive) &&
            (identical(other.hashtag, hashtag) || other.hashtag == hashtag) &&
            (identical(other.levelNumber, levelNumber) ||
                other.levelNumber == levelNumber) &&
            (identical(other.favorited, favorited) ||
                other.favorited == favorited) &&
            (identical(other.liked, liked) || other.liked == liked) &&
            (identical(other.shop, shop) || other.shop == shop) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.contacted, contacted) ||
                other.contacted == contacted) &&
            (identical(other.hasSeen, hasSeen) || other.hasSeen == hasSeen) &&
            (identical(other.contact, contact) || other.contact == contact) &&
            (identical(other.isOwner, isOwner) || other.isOwner == isOwner));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        categoryName,
        location,
        userId,
        username,
        userPhone,
        name,
        description,
        price,
        loverPercentage,
        loverPrice,
        viewed,
        star,
        commentCount,
        roomNumber,
        floorNumber,
        propertyType,
        repairType,
        status,
        luxe,
        luxeStatus,
        luxeExpire,
        vipStatus,
        vipExpire,
        bronNumber,
        const DeepCollectionEquality().hash(_images),
        const DeepCollectionEquality().hash(_possibilities),
        comment,
        isComment,
        writeComment,
        who,
        area,
        exclusisive,
        exclusive,
        hashtag,
        levelNumber,
        favorited,
        liked,
        shop,
        type,
        date,
        updatedAt,
        createdAt,
        contacted,
        hasSeen,
        contact,
        isOwner
      ]);

  /// Create a copy of HouseEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HouseEntityImplCopyWith<_$HouseEntityImpl> get copyWith =>
      __$$HouseEntityImplCopyWithImpl<_$HouseEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HouseEntityImplToJson(
      this,
    );
  }
}

abstract class _HouseEntity implements HouseEntity {
  const factory _HouseEntity(
      {final int? id,
      @JsonKey(name: 'category_name') final String? categoryName,
      final LocationEntity? location,
      @JsonKey(name: 'user_id') final int? userId,
      final String? username,
      @JsonKey(name: 'user_phone') final String? userPhone,
      final String? name,
      final String? description,
      final String? price,
      @JsonKey(name: 'lover_percentage', fromJson: _stringToInt)
      final int? loverPercentage,
      @JsonKey(name: 'lover_price', fromJson: _stringToInt)
      final int? loverPrice,
      final int? viewed,
      final String? star,
      @JsonKey(name: 'comment_count') final int? commentCount,
      @JsonKey(name: 'room_number') final int? roomNumber,
      @JsonKey(name: 'floor_number') final int? floorNumber,
      @JsonKey(name: 'property_type') final PropertyTypeEntity? propertyType,
      @JsonKey(name: 'repair_type') final RepairTypeEntity? repairType,
      final String? status,
      final bool? luxe,
      @JsonKey(name: 'luxe_status') final bool? luxeStatus,
      @JsonKey(name: 'luxe_expire') final String? luxeExpire,
      @JsonKey(name: 'vip_status') final bool? vipStatus,
      @JsonKey(name: 'vip_expire') final String? vipExpire,
      @JsonKey(name: 'bron_number') final String? bronNumber,
      final List<ImageEntity>? images,
      final List<PossibilityEntity>? possibilities,
      final int? comment,
      @JsonKey(name: 'is_comment') final String? isComment,
      @JsonKey(name: 'write_comment') final String? writeComment,
      final String? who,
      final int? area,
      final int? exclusisive,
      @JsonKey(name: 'exclusive') final int? exclusive,
      final String? hashtag,
      @JsonKey(name: 'level_number') final int? levelNumber,
      final bool? favorited,
      final bool? liked,
      final ShopEntity? shop,
      final String? type,
      final String? date,
      @JsonKey(name: 'updated_at') final String? updatedAt,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'contacted') final bool? contacted,
      @JsonKey(name: 'has_seen') final bool? hasSeen,
      final bool? contact,
      @JsonKey(name: 'is_owner') final bool? isOwner}) = _$HouseEntityImpl;

  factory _HouseEntity.fromJson(Map<String, dynamic> json) =
      _$HouseEntityImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'category_name')
  String? get categoryName;
  @override
  LocationEntity? get location;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  String? get username;
  @override
  @JsonKey(name: 'user_phone')
  String? get userPhone;
  @override
  String? get name;
  @override
  String? get description;
  @override
  String? get price;
  @override
  @JsonKey(name: 'lover_percentage', fromJson: _stringToInt)
  int? get loverPercentage;
  @override
  @JsonKey(name: 'lover_price', fromJson: _stringToInt)
  int? get loverPrice;
  @override
  int? get viewed;
  @override
  String? get star;
  @override
  @JsonKey(name: 'comment_count')
  int? get commentCount;
  @override
  @JsonKey(name: 'room_number')
  int? get roomNumber;
  @override
  @JsonKey(name: 'floor_number')
  int? get floorNumber;
  @override
  @JsonKey(name: 'property_type')
  PropertyTypeEntity? get propertyType;
  @override
  @JsonKey(name: 'repair_type')
  RepairTypeEntity? get repairType;
  @override
  String? get status;
  @override
  bool? get luxe;
  @override
  @JsonKey(name: 'luxe_status')
  bool? get luxeStatus;
  @override
  @JsonKey(name: 'luxe_expire')
  String? get luxeExpire;
  @override
  @JsonKey(name: 'vip_status')
  bool? get vipStatus;
  @override
  @JsonKey(name: 'vip_expire')
  String? get vipExpire;
  @override
  @JsonKey(name: 'bron_number')
  String? get bronNumber;
  @override
  List<ImageEntity>? get images;
  @override
  List<PossibilityEntity>? get possibilities;
  @override
  int? get comment;
  @override
  @JsonKey(name: 'is_comment')
  String? get isComment;
  @override
  @JsonKey(name: 'write_comment')
  String? get writeComment;
  @override
  String? get who;
  @override
  int? get area;
  @override
  int? get exclusisive;
  @override
  @JsonKey(name: 'exclusive')
  int? get exclusive;
  @override
  String? get hashtag;
  @override
  @JsonKey(name: 'level_number')
  int? get levelNumber;
  @override
  bool? get favorited;
  @override
  bool? get liked;
  @override
  ShopEntity? get shop;
  @override
  String? get type;
  @override
  String? get date;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'contacted')
  bool? get contacted;
  @override
  @JsonKey(name: 'has_seen')
  bool? get hasSeen;
  @override
  bool? get contact;
  @override
  @JsonKey(name: 'is_owner')
  bool? get isOwner;

  /// Create a copy of HouseEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HouseEntityImplCopyWith<_$HouseEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LocationEntity _$LocationEntityFromJson(Map<String, dynamic> json) {
  return _LocationEntity.fromJson(json);
}

/// @nodoc
mixin _$LocationEntity {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_id')
  int? get parentId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_name')
  String? get parentName => throw _privateConstructorUsedError;

  /// Serializes this LocationEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationEntityCopyWith<LocationEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationEntityCopyWith<$Res> {
  factory $LocationEntityCopyWith(
          LocationEntity value, $Res Function(LocationEntity) then) =
      _$LocationEntityCopyWithImpl<$Res, LocationEntity>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'parent_id') int? parentId,
      String? name,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'parent_name') String? parentName});
}

/// @nodoc
class _$LocationEntityCopyWithImpl<$Res, $Val extends LocationEntity>
    implements $LocationEntityCopyWith<$Res> {
  _$LocationEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? parentId = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? parentName = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      parentName: freezed == parentName
          ? _value.parentName
          : parentName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationEntityImplCopyWith<$Res>
    implements $LocationEntityCopyWith<$Res> {
  factory _$$LocationEntityImplCopyWith(_$LocationEntityImpl value,
          $Res Function(_$LocationEntityImpl) then) =
      __$$LocationEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'parent_id') int? parentId,
      String? name,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt,
      @JsonKey(name: 'parent_name') String? parentName});
}

/// @nodoc
class __$$LocationEntityImplCopyWithImpl<$Res>
    extends _$LocationEntityCopyWithImpl<$Res, _$LocationEntityImpl>
    implements _$$LocationEntityImplCopyWith<$Res> {
  __$$LocationEntityImplCopyWithImpl(
      _$LocationEntityImpl _value, $Res Function(_$LocationEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? parentId = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
    Object? parentName = freezed,
  }) {
    return _then(_$LocationEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      parentId: freezed == parentId
          ? _value.parentId
          : parentId // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      parentName: freezed == parentName
          ? _value.parentName
          : parentName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationEntityImpl implements _LocationEntity {
  const _$LocationEntityImpl(
      {this.id,
      @JsonKey(name: 'parent_id') this.parentId,
      this.name,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'parent_name') this.parentName});

  factory _$LocationEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationEntityImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'parent_id')
  final int? parentId;
  @override
  final String? name;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;
  @override
  @JsonKey(name: 'parent_name')
  final String? parentName;

  @override
  String toString() {
    return 'LocationEntity(id: $id, parentId: $parentId, name: $name, createdAt: $createdAt, updatedAt: $updatedAt, parentName: $parentName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.parentName, parentName) ||
                other.parentName == parentName));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, parentId, name, createdAt, updatedAt, parentName);

  /// Create a copy of LocationEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationEntityImplCopyWith<_$LocationEntityImpl> get copyWith =>
      __$$LocationEntityImplCopyWithImpl<_$LocationEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationEntityImplToJson(
      this,
    );
  }
}

abstract class _LocationEntity implements LocationEntity {
  const factory _LocationEntity(
          {final int? id,
          @JsonKey(name: 'parent_id') final int? parentId,
          final String? name,
          @JsonKey(name: 'created_at') final String? createdAt,
          @JsonKey(name: 'updated_at') final String? updatedAt,
          @JsonKey(name: 'parent_name') final String? parentName}) =
      _$LocationEntityImpl;

  factory _LocationEntity.fromJson(Map<String, dynamic> json) =
      _$LocationEntityImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'parent_id')
  int? get parentId;
  @override
  String? get name;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;
  @override
  @JsonKey(name: 'parent_name')
  String? get parentName;

  /// Create a copy of LocationEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationEntityImplCopyWith<_$LocationEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PropertyTypeEntity _$PropertyTypeEntityFromJson(Map<String, dynamic> json) {
  return _PropertyTypeEntity.fromJson(json);
}

/// @nodoc
mixin _$PropertyTypeEntity {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;

  /// Serializes this PropertyTypeEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PropertyTypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PropertyTypeEntityCopyWith<PropertyTypeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PropertyTypeEntityCopyWith<$Res> {
  factory $PropertyTypeEntityCopyWith(
          PropertyTypeEntity value, $Res Function(PropertyTypeEntity) then) =
      _$PropertyTypeEntityCopyWithImpl<$Res, PropertyTypeEntity>;
  @useResult
  $Res call({int? id, String? name, String? icon});
}

/// @nodoc
class _$PropertyTypeEntityCopyWithImpl<$Res, $Val extends PropertyTypeEntity>
    implements $PropertyTypeEntityCopyWith<$Res> {
  _$PropertyTypeEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PropertyTypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PropertyTypeEntityImplCopyWith<$Res>
    implements $PropertyTypeEntityCopyWith<$Res> {
  factory _$$PropertyTypeEntityImplCopyWith(_$PropertyTypeEntityImpl value,
          $Res Function(_$PropertyTypeEntityImpl) then) =
      __$$PropertyTypeEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? icon});
}

/// @nodoc
class __$$PropertyTypeEntityImplCopyWithImpl<$Res>
    extends _$PropertyTypeEntityCopyWithImpl<$Res, _$PropertyTypeEntityImpl>
    implements _$$PropertyTypeEntityImplCopyWith<$Res> {
  __$$PropertyTypeEntityImplCopyWithImpl(_$PropertyTypeEntityImpl _value,
      $Res Function(_$PropertyTypeEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of PropertyTypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? icon = freezed,
  }) {
    return _then(_$PropertyTypeEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PropertyTypeEntityImpl implements _PropertyTypeEntity {
  const _$PropertyTypeEntityImpl({this.id, this.name, this.icon});

  factory _$PropertyTypeEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PropertyTypeEntityImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? icon;

  @override
  String toString() {
    return 'PropertyTypeEntity(id: $id, name: $name, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PropertyTypeEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, icon);

  /// Create a copy of PropertyTypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PropertyTypeEntityImplCopyWith<_$PropertyTypeEntityImpl> get copyWith =>
      __$$PropertyTypeEntityImplCopyWithImpl<_$PropertyTypeEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PropertyTypeEntityImplToJson(
      this,
    );
  }
}

abstract class _PropertyTypeEntity implements PropertyTypeEntity {
  const factory _PropertyTypeEntity(
      {final int? id,
      final String? name,
      final String? icon}) = _$PropertyTypeEntityImpl;

  factory _PropertyTypeEntity.fromJson(Map<String, dynamic> json) =
      _$PropertyTypeEntityImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get icon;

  /// Create a copy of PropertyTypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PropertyTypeEntityImplCopyWith<_$PropertyTypeEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RepairTypeEntity _$RepairTypeEntityFromJson(Map<String, dynamic> json) {
  return _RepairTypeEntity.fromJson(json);
}

/// @nodoc
mixin _$RepairTypeEntity {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get icon => throw _privateConstructorUsedError;

  /// Serializes this RepairTypeEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RepairTypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RepairTypeEntityCopyWith<RepairTypeEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RepairTypeEntityCopyWith<$Res> {
  factory $RepairTypeEntityCopyWith(
          RepairTypeEntity value, $Res Function(RepairTypeEntity) then) =
      _$RepairTypeEntityCopyWithImpl<$Res, RepairTypeEntity>;
  @useResult
  $Res call({int? id, String? name, String? icon});
}

/// @nodoc
class _$RepairTypeEntityCopyWithImpl<$Res, $Val extends RepairTypeEntity>
    implements $RepairTypeEntityCopyWith<$Res> {
  _$RepairTypeEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RepairTypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RepairTypeEntityImplCopyWith<$Res>
    implements $RepairTypeEntityCopyWith<$Res> {
  factory _$$RepairTypeEntityImplCopyWith(_$RepairTypeEntityImpl value,
          $Res Function(_$RepairTypeEntityImpl) then) =
      __$$RepairTypeEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name, String? icon});
}

/// @nodoc
class __$$RepairTypeEntityImplCopyWithImpl<$Res>
    extends _$RepairTypeEntityCopyWithImpl<$Res, _$RepairTypeEntityImpl>
    implements _$$RepairTypeEntityImplCopyWith<$Res> {
  __$$RepairTypeEntityImplCopyWithImpl(_$RepairTypeEntityImpl _value,
      $Res Function(_$RepairTypeEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of RepairTypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? icon = freezed,
  }) {
    return _then(_$RepairTypeEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RepairTypeEntityImpl implements _RepairTypeEntity {
  const _$RepairTypeEntityImpl({this.id, this.name, this.icon});

  factory _$RepairTypeEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$RepairTypeEntityImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? icon;

  @override
  String toString() {
    return 'RepairTypeEntity(id: $id, name: $name, icon: $icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RepairTypeEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, icon);

  /// Create a copy of RepairTypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RepairTypeEntityImplCopyWith<_$RepairTypeEntityImpl> get copyWith =>
      __$$RepairTypeEntityImplCopyWithImpl<_$RepairTypeEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RepairTypeEntityImplToJson(
      this,
    );
  }
}

abstract class _RepairTypeEntity implements RepairTypeEntity {
  const factory _RepairTypeEntity(
      {final int? id,
      final String? name,
      final String? icon}) = _$RepairTypeEntityImpl;

  factory _RepairTypeEntity.fromJson(Map<String, dynamic> json) =
      _$RepairTypeEntityImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get icon;

  /// Create a copy of RepairTypeEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RepairTypeEntityImplCopyWith<_$RepairTypeEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageEntity _$ImageEntityFromJson(Map<String, dynamic> json) {
  return _ImageEntity.fromJson(json);
}

/// @nodoc
mixin _$ImageEntity {
  String? get url => throw _privateConstructorUsedError;
  String? get original => throw _privateConstructorUsedError;
  String? get thumbnail => throw _privateConstructorUsedError;
  String? get watermark => throw _privateConstructorUsedError;

  /// Serializes this ImageEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ImageEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ImageEntityCopyWith<ImageEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageEntityCopyWith<$Res> {
  factory $ImageEntityCopyWith(
          ImageEntity value, $Res Function(ImageEntity) then) =
      _$ImageEntityCopyWithImpl<$Res, ImageEntity>;
  @useResult
  $Res call(
      {String? url, String? original, String? thumbnail, String? watermark});
}

/// @nodoc
class _$ImageEntityCopyWithImpl<$Res, $Val extends ImageEntity>
    implements $ImageEntityCopyWith<$Res> {
  _$ImageEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ImageEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? original = freezed,
    Object? thumbnail = freezed,
    Object? watermark = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      original: freezed == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      watermark: freezed == watermark
          ? _value.watermark
          : watermark // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ImageEntityImplCopyWith<$Res>
    implements $ImageEntityCopyWith<$Res> {
  factory _$$ImageEntityImplCopyWith(
          _$ImageEntityImpl value, $Res Function(_$ImageEntityImpl) then) =
      __$$ImageEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? url, String? original, String? thumbnail, String? watermark});
}

/// @nodoc
class __$$ImageEntityImplCopyWithImpl<$Res>
    extends _$ImageEntityCopyWithImpl<$Res, _$ImageEntityImpl>
    implements _$$ImageEntityImplCopyWith<$Res> {
  __$$ImageEntityImplCopyWithImpl(
      _$ImageEntityImpl _value, $Res Function(_$ImageEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ImageEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
    Object? original = freezed,
    Object? thumbnail = freezed,
    Object? watermark = freezed,
  }) {
    return _then(_$ImageEntityImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
      original: freezed == original
          ? _value.original
          : original // ignore: cast_nullable_to_non_nullable
              as String?,
      thumbnail: freezed == thumbnail
          ? _value.thumbnail
          : thumbnail // ignore: cast_nullable_to_non_nullable
              as String?,
      watermark: freezed == watermark
          ? _value.watermark
          : watermark // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ImageEntityImpl implements _ImageEntity {
  const _$ImageEntityImpl(
      {this.url, this.original, this.thumbnail, this.watermark});

  factory _$ImageEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ImageEntityImplFromJson(json);

  @override
  final String? url;
  @override
  final String? original;
  @override
  final String? thumbnail;
  @override
  final String? watermark;

  @override
  String toString() {
    return 'ImageEntity(url: $url, original: $original, thumbnail: $thumbnail, watermark: $watermark)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ImageEntityImpl &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.original, original) ||
                other.original == original) &&
            (identical(other.thumbnail, thumbnail) ||
                other.thumbnail == thumbnail) &&
            (identical(other.watermark, watermark) ||
                other.watermark == watermark));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, url, original, thumbnail, watermark);

  /// Create a copy of ImageEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ImageEntityImplCopyWith<_$ImageEntityImpl> get copyWith =>
      __$$ImageEntityImplCopyWithImpl<_$ImageEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ImageEntityImplToJson(
      this,
    );
  }
}

abstract class _ImageEntity implements ImageEntity {
  const factory _ImageEntity(
      {final String? url,
      final String? original,
      final String? thumbnail,
      final String? watermark}) = _$ImageEntityImpl;

  factory _ImageEntity.fromJson(Map<String, dynamic> json) =
      _$ImageEntityImpl.fromJson;

  @override
  String? get url;
  @override
  String? get original;
  @override
  String? get thumbnail;
  @override
  String? get watermark;

  /// Create a copy of ImageEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ImageEntityImplCopyWith<_$ImageEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ShopEntity _$ShopEntityFromJson(Map<String, dynamic> json) {
  return _ShopEntity.fromJson(json);
}

/// @nodoc
mixin _$ShopEntity {
  int? get id => throw _privateConstructorUsedError;
  String? get brand => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'brief_description')
  String? get briefDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'location_id')
  int? get locationId => throw _privateConstructorUsedError;
  String? get expire => throw _privateConstructorUsedError;
  int? get views => throw _privateConstructorUsedError;
  @JsonKey(name: 'cover_media')
  String? get coverMedia => throw _privateConstructorUsedError;
  int? get rating => throw _privateConstructorUsedError;
  String? get locations => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_numbers')
  String? get phoneNumbers => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_vip')
  int? get isVip => throw _privateConstructorUsedError;
  @JsonKey(name: 'vip_days')
  String? get vipDays => throw _privateConstructorUsedError;
  @JsonKey(name: 'vip_expire')
  String? get vipExpire => throw _privateConstructorUsedError;
  String? get site => throw _privateConstructorUsedError;
  String? get messengers => throw _privateConstructorUsedError;
  String? get mail => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this ShopEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ShopEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShopEntityCopyWith<ShopEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopEntityCopyWith<$Res> {
  factory $ShopEntityCopyWith(
          ShopEntity value, $Res Function(ShopEntity) then) =
      _$ShopEntityCopyWithImpl<$Res, ShopEntity>;
  @useResult
  $Res call(
      {int? id,
      String? brand,
      String? logo,
      String? image,
      String? status,
      String? description,
      @JsonKey(name: 'brief_description') String? briefDescription,
      @JsonKey(name: 'location_id') int? locationId,
      String? expire,
      int? views,
      @JsonKey(name: 'cover_media') String? coverMedia,
      int? rating,
      String? locations,
      @JsonKey(name: 'phone_numbers') String? phoneNumbers,
      @JsonKey(name: 'is_vip') int? isVip,
      @JsonKey(name: 'vip_days') String? vipDays,
      @JsonKey(name: 'vip_expire') String? vipExpire,
      String? site,
      String? messengers,
      String? mail,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class _$ShopEntityCopyWithImpl<$Res, $Val extends ShopEntity>
    implements $ShopEntityCopyWith<$Res> {
  _$ShopEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ShopEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? brand = freezed,
    Object? logo = freezed,
    Object? image = freezed,
    Object? status = freezed,
    Object? description = freezed,
    Object? briefDescription = freezed,
    Object? locationId = freezed,
    Object? expire = freezed,
    Object? views = freezed,
    Object? coverMedia = freezed,
    Object? rating = freezed,
    Object? locations = freezed,
    Object? phoneNumbers = freezed,
    Object? isVip = freezed,
    Object? vipDays = freezed,
    Object? vipExpire = freezed,
    Object? site = freezed,
    Object? messengers = freezed,
    Object? mail = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      briefDescription: freezed == briefDescription
          ? _value.briefDescription
          : briefDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      locationId: freezed == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as int?,
      expire: freezed == expire
          ? _value.expire
          : expire // ignore: cast_nullable_to_non_nullable
              as String?,
      views: freezed == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int?,
      coverMedia: freezed == coverMedia
          ? _value.coverMedia
          : coverMedia // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      locations: freezed == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumbers: freezed == phoneNumbers
          ? _value.phoneNumbers
          : phoneNumbers // ignore: cast_nullable_to_non_nullable
              as String?,
      isVip: freezed == isVip
          ? _value.isVip
          : isVip // ignore: cast_nullable_to_non_nullable
              as int?,
      vipDays: freezed == vipDays
          ? _value.vipDays
          : vipDays // ignore: cast_nullable_to_non_nullable
              as String?,
      vipExpire: freezed == vipExpire
          ? _value.vipExpire
          : vipExpire // ignore: cast_nullable_to_non_nullable
              as String?,
      site: freezed == site
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as String?,
      messengers: freezed == messengers
          ? _value.messengers
          : messengers // ignore: cast_nullable_to_non_nullable
              as String?,
      mail: freezed == mail
          ? _value.mail
          : mail // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShopEntityImplCopyWith<$Res>
    implements $ShopEntityCopyWith<$Res> {
  factory _$$ShopEntityImplCopyWith(
          _$ShopEntityImpl value, $Res Function(_$ShopEntityImpl) then) =
      __$$ShopEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? brand,
      String? logo,
      String? image,
      String? status,
      String? description,
      @JsonKey(name: 'brief_description') String? briefDescription,
      @JsonKey(name: 'location_id') int? locationId,
      String? expire,
      int? views,
      @JsonKey(name: 'cover_media') String? coverMedia,
      int? rating,
      String? locations,
      @JsonKey(name: 'phone_numbers') String? phoneNumbers,
      @JsonKey(name: 'is_vip') int? isVip,
      @JsonKey(name: 'vip_days') String? vipDays,
      @JsonKey(name: 'vip_expire') String? vipExpire,
      String? site,
      String? messengers,
      String? mail,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
}

/// @nodoc
class __$$ShopEntityImplCopyWithImpl<$Res>
    extends _$ShopEntityCopyWithImpl<$Res, _$ShopEntityImpl>
    implements _$$ShopEntityImplCopyWith<$Res> {
  __$$ShopEntityImplCopyWithImpl(
      _$ShopEntityImpl _value, $Res Function(_$ShopEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of ShopEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? brand = freezed,
    Object? logo = freezed,
    Object? image = freezed,
    Object? status = freezed,
    Object? description = freezed,
    Object? briefDescription = freezed,
    Object? locationId = freezed,
    Object? expire = freezed,
    Object? views = freezed,
    Object? coverMedia = freezed,
    Object? rating = freezed,
    Object? locations = freezed,
    Object? phoneNumbers = freezed,
    Object? isVip = freezed,
    Object? vipDays = freezed,
    Object? vipExpire = freezed,
    Object? site = freezed,
    Object? messengers = freezed,
    Object? mail = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ShopEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      brand: freezed == brand
          ? _value.brand
          : brand // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: freezed == logo
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      briefDescription: freezed == briefDescription
          ? _value.briefDescription
          : briefDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      locationId: freezed == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as int?,
      expire: freezed == expire
          ? _value.expire
          : expire // ignore: cast_nullable_to_non_nullable
              as String?,
      views: freezed == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int?,
      coverMedia: freezed == coverMedia
          ? _value.coverMedia
          : coverMedia // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as int?,
      locations: freezed == locations
          ? _value.locations
          : locations // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumbers: freezed == phoneNumbers
          ? _value.phoneNumbers
          : phoneNumbers // ignore: cast_nullable_to_non_nullable
              as String?,
      isVip: freezed == isVip
          ? _value.isVip
          : isVip // ignore: cast_nullable_to_non_nullable
              as int?,
      vipDays: freezed == vipDays
          ? _value.vipDays
          : vipDays // ignore: cast_nullable_to_non_nullable
              as String?,
      vipExpire: freezed == vipExpire
          ? _value.vipExpire
          : vipExpire // ignore: cast_nullable_to_non_nullable
              as String?,
      site: freezed == site
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as String?,
      messengers: freezed == messengers
          ? _value.messengers
          : messengers // ignore: cast_nullable_to_non_nullable
              as String?,
      mail: freezed == mail
          ? _value.mail
          : mail // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShopEntityImpl implements _ShopEntity {
  const _$ShopEntityImpl(
      {this.id,
      this.brand,
      this.logo,
      this.image,
      this.status,
      this.description,
      @JsonKey(name: 'brief_description') this.briefDescription,
      @JsonKey(name: 'location_id') this.locationId,
      this.expire,
      this.views,
      @JsonKey(name: 'cover_media') this.coverMedia,
      this.rating,
      this.locations,
      @JsonKey(name: 'phone_numbers') this.phoneNumbers,
      @JsonKey(name: 'is_vip') this.isVip,
      @JsonKey(name: 'vip_days') this.vipDays,
      @JsonKey(name: 'vip_expire') this.vipExpire,
      this.site,
      this.messengers,
      this.mail,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$ShopEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShopEntityImplFromJson(json);

  @override
  final int? id;
  @override
  final String? brand;
  @override
  final String? logo;
  @override
  final String? image;
  @override
  final String? status;
  @override
  final String? description;
  @override
  @JsonKey(name: 'brief_description')
  final String? briefDescription;
  @override
  @JsonKey(name: 'location_id')
  final int? locationId;
  @override
  final String? expire;
  @override
  final int? views;
  @override
  @JsonKey(name: 'cover_media')
  final String? coverMedia;
  @override
  final int? rating;
  @override
  final String? locations;
  @override
  @JsonKey(name: 'phone_numbers')
  final String? phoneNumbers;
  @override
  @JsonKey(name: 'is_vip')
  final int? isVip;
  @override
  @JsonKey(name: 'vip_days')
  final String? vipDays;
  @override
  @JsonKey(name: 'vip_expire')
  final String? vipExpire;
  @override
  final String? site;
  @override
  final String? messengers;
  @override
  final String? mail;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString() {
    return 'ShopEntity(id: $id, brand: $brand, logo: $logo, image: $image, status: $status, description: $description, briefDescription: $briefDescription, locationId: $locationId, expire: $expire, views: $views, coverMedia: $coverMedia, rating: $rating, locations: $locations, phoneNumbers: $phoneNumbers, isVip: $isVip, vipDays: $vipDays, vipExpire: $vipExpire, site: $site, messengers: $messengers, mail: $mail, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShopEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.brand, brand) || other.brand == brand) &&
            (identical(other.logo, logo) || other.logo == logo) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.briefDescription, briefDescription) ||
                other.briefDescription == briefDescription) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.expire, expire) || other.expire == expire) &&
            (identical(other.views, views) || other.views == views) &&
            (identical(other.coverMedia, coverMedia) ||
                other.coverMedia == coverMedia) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.locations, locations) ||
                other.locations == locations) &&
            (identical(other.phoneNumbers, phoneNumbers) ||
                other.phoneNumbers == phoneNumbers) &&
            (identical(other.isVip, isVip) || other.isVip == isVip) &&
            (identical(other.vipDays, vipDays) || other.vipDays == vipDays) &&
            (identical(other.vipExpire, vipExpire) ||
                other.vipExpire == vipExpire) &&
            (identical(other.site, site) || other.site == site) &&
            (identical(other.messengers, messengers) ||
                other.messengers == messengers) &&
            (identical(other.mail, mail) || other.mail == mail) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        brand,
        logo,
        image,
        status,
        description,
        briefDescription,
        locationId,
        expire,
        views,
        coverMedia,
        rating,
        locations,
        phoneNumbers,
        isVip,
        vipDays,
        vipExpire,
        site,
        messengers,
        mail,
        createdAt,
        updatedAt
      ]);

  /// Create a copy of ShopEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShopEntityImplCopyWith<_$ShopEntityImpl> get copyWith =>
      __$$ShopEntityImplCopyWithImpl<_$ShopEntityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShopEntityImplToJson(
      this,
    );
  }
}

abstract class _ShopEntity implements ShopEntity {
  const factory _ShopEntity(
      {final int? id,
      final String? brand,
      final String? logo,
      final String? image,
      final String? status,
      final String? description,
      @JsonKey(name: 'brief_description') final String? briefDescription,
      @JsonKey(name: 'location_id') final int? locationId,
      final String? expire,
      final int? views,
      @JsonKey(name: 'cover_media') final String? coverMedia,
      final int? rating,
      final String? locations,
      @JsonKey(name: 'phone_numbers') final String? phoneNumbers,
      @JsonKey(name: 'is_vip') final int? isVip,
      @JsonKey(name: 'vip_days') final String? vipDays,
      @JsonKey(name: 'vip_expire') final String? vipExpire,
      final String? site,
      final String? messengers,
      final String? mail,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'updated_at') final String? updatedAt}) = _$ShopEntityImpl;

  factory _ShopEntity.fromJson(Map<String, dynamic> json) =
      _$ShopEntityImpl.fromJson;

  @override
  int? get id;
  @override
  String? get brand;
  @override
  String? get logo;
  @override
  String? get image;
  @override
  String? get status;
  @override
  String? get description;
  @override
  @JsonKey(name: 'brief_description')
  String? get briefDescription;
  @override
  @JsonKey(name: 'location_id')
  int? get locationId;
  @override
  String? get expire;
  @override
  int? get views;
  @override
  @JsonKey(name: 'cover_media')
  String? get coverMedia;
  @override
  int? get rating;
  @override
  String? get locations;
  @override
  @JsonKey(name: 'phone_numbers')
  String? get phoneNumbers;
  @override
  @JsonKey(name: 'is_vip')
  int? get isVip;
  @override
  @JsonKey(name: 'vip_days')
  String? get vipDays;
  @override
  @JsonKey(name: 'vip_expire')
  String? get vipExpire;
  @override
  String? get site;
  @override
  String? get messengers;
  @override
  String? get mail;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;

  /// Create a copy of ShopEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShopEntityImplCopyWith<_$ShopEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

PossibilityEntity _$PossibilityEntityFromJson(Map<String, dynamic> json) {
  return _PossibilityEntity.fromJson(json);
}

/// @nodoc
mixin _$PossibilityEntity {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this PossibilityEntity to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PossibilityEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PossibilityEntityCopyWith<PossibilityEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PossibilityEntityCopyWith<$Res> {
  factory $PossibilityEntityCopyWith(
          PossibilityEntity value, $Res Function(PossibilityEntity) then) =
      _$PossibilityEntityCopyWithImpl<$Res, PossibilityEntity>;
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class _$PossibilityEntityCopyWithImpl<$Res, $Val extends PossibilityEntity>
    implements $PossibilityEntityCopyWith<$Res> {
  _$PossibilityEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PossibilityEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PossibilityEntityImplCopyWith<$Res>
    implements $PossibilityEntityCopyWith<$Res> {
  factory _$$PossibilityEntityImplCopyWith(_$PossibilityEntityImpl value,
          $Res Function(_$PossibilityEntityImpl) then) =
      __$$PossibilityEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$PossibilityEntityImplCopyWithImpl<$Res>
    extends _$PossibilityEntityCopyWithImpl<$Res, _$PossibilityEntityImpl>
    implements _$$PossibilityEntityImplCopyWith<$Res> {
  __$$PossibilityEntityImplCopyWithImpl(_$PossibilityEntityImpl _value,
      $Res Function(_$PossibilityEntityImpl) _then)
      : super(_value, _then);

  /// Create a copy of PossibilityEntity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$PossibilityEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PossibilityEntityImpl implements _PossibilityEntity {
  const _$PossibilityEntityImpl({this.id, this.name});

  factory _$PossibilityEntityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PossibilityEntityImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'PossibilityEntity(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PossibilityEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of PossibilityEntity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PossibilityEntityImplCopyWith<_$PossibilityEntityImpl> get copyWith =>
      __$$PossibilityEntityImplCopyWithImpl<_$PossibilityEntityImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PossibilityEntityImplToJson(
      this,
    );
  }
}

abstract class _PossibilityEntity implements PossibilityEntity {
  const factory _PossibilityEntity({final int? id, final String? name}) =
      _$PossibilityEntityImpl;

  factory _PossibilityEntity.fromJson(Map<String, dynamic> json) =
      _$PossibilityEntityImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;

  /// Create a copy of PossibilityEntity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PossibilityEntityImplCopyWith<_$PossibilityEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
