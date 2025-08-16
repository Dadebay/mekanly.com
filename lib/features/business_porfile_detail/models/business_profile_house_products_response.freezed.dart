// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business_profile_house_products_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BusinessProfileHouseProductsResponse
    _$BusinessProfileHouseProductsResponseFromJson(Map<String, dynamic> json) {
  return _BusinessProfileHouseProductsResponse.fromJson(json);
}

/// @nodoc
mixin _$BusinessProfileHouseProductsResponse {
  List<HouseProduct>? get data => throw _privateConstructorUsedError;

  /// Serializes this BusinessProfileHouseProductsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BusinessProfileHouseProductsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BusinessProfileHouseProductsResponseCopyWith<
          BusinessProfileHouseProductsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessProfileHouseProductsResponseCopyWith<$Res> {
  factory $BusinessProfileHouseProductsResponseCopyWith(
          BusinessProfileHouseProductsResponse value,
          $Res Function(BusinessProfileHouseProductsResponse) then) =
      _$BusinessProfileHouseProductsResponseCopyWithImpl<$Res,
          BusinessProfileHouseProductsResponse>;
  @useResult
  $Res call({List<HouseProduct>? data});
}

/// @nodoc
class _$BusinessProfileHouseProductsResponseCopyWithImpl<$Res,
        $Val extends BusinessProfileHouseProductsResponse>
    implements $BusinessProfileHouseProductsResponseCopyWith<$Res> {
  _$BusinessProfileHouseProductsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BusinessProfileHouseProductsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<HouseProduct>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BusinessProfileHouseProductsResponseImplCopyWith<$Res>
    implements $BusinessProfileHouseProductsResponseCopyWith<$Res> {
  factory _$$BusinessProfileHouseProductsResponseImplCopyWith(
          _$BusinessProfileHouseProductsResponseImpl value,
          $Res Function(_$BusinessProfileHouseProductsResponseImpl) then) =
      __$$BusinessProfileHouseProductsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<HouseProduct>? data});
}

/// @nodoc
class __$$BusinessProfileHouseProductsResponseImplCopyWithImpl<$Res>
    extends _$BusinessProfileHouseProductsResponseCopyWithImpl<$Res,
        _$BusinessProfileHouseProductsResponseImpl>
    implements _$$BusinessProfileHouseProductsResponseImplCopyWith<$Res> {
  __$$BusinessProfileHouseProductsResponseImplCopyWithImpl(
      _$BusinessProfileHouseProductsResponseImpl _value,
      $Res Function(_$BusinessProfileHouseProductsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BusinessProfileHouseProductsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$BusinessProfileHouseProductsResponseImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<HouseProduct>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BusinessProfileHouseProductsResponseImpl
    implements _BusinessProfileHouseProductsResponse {
  const _$BusinessProfileHouseProductsResponseImpl(
      {final List<HouseProduct>? data})
      : _data = data;

  factory _$BusinessProfileHouseProductsResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BusinessProfileHouseProductsResponseImplFromJson(json);

  final List<HouseProduct>? _data;
  @override
  List<HouseProduct>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BusinessProfileHouseProductsResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessProfileHouseProductsResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of BusinessProfileHouseProductsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessProfileHouseProductsResponseImplCopyWith<
          _$BusinessProfileHouseProductsResponseImpl>
      get copyWith => __$$BusinessProfileHouseProductsResponseImplCopyWithImpl<
          _$BusinessProfileHouseProductsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BusinessProfileHouseProductsResponseImplToJson(
      this,
    );
  }
}

abstract class _BusinessProfileHouseProductsResponse
    implements BusinessProfileHouseProductsResponse {
  const factory _BusinessProfileHouseProductsResponse(
          {final List<HouseProduct>? data}) =
      _$BusinessProfileHouseProductsResponseImpl;

  factory _BusinessProfileHouseProductsResponse.fromJson(
          Map<String, dynamic> json) =
      _$BusinessProfileHouseProductsResponseImpl.fromJson;

  @override
  List<HouseProduct>? get data;

  /// Create a copy of BusinessProfileHouseProductsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BusinessProfileHouseProductsResponseImplCopyWith<
          _$BusinessProfileHouseProductsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

HouseProduct _$HouseProductFromJson(Map<String, dynamic> json) {
  return _HouseProduct.fromJson(json);
}

/// @nodoc
mixin _$HouseProduct {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_name')
  String? get categoryName => throw _privateConstructorUsedError;
  Location? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  String? get username => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_phone')
  String? get userPhone => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get price => throw _privateConstructorUsedError;
  @JsonKey(name: 'lover_percentage')
  String? get loverPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: 'lover_price')
  String? get loverPrice => throw _privateConstructorUsedError;
  int? get viewed => throw _privateConstructorUsedError;
  String? get star => throw _privateConstructorUsedError;
  @JsonKey(name: 'comment_count')
  int? get commentCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'room_number')
  int? get roomNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'floor_number')
  int? get floorNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'property_type')
  String? get propertyType => throw _privateConstructorUsedError;
  @JsonKey(name: 'repair_type')
  String? get repairType => throw _privateConstructorUsedError;
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
  List<ProductImage>? get images => throw _privateConstructorUsedError;
  List<Possibility>? get possibilities => throw _privateConstructorUsedError;
  int? get comment => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_comment')
  String? get isComment => throw _privateConstructorUsedError;
  String? get who => throw _privateConstructorUsedError;
  String? get area => throw _privateConstructorUsedError;
  int? get exclusisive => throw _privateConstructorUsedError;
  String? get hashtag => throw _privateConstructorUsedError;
  @JsonKey(name: 'level_number')
  int? get levelNumber => throw _privateConstructorUsedError;
  bool? get favorited => throw _privateConstructorUsedError;
  bool? get liked => throw _privateConstructorUsedError;
  Shop? get shop => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  DateTime? get date => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;

  /// Serializes this HouseProduct to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of HouseProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $HouseProductCopyWith<HouseProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HouseProductCopyWith<$Res> {
  factory $HouseProductCopyWith(
          HouseProduct value, $Res Function(HouseProduct) then) =
      _$HouseProductCopyWithImpl<$Res, HouseProduct>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'category_name') String? categoryName,
      Location? location,
      @JsonKey(name: 'user_id') int? userId,
      String? username,
      @JsonKey(name: 'user_phone') String? userPhone,
      String? name,
      String? description,
      String? price,
      @JsonKey(name: 'lover_percentage') String? loverPercentage,
      @JsonKey(name: 'lover_price') String? loverPrice,
      int? viewed,
      String? star,
      @JsonKey(name: 'comment_count') int? commentCount,
      @JsonKey(name: 'room_number') int? roomNumber,
      @JsonKey(name: 'floor_number') int? floorNumber,
      @JsonKey(name: 'property_type') String? propertyType,
      @JsonKey(name: 'repair_type') String? repairType,
      String? status,
      bool? luxe,
      @JsonKey(name: 'luxe_status') bool? luxeStatus,
      @JsonKey(name: 'luxe_expire') String? luxeExpire,
      @JsonKey(name: 'vip_status') bool? vipStatus,
      @JsonKey(name: 'vip_expire') String? vipExpire,
      @JsonKey(name: 'bron_number') String? bronNumber,
      List<ProductImage>? images,
      List<Possibility>? possibilities,
      int? comment,
      @JsonKey(name: 'is_comment') String? isComment,
      String? who,
      String? area,
      int? exclusisive,
      String? hashtag,
      @JsonKey(name: 'level_number') int? levelNumber,
      bool? favorited,
      bool? liked,
      Shop? shop,
      String? type,
      DateTime? date,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'created_at') DateTime? createdAt});

  $LocationCopyWith<$Res>? get location;
  $ShopCopyWith<$Res>? get shop;
}

/// @nodoc
class _$HouseProductCopyWithImpl<$Res, $Val extends HouseProduct>
    implements $HouseProductCopyWith<$Res> {
  _$HouseProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of HouseProduct
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
    Object? who = freezed,
    Object? area = freezed,
    Object? exclusisive = freezed,
    Object? hashtag = freezed,
    Object? levelNumber = freezed,
    Object? favorited = freezed,
    Object? liked = freezed,
    Object? shop = freezed,
    Object? type = freezed,
    Object? date = freezed,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
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
              as Location?,
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
              as String?,
      loverPrice: freezed == loverPrice
          ? _value.loverPrice
          : loverPrice // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as String?,
      repairType: freezed == repairType
          ? _value.repairType
          : repairType // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as List<ProductImage>?,
      possibilities: freezed == possibilities
          ? _value.possibilities
          : possibilities // ignore: cast_nullable_to_non_nullable
              as List<Possibility>?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as int?,
      isComment: freezed == isComment
          ? _value.isComment
          : isComment // ignore: cast_nullable_to_non_nullable
              as String?,
      who: freezed == who
          ? _value.who
          : who // ignore: cast_nullable_to_non_nullable
              as String?,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String?,
      exclusisive: freezed == exclusisive
          ? _value.exclusisive
          : exclusisive // ignore: cast_nullable_to_non_nullable
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
              as Shop?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }

  /// Create a copy of HouseProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationCopyWith<$Res>? get location {
    if (_value.location == null) {
      return null;
    }

    return $LocationCopyWith<$Res>(_value.location!, (value) {
      return _then(_value.copyWith(location: value) as $Val);
    });
  }

  /// Create a copy of HouseProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ShopCopyWith<$Res>? get shop {
    if (_value.shop == null) {
      return null;
    }

    return $ShopCopyWith<$Res>(_value.shop!, (value) {
      return _then(_value.copyWith(shop: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$HouseProductImplCopyWith<$Res>
    implements $HouseProductCopyWith<$Res> {
  factory _$$HouseProductImplCopyWith(
          _$HouseProductImpl value, $Res Function(_$HouseProductImpl) then) =
      __$$HouseProductImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'category_name') String? categoryName,
      Location? location,
      @JsonKey(name: 'user_id') int? userId,
      String? username,
      @JsonKey(name: 'user_phone') String? userPhone,
      String? name,
      String? description,
      String? price,
      @JsonKey(name: 'lover_percentage') String? loverPercentage,
      @JsonKey(name: 'lover_price') String? loverPrice,
      int? viewed,
      String? star,
      @JsonKey(name: 'comment_count') int? commentCount,
      @JsonKey(name: 'room_number') int? roomNumber,
      @JsonKey(name: 'floor_number') int? floorNumber,
      @JsonKey(name: 'property_type') String? propertyType,
      @JsonKey(name: 'repair_type') String? repairType,
      String? status,
      bool? luxe,
      @JsonKey(name: 'luxe_status') bool? luxeStatus,
      @JsonKey(name: 'luxe_expire') String? luxeExpire,
      @JsonKey(name: 'vip_status') bool? vipStatus,
      @JsonKey(name: 'vip_expire') String? vipExpire,
      @JsonKey(name: 'bron_number') String? bronNumber,
      List<ProductImage>? images,
      List<Possibility>? possibilities,
      int? comment,
      @JsonKey(name: 'is_comment') String? isComment,
      String? who,
      String? area,
      int? exclusisive,
      String? hashtag,
      @JsonKey(name: 'level_number') int? levelNumber,
      bool? favorited,
      bool? liked,
      Shop? shop,
      String? type,
      DateTime? date,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'created_at') DateTime? createdAt});

  @override
  $LocationCopyWith<$Res>? get location;
  @override
  $ShopCopyWith<$Res>? get shop;
}

/// @nodoc
class __$$HouseProductImplCopyWithImpl<$Res>
    extends _$HouseProductCopyWithImpl<$Res, _$HouseProductImpl>
    implements _$$HouseProductImplCopyWith<$Res> {
  __$$HouseProductImplCopyWithImpl(
      _$HouseProductImpl _value, $Res Function(_$HouseProductImpl) _then)
      : super(_value, _then);

  /// Create a copy of HouseProduct
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
    Object? who = freezed,
    Object? area = freezed,
    Object? exclusisive = freezed,
    Object? hashtag = freezed,
    Object? levelNumber = freezed,
    Object? favorited = freezed,
    Object? liked = freezed,
    Object? shop = freezed,
    Object? type = freezed,
    Object? date = freezed,
    Object? updatedAt = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$HouseProductImpl(
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
              as Location?,
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
              as String?,
      loverPrice: freezed == loverPrice
          ? _value.loverPrice
          : loverPrice // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as String?,
      repairType: freezed == repairType
          ? _value.repairType
          : repairType // ignore: cast_nullable_to_non_nullable
              as String?,
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
              as List<ProductImage>?,
      possibilities: freezed == possibilities
          ? _value._possibilities
          : possibilities // ignore: cast_nullable_to_non_nullable
              as List<Possibility>?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as int?,
      isComment: freezed == isComment
          ? _value.isComment
          : isComment // ignore: cast_nullable_to_non_nullable
              as String?,
      who: freezed == who
          ? _value.who
          : who // ignore: cast_nullable_to_non_nullable
              as String?,
      area: freezed == area
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String?,
      exclusisive: freezed == exclusisive
          ? _value.exclusisive
          : exclusisive // ignore: cast_nullable_to_non_nullable
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
              as Shop?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      date: freezed == date
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$HouseProductImpl implements _HouseProduct {
  const _$HouseProductImpl(
      {this.id,
      @JsonKey(name: 'category_name') this.categoryName,
      this.location,
      @JsonKey(name: 'user_id') this.userId,
      this.username,
      @JsonKey(name: 'user_phone') this.userPhone,
      this.name,
      this.description,
      this.price,
      @JsonKey(name: 'lover_percentage') this.loverPercentage,
      @JsonKey(name: 'lover_price') this.loverPrice,
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
      final List<ProductImage>? images,
      final List<Possibility>? possibilities,
      this.comment,
      @JsonKey(name: 'is_comment') this.isComment,
      this.who,
      this.area,
      this.exclusisive,
      this.hashtag,
      @JsonKey(name: 'level_number') this.levelNumber,
      this.favorited,
      this.liked,
      this.shop,
      this.type,
      this.date,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'created_at') this.createdAt})
      : _images = images,
        _possibilities = possibilities;

  factory _$HouseProductImpl.fromJson(Map<String, dynamic> json) =>
      _$$HouseProductImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'category_name')
  final String? categoryName;
  @override
  final Location? location;
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
  @JsonKey(name: 'lover_percentage')
  final String? loverPercentage;
  @override
  @JsonKey(name: 'lover_price')
  final String? loverPrice;
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
  final String? propertyType;
  @override
  @JsonKey(name: 'repair_type')
  final String? repairType;
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
  final List<ProductImage>? _images;
  @override
  List<ProductImage>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<Possibility>? _possibilities;
  @override
  List<Possibility>? get possibilities {
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
  final String? who;
  @override
  final String? area;
  @override
  final int? exclusisive;
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
  final Shop? shop;
  @override
  final String? type;
  @override
  final DateTime? date;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;

  @override
  String toString() {
    return 'HouseProduct(id: $id, categoryName: $categoryName, location: $location, userId: $userId, username: $username, userPhone: $userPhone, name: $name, description: $description, price: $price, loverPercentage: $loverPercentage, loverPrice: $loverPrice, viewed: $viewed, star: $star, commentCount: $commentCount, roomNumber: $roomNumber, floorNumber: $floorNumber, propertyType: $propertyType, repairType: $repairType, status: $status, luxe: $luxe, luxeStatus: $luxeStatus, luxeExpire: $luxeExpire, vipStatus: $vipStatus, vipExpire: $vipExpire, bronNumber: $bronNumber, images: $images, possibilities: $possibilities, comment: $comment, isComment: $isComment, who: $who, area: $area, exclusisive: $exclusisive, hashtag: $hashtag, levelNumber: $levelNumber, favorited: $favorited, liked: $liked, shop: $shop, type: $type, date: $date, updatedAt: $updatedAt, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HouseProductImpl &&
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
            (identical(other.who, who) || other.who == who) &&
            (identical(other.area, area) || other.area == area) &&
            (identical(other.exclusisive, exclusisive) ||
                other.exclusisive == exclusisive) &&
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
                other.createdAt == createdAt));
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
        who,
        area,
        exclusisive,
        hashtag,
        levelNumber,
        favorited,
        liked,
        shop,
        type,
        date,
        updatedAt,
        createdAt
      ]);

  /// Create a copy of HouseProduct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$HouseProductImplCopyWith<_$HouseProductImpl> get copyWith =>
      __$$HouseProductImplCopyWithImpl<_$HouseProductImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$HouseProductImplToJson(
      this,
    );
  }
}

abstract class _HouseProduct implements HouseProduct {
  const factory _HouseProduct(
          {final int? id,
          @JsonKey(name: 'category_name') final String? categoryName,
          final Location? location,
          @JsonKey(name: 'user_id') final int? userId,
          final String? username,
          @JsonKey(name: 'user_phone') final String? userPhone,
          final String? name,
          final String? description,
          final String? price,
          @JsonKey(name: 'lover_percentage') final String? loverPercentage,
          @JsonKey(name: 'lover_price') final String? loverPrice,
          final int? viewed,
          final String? star,
          @JsonKey(name: 'comment_count') final int? commentCount,
          @JsonKey(name: 'room_number') final int? roomNumber,
          @JsonKey(name: 'floor_number') final int? floorNumber,
          @JsonKey(name: 'property_type') final String? propertyType,
          @JsonKey(name: 'repair_type') final String? repairType,
          final String? status,
          final bool? luxe,
          @JsonKey(name: 'luxe_status') final bool? luxeStatus,
          @JsonKey(name: 'luxe_expire') final String? luxeExpire,
          @JsonKey(name: 'vip_status') final bool? vipStatus,
          @JsonKey(name: 'vip_expire') final String? vipExpire,
          @JsonKey(name: 'bron_number') final String? bronNumber,
          final List<ProductImage>? images,
          final List<Possibility>? possibilities,
          final int? comment,
          @JsonKey(name: 'is_comment') final String? isComment,
          final String? who,
          final String? area,
          final int? exclusisive,
          final String? hashtag,
          @JsonKey(name: 'level_number') final int? levelNumber,
          final bool? favorited,
          final bool? liked,
          final Shop? shop,
          final String? type,
          final DateTime? date,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt,
          @JsonKey(name: 'created_at') final DateTime? createdAt}) =
      _$HouseProductImpl;

  factory _HouseProduct.fromJson(Map<String, dynamic> json) =
      _$HouseProductImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'category_name')
  String? get categoryName;
  @override
  Location? get location;
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
  @JsonKey(name: 'lover_percentage')
  String? get loverPercentage;
  @override
  @JsonKey(name: 'lover_price')
  String? get loverPrice;
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
  String? get propertyType;
  @override
  @JsonKey(name: 'repair_type')
  String? get repairType;
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
  List<ProductImage>? get images;
  @override
  List<Possibility>? get possibilities;
  @override
  int? get comment;
  @override
  @JsonKey(name: 'is_comment')
  String? get isComment;
  @override
  String? get who;
  @override
  String? get area;
  @override
  int? get exclusisive;
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
  Shop? get shop;
  @override
  String? get type;
  @override
  DateTime? get date;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;

  /// Create a copy of HouseProduct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$HouseProductImplCopyWith<_$HouseProductImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Location _$LocationFromJson(Map<String, dynamic> json) {
  return _Location.fromJson(json);
}

/// @nodoc
mixin _$Location {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_id')
  int? get parentId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_name')
  String? get parentName => throw _privateConstructorUsedError;

  /// Serializes this Location to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationCopyWith<Location> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationCopyWith<$Res> {
  factory $LocationCopyWith(Location value, $Res Function(Location) then) =
      _$LocationCopyWithImpl<$Res, Location>;
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'parent_id') int? parentId,
      String? name,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'parent_name') String? parentName});
}

/// @nodoc
class _$LocationCopyWithImpl<$Res, $Val extends Location>
    implements $LocationCopyWith<$Res> {
  _$LocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Location
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
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      parentName: freezed == parentName
          ? _value.parentName
          : parentName // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationImplCopyWith<$Res>
    implements $LocationCopyWith<$Res> {
  factory _$$LocationImplCopyWith(
          _$LocationImpl value, $Res Function(_$LocationImpl) then) =
      __$$LocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'parent_id') int? parentId,
      String? name,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt,
      @JsonKey(name: 'parent_name') String? parentName});
}

/// @nodoc
class __$$LocationImplCopyWithImpl<$Res>
    extends _$LocationCopyWithImpl<$Res, _$LocationImpl>
    implements _$$LocationImplCopyWith<$Res> {
  __$$LocationImplCopyWithImpl(
      _$LocationImpl _value, $Res Function(_$LocationImpl) _then)
      : super(_value, _then);

  /// Create a copy of Location
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
    return _then(_$LocationImpl(
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
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      parentName: freezed == parentName
          ? _value.parentName
          : parentName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationImpl implements _Location {
  const _$LocationImpl(
      {this.id,
      @JsonKey(name: 'parent_id') this.parentId,
      this.name,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'parent_name') this.parentName});

  factory _$LocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'parent_id')
  final int? parentId;
  @override
  final String? name;
  @override
  @JsonKey(name: 'created_at')
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;
  @override
  @JsonKey(name: 'parent_name')
  final String? parentName;

  @override
  String toString() {
    return 'Location(id: $id, parentId: $parentId, name: $name, createdAt: $createdAt, updatedAt: $updatedAt, parentName: $parentName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationImpl &&
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

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      __$$LocationImplCopyWithImpl<_$LocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationImplToJson(
      this,
    );
  }
}

abstract class _Location implements Location {
  const factory _Location(
      {final int? id,
      @JsonKey(name: 'parent_id') final int? parentId,
      final String? name,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt,
      @JsonKey(name: 'parent_name') final String? parentName}) = _$LocationImpl;

  factory _Location.fromJson(Map<String, dynamic> json) =
      _$LocationImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'parent_id')
  int? get parentId;
  @override
  String? get name;
  @override
  @JsonKey(name: 'created_at')
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(name: 'parent_name')
  String? get parentName;

  /// Create a copy of Location
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationImplCopyWith<_$LocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductImage _$ProductImageFromJson(Map<String, dynamic> json) {
  return _ProductImage.fromJson(json);
}

/// @nodoc
mixin _$ProductImage {
  String? get url => throw _privateConstructorUsedError;

  /// Serializes this ProductImage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductImageCopyWith<ProductImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductImageCopyWith<$Res> {
  factory $ProductImageCopyWith(
          ProductImage value, $Res Function(ProductImage) then) =
      _$ProductImageCopyWithImpl<$Res, ProductImage>;
  @useResult
  $Res call({String? url});
}

/// @nodoc
class _$ProductImageCopyWithImpl<$Res, $Val extends ProductImage>
    implements $ProductImageCopyWith<$Res> {
  _$ProductImageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProductImageImplCopyWith<$Res>
    implements $ProductImageCopyWith<$Res> {
  factory _$$ProductImageImplCopyWith(
          _$ProductImageImpl value, $Res Function(_$ProductImageImpl) then) =
      __$$ProductImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? url});
}

/// @nodoc
class __$$ProductImageImplCopyWithImpl<$Res>
    extends _$ProductImageCopyWithImpl<$Res, _$ProductImageImpl>
    implements _$$ProductImageImplCopyWith<$Res> {
  __$$ProductImageImplCopyWithImpl(
      _$ProductImageImpl _value, $Res Function(_$ProductImageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductImage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = freezed,
  }) {
    return _then(_$ProductImageImpl(
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductImageImpl implements _ProductImage {
  const _$ProductImageImpl({this.url});

  factory _$ProductImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImageImplFromJson(json);

  @override
  final String? url;

  @override
  String toString() {
    return 'ProductImage(url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImageImpl &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, url);

  /// Create a copy of ProductImage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductImageImplCopyWith<_$ProductImageImpl> get copyWith =>
      __$$ProductImageImplCopyWithImpl<_$ProductImageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductImageImplToJson(
      this,
    );
  }
}

abstract class _ProductImage implements ProductImage {
  const factory _ProductImage({final String? url}) = _$ProductImageImpl;

  factory _ProductImage.fromJson(Map<String, dynamic> json) =
      _$ProductImageImpl.fromJson;

  @override
  String? get url;

  /// Create a copy of ProductImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImageImplCopyWith<_$ProductImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Possibility _$PossibilityFromJson(Map<String, dynamic> json) {
  return _Possibility.fromJson(json);
}

/// @nodoc
mixin _$Possibility {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  /// Serializes this Possibility to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Possibility
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PossibilityCopyWith<Possibility> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PossibilityCopyWith<$Res> {
  factory $PossibilityCopyWith(
          Possibility value, $Res Function(Possibility) then) =
      _$PossibilityCopyWithImpl<$Res, Possibility>;
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class _$PossibilityCopyWithImpl<$Res, $Val extends Possibility>
    implements $PossibilityCopyWith<$Res> {
  _$PossibilityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Possibility
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
abstract class _$$PossibilityImplCopyWith<$Res>
    implements $PossibilityCopyWith<$Res> {
  factory _$$PossibilityImplCopyWith(
          _$PossibilityImpl value, $Res Function(_$PossibilityImpl) then) =
      __$$PossibilityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? id, String? name});
}

/// @nodoc
class __$$PossibilityImplCopyWithImpl<$Res>
    extends _$PossibilityCopyWithImpl<$Res, _$PossibilityImpl>
    implements _$$PossibilityImplCopyWith<$Res> {
  __$$PossibilityImplCopyWithImpl(
      _$PossibilityImpl _value, $Res Function(_$PossibilityImpl) _then)
      : super(_value, _then);

  /// Create a copy of Possibility
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$PossibilityImpl(
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
class _$PossibilityImpl implements _Possibility {
  const _$PossibilityImpl({this.id, this.name});

  factory _$PossibilityImpl.fromJson(Map<String, dynamic> json) =>
      _$$PossibilityImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'Possibility(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PossibilityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  /// Create a copy of Possibility
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PossibilityImplCopyWith<_$PossibilityImpl> get copyWith =>
      __$$PossibilityImplCopyWithImpl<_$PossibilityImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PossibilityImplToJson(
      this,
    );
  }
}

abstract class _Possibility implements Possibility {
  const factory _Possibility({final int? id, final String? name}) =
      _$PossibilityImpl;

  factory _Possibility.fromJson(Map<String, dynamic> json) =
      _$PossibilityImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;

  /// Create a copy of Possibility
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PossibilityImplCopyWith<_$PossibilityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Shop _$ShopFromJson(Map<String, dynamic> json) {
  return _Shop.fromJson(json);
}

/// @nodoc
mixin _$Shop {
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
  int? get vipDays => throw _privateConstructorUsedError;
  @JsonKey(name: 'vip_expire')
  String? get vipExpire => throw _privateConstructorUsedError;
  String? get site => throw _privateConstructorUsedError;
  String? get messengers => throw _privateConstructorUsedError;
  String? get mail => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Shop to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Shop
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ShopCopyWith<Shop> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopCopyWith<$Res> {
  factory $ShopCopyWith(Shop value, $Res Function(Shop) then) =
      _$ShopCopyWithImpl<$Res, Shop>;
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
      @JsonKey(name: 'vip_days') int? vipDays,
      @JsonKey(name: 'vip_expire') String? vipExpire,
      String? site,
      String? messengers,
      String? mail,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$ShopCopyWithImpl<$Res, $Val extends Shop>
    implements $ShopCopyWith<$Res> {
  _$ShopCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Shop
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
              as int?,
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
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ShopImplCopyWith<$Res> implements $ShopCopyWith<$Res> {
  factory _$$ShopImplCopyWith(
          _$ShopImpl value, $Res Function(_$ShopImpl) then) =
      __$$ShopImplCopyWithImpl<$Res>;
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
      @JsonKey(name: 'vip_days') int? vipDays,
      @JsonKey(name: 'vip_expire') String? vipExpire,
      String? site,
      String? messengers,
      String? mail,
      @JsonKey(name: 'created_at') DateTime? createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$ShopImplCopyWithImpl<$Res>
    extends _$ShopCopyWithImpl<$Res, _$ShopImpl>
    implements _$$ShopImplCopyWith<$Res> {
  __$$ShopImplCopyWithImpl(_$ShopImpl _value, $Res Function(_$ShopImpl) _then)
      : super(_value, _then);

  /// Create a copy of Shop
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
    return _then(_$ShopImpl(
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
              as int?,
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
              as DateTime?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ShopImpl implements _Shop {
  const _$ShopImpl(
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

  factory _$ShopImpl.fromJson(Map<String, dynamic> json) =>
      _$$ShopImplFromJson(json);

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
  final int? vipDays;
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
  final DateTime? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'Shop(id: $id, brand: $brand, logo: $logo, image: $image, status: $status, description: $description, briefDescription: $briefDescription, locationId: $locationId, expire: $expire, views: $views, coverMedia: $coverMedia, rating: $rating, locations: $locations, phoneNumbers: $phoneNumbers, isVip: $isVip, vipDays: $vipDays, vipExpire: $vipExpire, site: $site, messengers: $messengers, mail: $mail, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ShopImpl &&
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

  /// Create a copy of Shop
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ShopImplCopyWith<_$ShopImpl> get copyWith =>
      __$$ShopImplCopyWithImpl<_$ShopImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ShopImplToJson(
      this,
    );
  }
}

abstract class _Shop implements Shop {
  const factory _Shop(
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
      @JsonKey(name: 'vip_days') final int? vipDays,
      @JsonKey(name: 'vip_expire') final String? vipExpire,
      final String? site,
      final String? messengers,
      final String? mail,
      @JsonKey(name: 'created_at') final DateTime? createdAt,
      @JsonKey(name: 'updated_at') final DateTime? updatedAt}) = _$ShopImpl;

  factory _Shop.fromJson(Map<String, dynamic> json) = _$ShopImpl.fromJson;

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
  int? get vipDays;
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
  DateTime? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;

  /// Create a copy of Shop
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShopImplCopyWith<_$ShopImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
