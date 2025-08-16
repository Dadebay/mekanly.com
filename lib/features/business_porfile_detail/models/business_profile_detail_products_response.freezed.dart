// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business_profile_detail_products_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BusinessProfileDetailProductsResponse
    _$BusinessProfileDetailProductsResponseFromJson(Map<String, dynamic> json) {
  return _BusinessProfileDetailProductsResponse.fromJson(json);
}

/// @nodoc
mixin _$BusinessProfileDetailProductsResponse {
  List<ProductData>? get data => throw _privateConstructorUsedError;

  /// Serializes this BusinessProfileDetailProductsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BusinessProfileDetailProductsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BusinessProfileDetailProductsResponseCopyWith<
          BusinessProfileDetailProductsResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessProfileDetailProductsResponseCopyWith<$Res> {
  factory $BusinessProfileDetailProductsResponseCopyWith(
          BusinessProfileDetailProductsResponse value,
          $Res Function(BusinessProfileDetailProductsResponse) then) =
      _$BusinessProfileDetailProductsResponseCopyWithImpl<$Res,
          BusinessProfileDetailProductsResponse>;
  @useResult
  $Res call({List<ProductData>? data});
}

/// @nodoc
class _$BusinessProfileDetailProductsResponseCopyWithImpl<$Res,
        $Val extends BusinessProfileDetailProductsResponse>
    implements $BusinessProfileDetailProductsResponseCopyWith<$Res> {
  _$BusinessProfileDetailProductsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BusinessProfileDetailProductsResponse
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
              as List<ProductData>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BusinessProfileDetailProductsResponseImplCopyWith<$Res>
    implements $BusinessProfileDetailProductsResponseCopyWith<$Res> {
  factory _$$BusinessProfileDetailProductsResponseImplCopyWith(
          _$BusinessProfileDetailProductsResponseImpl value,
          $Res Function(_$BusinessProfileDetailProductsResponseImpl) then) =
      __$$BusinessProfileDetailProductsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProductData>? data});
}

/// @nodoc
class __$$BusinessProfileDetailProductsResponseImplCopyWithImpl<$Res>
    extends _$BusinessProfileDetailProductsResponseCopyWithImpl<$Res,
        _$BusinessProfileDetailProductsResponseImpl>
    implements _$$BusinessProfileDetailProductsResponseImplCopyWith<$Res> {
  __$$BusinessProfileDetailProductsResponseImplCopyWithImpl(
      _$BusinessProfileDetailProductsResponseImpl _value,
      $Res Function(_$BusinessProfileDetailProductsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BusinessProfileDetailProductsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$BusinessProfileDetailProductsResponseImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ProductData>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BusinessProfileDetailProductsResponseImpl
    implements _BusinessProfileDetailProductsResponse {
  const _$BusinessProfileDetailProductsResponseImpl(
      {final List<ProductData>? data})
      : _data = data;

  factory _$BusinessProfileDetailProductsResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BusinessProfileDetailProductsResponseImplFromJson(json);

  final List<ProductData>? _data;
  @override
  List<ProductData>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'BusinessProfileDetailProductsResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessProfileDetailProductsResponseImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of BusinessProfileDetailProductsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessProfileDetailProductsResponseImplCopyWith<
          _$BusinessProfileDetailProductsResponseImpl>
      get copyWith => __$$BusinessProfileDetailProductsResponseImplCopyWithImpl<
          _$BusinessProfileDetailProductsResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BusinessProfileDetailProductsResponseImplToJson(
      this,
    );
  }
}

abstract class _BusinessProfileDetailProductsResponse
    implements BusinessProfileDetailProductsResponse {
  const factory _BusinessProfileDetailProductsResponse(
          {final List<ProductData>? data}) =
      _$BusinessProfileDetailProductsResponseImpl;

  factory _BusinessProfileDetailProductsResponse.fromJson(
          Map<String, dynamic> json) =
      _$BusinessProfileDetailProductsResponseImpl.fromJson;

  @override
  List<ProductData>? get data;

  /// Create a copy of BusinessProfileDetailProductsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BusinessProfileDetailProductsResponseImplCopyWith<
          _$BusinessProfileDetailProductsResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

ProductData _$ProductDataFromJson(Map<String, dynamic> json) {
  return _ProductData.fromJson(json);
}

/// @nodoc
mixin _$ProductData {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'comment_count')
  int? get commentCount => throw _privateConstructorUsedError;
  double? get price => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  bool? get favorited => throw _privateConstructorUsedError;
  String? get expire => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get who => throw _privateConstructorUsedError;
  int? get delivery => throw _privateConstructorUsedError;
  int? get comment => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'lover_percentage')
  int? get loverPercentage => throw _privateConstructorUsedError;
  @JsonKey(name: 'lover_price')
  String? get loverPrice => throw _privateConstructorUsedError;
  String? get vip => throw _privateConstructorUsedError;
  int? get exclusive => throw _privateConstructorUsedError;
  String? get hashtag => throw _privateConstructorUsedError;
  List<ProductImage>? get images => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int? get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_name')
  String? get userName => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_phone')
  String? get userPhone => throw _privateConstructorUsedError;
  @JsonKey(name: 'location_id')
  int? get locationId => throw _privateConstructorUsedError;
  @JsonKey(name: 'location_name')
  String? get locationName => throw _privateConstructorUsedError;
  @JsonKey(name: 'location_parent')
  LocationParent? get locationParent => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_id')
  int? get categoryId => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_title')
  String? get categoryTitle => throw _privateConstructorUsedError;
  @JsonKey(name: 'category_parent')
  String? get categoryParent => throw _privateConstructorUsedError;
  Shop? get shop => throw _privateConstructorUsedError;
  @JsonKey(name: 'shop_id')
  int? get shopId => throw _privateConstructorUsedError;
  @JsonKey(name: 'shop_brand')
  String? get shopBrand => throw _privateConstructorUsedError;
  @JsonKey(name: 'shop_logo')
  String? get shopLogo => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  String? get reason => throw _privateConstructorUsedError;

  /// Serializes this ProductData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductDataCopyWith<ProductData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductDataCopyWith<$Res> {
  factory $ProductDataCopyWith(
          ProductData value, $Res Function(ProductData) then) =
      _$ProductDataCopyWithImpl<$Res, ProductData>;
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'comment_count') int? commentCount,
      double? price,
      String? status,
      bool? favorited,
      String? expire,
      String? phone,
      String? who,
      int? delivery,
      int? comment,
      String? description,
      @JsonKey(name: 'lover_percentage') int? loverPercentage,
      @JsonKey(name: 'lover_price') String? loverPrice,
      String? vip,
      int? exclusive,
      String? hashtag,
      List<ProductImage>? images,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'user_name') String? userName,
      @JsonKey(name: 'user_phone') String? userPhone,
      @JsonKey(name: 'location_id') int? locationId,
      @JsonKey(name: 'location_name') String? locationName,
      @JsonKey(name: 'location_parent') LocationParent? locationParent,
      @JsonKey(name: 'category_id') int? categoryId,
      @JsonKey(name: 'category_title') String? categoryTitle,
      @JsonKey(name: 'category_parent') String? categoryParent,
      Shop? shop,
      @JsonKey(name: 'shop_id') int? shopId,
      @JsonKey(name: 'shop_brand') String? shopBrand,
      @JsonKey(name: 'shop_logo') String? shopLogo,
      String? type,
      String? reason});

  $LocationParentCopyWith<$Res>? get locationParent;
  $ShopCopyWith<$Res>? get shop;
}

/// @nodoc
class _$ProductDataCopyWithImpl<$Res, $Val extends ProductData>
    implements $ProductDataCopyWith<$Res> {
  _$ProductDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? commentCount = freezed,
    Object? price = freezed,
    Object? status = freezed,
    Object? favorited = freezed,
    Object? expire = freezed,
    Object? phone = freezed,
    Object? who = freezed,
    Object? delivery = freezed,
    Object? comment = freezed,
    Object? description = freezed,
    Object? loverPercentage = freezed,
    Object? loverPrice = freezed,
    Object? vip = freezed,
    Object? exclusive = freezed,
    Object? hashtag = freezed,
    Object? images = freezed,
    Object? createdAt = freezed,
    Object? userId = freezed,
    Object? userName = freezed,
    Object? userPhone = freezed,
    Object? locationId = freezed,
    Object? locationName = freezed,
    Object? locationParent = freezed,
    Object? categoryId = freezed,
    Object? categoryTitle = freezed,
    Object? categoryParent = freezed,
    Object? shop = freezed,
    Object? shopId = freezed,
    Object? shopBrand = freezed,
    Object? shopLogo = freezed,
    Object? type = freezed,
    Object? reason = freezed,
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
      commentCount: freezed == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      favorited: freezed == favorited
          ? _value.favorited
          : favorited // ignore: cast_nullable_to_non_nullable
              as bool?,
      expire: freezed == expire
          ? _value.expire
          : expire // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      who: freezed == who
          ? _value.who
          : who // ignore: cast_nullable_to_non_nullable
              as String?,
      delivery: freezed == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as int?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      loverPercentage: freezed == loverPercentage
          ? _value.loverPercentage
          : loverPercentage // ignore: cast_nullable_to_non_nullable
              as int?,
      loverPrice: freezed == loverPrice
          ? _value.loverPrice
          : loverPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      vip: freezed == vip
          ? _value.vip
          : vip // ignore: cast_nullable_to_non_nullable
              as String?,
      exclusive: freezed == exclusive
          ? _value.exclusive
          : exclusive // ignore: cast_nullable_to_non_nullable
              as int?,
      hashtag: freezed == hashtag
          ? _value.hashtag
          : hashtag // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value.images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ProductImage>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      userPhone: freezed == userPhone
          ? _value.userPhone
          : userPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      locationId: freezed == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as int?,
      locationName: freezed == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String?,
      locationParent: freezed == locationParent
          ? _value.locationParent
          : locationParent // ignore: cast_nullable_to_non_nullable
              as LocationParent?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryTitle: freezed == categoryTitle
          ? _value.categoryTitle
          : categoryTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryParent: freezed == categoryParent
          ? _value.categoryParent
          : categoryParent // ignore: cast_nullable_to_non_nullable
              as String?,
      shop: freezed == shop
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as Shop?,
      shopId: freezed == shopId
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as int?,
      shopBrand: freezed == shopBrand
          ? _value.shopBrand
          : shopBrand // ignore: cast_nullable_to_non_nullable
              as String?,
      shopLogo: freezed == shopLogo
          ? _value.shopLogo
          : shopLogo // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of ProductData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LocationParentCopyWith<$Res>? get locationParent {
    if (_value.locationParent == null) {
      return null;
    }

    return $LocationParentCopyWith<$Res>(_value.locationParent!, (value) {
      return _then(_value.copyWith(locationParent: value) as $Val);
    });
  }

  /// Create a copy of ProductData
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
abstract class _$$ProductDataImplCopyWith<$Res>
    implements $ProductDataCopyWith<$Res> {
  factory _$$ProductDataImplCopyWith(
          _$ProductDataImpl value, $Res Function(_$ProductDataImpl) then) =
      __$$ProductDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? name,
      @JsonKey(name: 'comment_count') int? commentCount,
      double? price,
      String? status,
      bool? favorited,
      String? expire,
      String? phone,
      String? who,
      int? delivery,
      int? comment,
      String? description,
      @JsonKey(name: 'lover_percentage') int? loverPercentage,
      @JsonKey(name: 'lover_price') String? loverPrice,
      String? vip,
      int? exclusive,
      String? hashtag,
      List<ProductImage>? images,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'user_id') int? userId,
      @JsonKey(name: 'user_name') String? userName,
      @JsonKey(name: 'user_phone') String? userPhone,
      @JsonKey(name: 'location_id') int? locationId,
      @JsonKey(name: 'location_name') String? locationName,
      @JsonKey(name: 'location_parent') LocationParent? locationParent,
      @JsonKey(name: 'category_id') int? categoryId,
      @JsonKey(name: 'category_title') String? categoryTitle,
      @JsonKey(name: 'category_parent') String? categoryParent,
      Shop? shop,
      @JsonKey(name: 'shop_id') int? shopId,
      @JsonKey(name: 'shop_brand') String? shopBrand,
      @JsonKey(name: 'shop_logo') String? shopLogo,
      String? type,
      String? reason});

  @override
  $LocationParentCopyWith<$Res>? get locationParent;
  @override
  $ShopCopyWith<$Res>? get shop;
}

/// @nodoc
class __$$ProductDataImplCopyWithImpl<$Res>
    extends _$ProductDataCopyWithImpl<$Res, _$ProductDataImpl>
    implements _$$ProductDataImplCopyWith<$Res> {
  __$$ProductDataImplCopyWithImpl(
      _$ProductDataImpl _value, $Res Function(_$ProductDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? commentCount = freezed,
    Object? price = freezed,
    Object? status = freezed,
    Object? favorited = freezed,
    Object? expire = freezed,
    Object? phone = freezed,
    Object? who = freezed,
    Object? delivery = freezed,
    Object? comment = freezed,
    Object? description = freezed,
    Object? loverPercentage = freezed,
    Object? loverPrice = freezed,
    Object? vip = freezed,
    Object? exclusive = freezed,
    Object? hashtag = freezed,
    Object? images = freezed,
    Object? createdAt = freezed,
    Object? userId = freezed,
    Object? userName = freezed,
    Object? userPhone = freezed,
    Object? locationId = freezed,
    Object? locationName = freezed,
    Object? locationParent = freezed,
    Object? categoryId = freezed,
    Object? categoryTitle = freezed,
    Object? categoryParent = freezed,
    Object? shop = freezed,
    Object? shopId = freezed,
    Object? shopBrand = freezed,
    Object? shopLogo = freezed,
    Object? type = freezed,
    Object? reason = freezed,
  }) {
    return _then(_$ProductDataImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      commentCount: freezed == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int?,
      price: freezed == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      favorited: freezed == favorited
          ? _value.favorited
          : favorited // ignore: cast_nullable_to_non_nullable
              as bool?,
      expire: freezed == expire
          ? _value.expire
          : expire // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      who: freezed == who
          ? _value.who
          : who // ignore: cast_nullable_to_non_nullable
              as String?,
      delivery: freezed == delivery
          ? _value.delivery
          : delivery // ignore: cast_nullable_to_non_nullable
              as int?,
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as int?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      loverPercentage: freezed == loverPercentage
          ? _value.loverPercentage
          : loverPercentage // ignore: cast_nullable_to_non_nullable
              as int?,
      loverPrice: freezed == loverPrice
          ? _value.loverPrice
          : loverPrice // ignore: cast_nullable_to_non_nullable
              as String?,
      vip: freezed == vip
          ? _value.vip
          : vip // ignore: cast_nullable_to_non_nullable
              as String?,
      exclusive: freezed == exclusive
          ? _value.exclusive
          : exclusive // ignore: cast_nullable_to_non_nullable
              as int?,
      hashtag: freezed == hashtag
          ? _value.hashtag
          : hashtag // ignore: cast_nullable_to_non_nullable
              as String?,
      images: freezed == images
          ? _value._images
          : images // ignore: cast_nullable_to_non_nullable
              as List<ProductImage>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int?,
      userName: freezed == userName
          ? _value.userName
          : userName // ignore: cast_nullable_to_non_nullable
              as String?,
      userPhone: freezed == userPhone
          ? _value.userPhone
          : userPhone // ignore: cast_nullable_to_non_nullable
              as String?,
      locationId: freezed == locationId
          ? _value.locationId
          : locationId // ignore: cast_nullable_to_non_nullable
              as int?,
      locationName: freezed == locationName
          ? _value.locationName
          : locationName // ignore: cast_nullable_to_non_nullable
              as String?,
      locationParent: freezed == locationParent
          ? _value.locationParent
          : locationParent // ignore: cast_nullable_to_non_nullable
              as LocationParent?,
      categoryId: freezed == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int?,
      categoryTitle: freezed == categoryTitle
          ? _value.categoryTitle
          : categoryTitle // ignore: cast_nullable_to_non_nullable
              as String?,
      categoryParent: freezed == categoryParent
          ? _value.categoryParent
          : categoryParent // ignore: cast_nullable_to_non_nullable
              as String?,
      shop: freezed == shop
          ? _value.shop
          : shop // ignore: cast_nullable_to_non_nullable
              as Shop?,
      shopId: freezed == shopId
          ? _value.shopId
          : shopId // ignore: cast_nullable_to_non_nullable
              as int?,
      shopBrand: freezed == shopBrand
          ? _value.shopBrand
          : shopBrand // ignore: cast_nullable_to_non_nullable
              as String?,
      shopLogo: freezed == shopLogo
          ? _value.shopLogo
          : shopLogo // ignore: cast_nullable_to_non_nullable
              as String?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
      reason: freezed == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductDataImpl implements _ProductData {
  const _$ProductDataImpl(
      {this.id,
      this.name,
      @JsonKey(name: 'comment_count') this.commentCount,
      this.price,
      this.status,
      this.favorited,
      this.expire,
      this.phone,
      this.who,
      this.delivery,
      this.comment,
      this.description,
      @JsonKey(name: 'lover_percentage') this.loverPercentage,
      @JsonKey(name: 'lover_price') this.loverPrice,
      this.vip,
      this.exclusive,
      this.hashtag,
      final List<ProductImage>? images,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'user_id') this.userId,
      @JsonKey(name: 'user_name') this.userName,
      @JsonKey(name: 'user_phone') this.userPhone,
      @JsonKey(name: 'location_id') this.locationId,
      @JsonKey(name: 'location_name') this.locationName,
      @JsonKey(name: 'location_parent') this.locationParent,
      @JsonKey(name: 'category_id') this.categoryId,
      @JsonKey(name: 'category_title') this.categoryTitle,
      @JsonKey(name: 'category_parent') this.categoryParent,
      this.shop,
      @JsonKey(name: 'shop_id') this.shopId,
      @JsonKey(name: 'shop_brand') this.shopBrand,
      @JsonKey(name: 'shop_logo') this.shopLogo,
      this.type,
      this.reason})
      : _images = images;

  factory _$ProductDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductDataImplFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  @JsonKey(name: 'comment_count')
  final int? commentCount;
  @override
  final double? price;
  @override
  final String? status;
  @override
  final bool? favorited;
  @override
  final String? expire;
  @override
  final String? phone;
  @override
  final String? who;
  @override
  final int? delivery;
  @override
  final int? comment;
  @override
  final String? description;
  @override
  @JsonKey(name: 'lover_percentage')
  final int? loverPercentage;
  @override
  @JsonKey(name: 'lover_price')
  final String? loverPrice;
  @override
  final String? vip;
  @override
  final int? exclusive;
  @override
  final String? hashtag;
  final List<ProductImage>? _images;
  @override
  List<ProductImage>? get images {
    final value = _images;
    if (value == null) return null;
    if (_images is EqualUnmodifiableListView) return _images;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'user_id')
  final int? userId;
  @override
  @JsonKey(name: 'user_name')
  final String? userName;
  @override
  @JsonKey(name: 'user_phone')
  final String? userPhone;
  @override
  @JsonKey(name: 'location_id')
  final int? locationId;
  @override
  @JsonKey(name: 'location_name')
  final String? locationName;
  @override
  @JsonKey(name: 'location_parent')
  final LocationParent? locationParent;
  @override
  @JsonKey(name: 'category_id')
  final int? categoryId;
  @override
  @JsonKey(name: 'category_title')
  final String? categoryTitle;
  @override
  @JsonKey(name: 'category_parent')
  final String? categoryParent;
  @override
  final Shop? shop;
  @override
  @JsonKey(name: 'shop_id')
  final int? shopId;
  @override
  @JsonKey(name: 'shop_brand')
  final String? shopBrand;
  @override
  @JsonKey(name: 'shop_logo')
  final String? shopLogo;
  @override
  final String? type;
  @override
  final String? reason;

  @override
  String toString() {
    return 'ProductData(id: $id, name: $name, commentCount: $commentCount, price: $price, status: $status, favorited: $favorited, expire: $expire, phone: $phone, who: $who, delivery: $delivery, comment: $comment, description: $description, loverPercentage: $loverPercentage, loverPrice: $loverPrice, vip: $vip, exclusive: $exclusive, hashtag: $hashtag, images: $images, createdAt: $createdAt, userId: $userId, userName: $userName, userPhone: $userPhone, locationId: $locationId, locationName: $locationName, locationParent: $locationParent, categoryId: $categoryId, categoryTitle: $categoryTitle, categoryParent: $categoryParent, shop: $shop, shopId: $shopId, shopBrand: $shopBrand, shopLogo: $shopLogo, type: $type, reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductDataImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.commentCount, commentCount) ||
                other.commentCount == commentCount) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.favorited, favorited) ||
                other.favorited == favorited) &&
            (identical(other.expire, expire) || other.expire == expire) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.who, who) || other.who == who) &&
            (identical(other.delivery, delivery) ||
                other.delivery == delivery) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.loverPercentage, loverPercentage) ||
                other.loverPercentage == loverPercentage) &&
            (identical(other.loverPrice, loverPrice) ||
                other.loverPrice == loverPrice) &&
            (identical(other.vip, vip) || other.vip == vip) &&
            (identical(other.exclusive, exclusive) ||
                other.exclusive == exclusive) &&
            (identical(other.hashtag, hashtag) || other.hashtag == hashtag) &&
            const DeepCollectionEquality().equals(other._images, _images) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.userName, userName) ||
                other.userName == userName) &&
            (identical(other.userPhone, userPhone) ||
                other.userPhone == userPhone) &&
            (identical(other.locationId, locationId) ||
                other.locationId == locationId) &&
            (identical(other.locationName, locationName) ||
                other.locationName == locationName) &&
            (identical(other.locationParent, locationParent) ||
                other.locationParent == locationParent) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.categoryTitle, categoryTitle) ||
                other.categoryTitle == categoryTitle) &&
            (identical(other.categoryParent, categoryParent) ||
                other.categoryParent == categoryParent) &&
            (identical(other.shop, shop) || other.shop == shop) &&
            (identical(other.shopId, shopId) || other.shopId == shopId) &&
            (identical(other.shopBrand, shopBrand) ||
                other.shopBrand == shopBrand) &&
            (identical(other.shopLogo, shopLogo) ||
                other.shopLogo == shopLogo) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        name,
        commentCount,
        price,
        status,
        favorited,
        expire,
        phone,
        who,
        delivery,
        comment,
        description,
        loverPercentage,
        loverPrice,
        vip,
        exclusive,
        hashtag,
        const DeepCollectionEquality().hash(_images),
        createdAt,
        userId,
        userName,
        userPhone,
        locationId,
        locationName,
        locationParent,
        categoryId,
        categoryTitle,
        categoryParent,
        shop,
        shopId,
        shopBrand,
        shopLogo,
        type,
        reason
      ]);

  /// Create a copy of ProductData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductDataImplCopyWith<_$ProductDataImpl> get copyWith =>
      __$$ProductDataImplCopyWithImpl<_$ProductDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductDataImplToJson(
      this,
    );
  }
}

abstract class _ProductData implements ProductData {
  const factory _ProductData(
      {final int? id,
      final String? name,
      @JsonKey(name: 'comment_count') final int? commentCount,
      final double? price,
      final String? status,
      final bool? favorited,
      final String? expire,
      final String? phone,
      final String? who,
      final int? delivery,
      final int? comment,
      final String? description,
      @JsonKey(name: 'lover_percentage') final int? loverPercentage,
      @JsonKey(name: 'lover_price') final String? loverPrice,
      final String? vip,
      final int? exclusive,
      final String? hashtag,
      final List<ProductImage>? images,
      @JsonKey(name: 'created_at') final String? createdAt,
      @JsonKey(name: 'user_id') final int? userId,
      @JsonKey(name: 'user_name') final String? userName,
      @JsonKey(name: 'user_phone') final String? userPhone,
      @JsonKey(name: 'location_id') final int? locationId,
      @JsonKey(name: 'location_name') final String? locationName,
      @JsonKey(name: 'location_parent') final LocationParent? locationParent,
      @JsonKey(name: 'category_id') final int? categoryId,
      @JsonKey(name: 'category_title') final String? categoryTitle,
      @JsonKey(name: 'category_parent') final String? categoryParent,
      final Shop? shop,
      @JsonKey(name: 'shop_id') final int? shopId,
      @JsonKey(name: 'shop_brand') final String? shopBrand,
      @JsonKey(name: 'shop_logo') final String? shopLogo,
      final String? type,
      final String? reason}) = _$ProductDataImpl;

  factory _ProductData.fromJson(Map<String, dynamic> json) =
      _$ProductDataImpl.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  @JsonKey(name: 'comment_count')
  int? get commentCount;
  @override
  double? get price;
  @override
  String? get status;
  @override
  bool? get favorited;
  @override
  String? get expire;
  @override
  String? get phone;
  @override
  String? get who;
  @override
  int? get delivery;
  @override
  int? get comment;
  @override
  String? get description;
  @override
  @JsonKey(name: 'lover_percentage')
  int? get loverPercentage;
  @override
  @JsonKey(name: 'lover_price')
  String? get loverPrice;
  @override
  String? get vip;
  @override
  int? get exclusive;
  @override
  String? get hashtag;
  @override
  List<ProductImage>? get images;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'user_id')
  int? get userId;
  @override
  @JsonKey(name: 'user_name')
  String? get userName;
  @override
  @JsonKey(name: 'user_phone')
  String? get userPhone;
  @override
  @JsonKey(name: 'location_id')
  int? get locationId;
  @override
  @JsonKey(name: 'location_name')
  String? get locationName;
  @override
  @JsonKey(name: 'location_parent')
  LocationParent? get locationParent;
  @override
  @JsonKey(name: 'category_id')
  int? get categoryId;
  @override
  @JsonKey(name: 'category_title')
  String? get categoryTitle;
  @override
  @JsonKey(name: 'category_parent')
  String? get categoryParent;
  @override
  Shop? get shop;
  @override
  @JsonKey(name: 'shop_id')
  int? get shopId;
  @override
  @JsonKey(name: 'shop_brand')
  String? get shopBrand;
  @override
  @JsonKey(name: 'shop_logo')
  String? get shopLogo;
  @override
  String? get type;
  @override
  String? get reason;

  /// Create a copy of ProductData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductDataImplCopyWith<_$ProductDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductImage _$ProductImageFromJson(Map<String, dynamic> json) {
  return _ProductImage.fromJson(json);
}

/// @nodoc
mixin _$ProductImage {
  int? get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_id')
  int? get productId => throw _privateConstructorUsedError;
  String? get path => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

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
  $Res call(
      {int? id,
      @JsonKey(name: 'product_id') int? productId,
      String? path,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
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
    Object? id = freezed,
    Object? productId = freezed,
    Object? path = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
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
abstract class _$$ProductImageImplCopyWith<$Res>
    implements $ProductImageCopyWith<$Res> {
  factory _$$ProductImageImplCopyWith(
          _$ProductImageImpl value, $Res Function(_$ProductImageImpl) then) =
      __$$ProductImageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      @JsonKey(name: 'product_id') int? productId,
      String? path,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});
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
    Object? id = freezed,
    Object? productId = freezed,
    Object? path = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$ProductImageImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      productId: freezed == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int?,
      path: freezed == path
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
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
class _$ProductImageImpl implements _ProductImage {
  const _$ProductImageImpl(
      {this.id,
      @JsonKey(name: 'product_id') this.productId,
      this.path,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$ProductImageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductImageImplFromJson(json);

  @override
  final int? id;
  @override
  @JsonKey(name: 'product_id')
  final int? productId;
  @override
  final String? path;
  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final String? updatedAt;

  @override
  String toString() {
    return 'ProductImage(id: $id, productId: $productId, path: $path, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductImageImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.path, path) || other.path == path) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, productId, path, createdAt, updatedAt);

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
  const factory _ProductImage(
          {final int? id,
          @JsonKey(name: 'product_id') final int? productId,
          final String? path,
          @JsonKey(name: 'created_at') final String? createdAt,
          @JsonKey(name: 'updated_at') final String? updatedAt}) =
      _$ProductImageImpl;

  factory _ProductImage.fromJson(Map<String, dynamic> json) =
      _$ProductImageImpl.fromJson;

  @override
  int? get id;
  @override
  @JsonKey(name: 'product_id')
  int? get productId;
  @override
  String? get path;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  String? get updatedAt;

  /// Create a copy of ProductImage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductImageImplCopyWith<_$ProductImageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

LocationParent _$LocationParentFromJson(Map<String, dynamic> json) {
  return _LocationParent.fromJson(json);
}

/// @nodoc
mixin _$LocationParent {
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

  /// Serializes this LocationParent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LocationParent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LocationParentCopyWith<LocationParent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationParentCopyWith<$Res> {
  factory $LocationParentCopyWith(
          LocationParent value, $Res Function(LocationParent) then) =
      _$LocationParentCopyWithImpl<$Res, LocationParent>;
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
class _$LocationParentCopyWithImpl<$Res, $Val extends LocationParent>
    implements $LocationParentCopyWith<$Res> {
  _$LocationParentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LocationParent
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
abstract class _$$LocationParentImplCopyWith<$Res>
    implements $LocationParentCopyWith<$Res> {
  factory _$$LocationParentImplCopyWith(_$LocationParentImpl value,
          $Res Function(_$LocationParentImpl) then) =
      __$$LocationParentImplCopyWithImpl<$Res>;
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
class __$$LocationParentImplCopyWithImpl<$Res>
    extends _$LocationParentCopyWithImpl<$Res, _$LocationParentImpl>
    implements _$$LocationParentImplCopyWith<$Res> {
  __$$LocationParentImplCopyWithImpl(
      _$LocationParentImpl _value, $Res Function(_$LocationParentImpl) _then)
      : super(_value, _then);

  /// Create a copy of LocationParent
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
    return _then(_$LocationParentImpl(
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
class _$LocationParentImpl implements _LocationParent {
  const _$LocationParentImpl(
      {this.id,
      @JsonKey(name: 'parent_id') this.parentId,
      this.name,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt,
      @JsonKey(name: 'parent_name') this.parentName});

  factory _$LocationParentImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationParentImplFromJson(json);

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
    return 'LocationParent(id: $id, parentId: $parentId, name: $name, createdAt: $createdAt, updatedAt: $updatedAt, parentName: $parentName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationParentImpl &&
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

  /// Create a copy of LocationParent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationParentImplCopyWith<_$LocationParentImpl> get copyWith =>
      __$$LocationParentImplCopyWithImpl<_$LocationParentImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationParentImplToJson(
      this,
    );
  }
}

abstract class _LocationParent implements LocationParent {
  const factory _LocationParent(
          {final int? id,
          @JsonKey(name: 'parent_id') final int? parentId,
          final String? name,
          @JsonKey(name: 'created_at') final String? createdAt,
          @JsonKey(name: 'updated_at') final String? updatedAt,
          @JsonKey(name: 'parent_name') final String? parentName}) =
      _$LocationParentImpl;

  factory _LocationParent.fromJson(Map<String, dynamic> json) =
      _$LocationParentImpl.fromJson;

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

  /// Create a copy of LocationParent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LocationParentImplCopyWith<_$LocationParentImpl> get copyWith =>
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
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'brief_description')
  String? get briefDescription => throw _privateConstructorUsedError;
  int? get views => throw _privateConstructorUsedError;
  @JsonKey(name: 'cover_media')
  String? get coverMedia => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_numbers')
  String? get phoneNumbers => throw _privateConstructorUsedError;
  @JsonKey(name: 'vip_status')
  bool? get vipStatus => throw _privateConstructorUsedError;
  String? get site => throw _privateConstructorUsedError;
  String? get mail => throw _privateConstructorUsedError;
  @JsonKey(name: 'social_profiles')
  List<SocialProfile>? get socialProfiles => throw _privateConstructorUsedError;
  List<dynamic>? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_count')
  int? get productCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_categories')
  List<BusinessProfileDetailProductCategory>? get productCategories =>
      throw _privateConstructorUsedError;

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
      String? description,
      @JsonKey(name: 'brief_description') String? briefDescription,
      int? views,
      @JsonKey(name: 'cover_media') String? coverMedia,
      @JsonKey(name: 'phone_numbers') String? phoneNumbers,
      @JsonKey(name: 'vip_status') bool? vipStatus,
      String? site,
      String? mail,
      @JsonKey(name: 'social_profiles') List<SocialProfile>? socialProfiles,
      List<dynamic>? location,
      @JsonKey(name: 'product_count') int? productCount,
      @JsonKey(name: 'product_categories')
      List<BusinessProfileDetailProductCategory>? productCategories});
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
    Object? description = freezed,
    Object? briefDescription = freezed,
    Object? views = freezed,
    Object? coverMedia = freezed,
    Object? phoneNumbers = freezed,
    Object? vipStatus = freezed,
    Object? site = freezed,
    Object? mail = freezed,
    Object? socialProfiles = freezed,
    Object? location = freezed,
    Object? productCount = freezed,
    Object? productCategories = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      briefDescription: freezed == briefDescription
          ? _value.briefDescription
          : briefDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      views: freezed == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int?,
      coverMedia: freezed == coverMedia
          ? _value.coverMedia
          : coverMedia // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumbers: freezed == phoneNumbers
          ? _value.phoneNumbers
          : phoneNumbers // ignore: cast_nullable_to_non_nullable
              as String?,
      vipStatus: freezed == vipStatus
          ? _value.vipStatus
          : vipStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      site: freezed == site
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as String?,
      mail: freezed == mail
          ? _value.mail
          : mail // ignore: cast_nullable_to_non_nullable
              as String?,
      socialProfiles: freezed == socialProfiles
          ? _value.socialProfiles
          : socialProfiles // ignore: cast_nullable_to_non_nullable
              as List<SocialProfile>?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      productCount: freezed == productCount
          ? _value.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int?,
      productCategories: freezed == productCategories
          ? _value.productCategories
          : productCategories // ignore: cast_nullable_to_non_nullable
              as List<BusinessProfileDetailProductCategory>?,
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
      String? description,
      @JsonKey(name: 'brief_description') String? briefDescription,
      int? views,
      @JsonKey(name: 'cover_media') String? coverMedia,
      @JsonKey(name: 'phone_numbers') String? phoneNumbers,
      @JsonKey(name: 'vip_status') bool? vipStatus,
      String? site,
      String? mail,
      @JsonKey(name: 'social_profiles') List<SocialProfile>? socialProfiles,
      List<dynamic>? location,
      @JsonKey(name: 'product_count') int? productCount,
      @JsonKey(name: 'product_categories')
      List<BusinessProfileDetailProductCategory>? productCategories});
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
    Object? description = freezed,
    Object? briefDescription = freezed,
    Object? views = freezed,
    Object? coverMedia = freezed,
    Object? phoneNumbers = freezed,
    Object? vipStatus = freezed,
    Object? site = freezed,
    Object? mail = freezed,
    Object? socialProfiles = freezed,
    Object? location = freezed,
    Object? productCount = freezed,
    Object? productCategories = freezed,
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
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      briefDescription: freezed == briefDescription
          ? _value.briefDescription
          : briefDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      views: freezed == views
          ? _value.views
          : views // ignore: cast_nullable_to_non_nullable
              as int?,
      coverMedia: freezed == coverMedia
          ? _value.coverMedia
          : coverMedia // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumbers: freezed == phoneNumbers
          ? _value.phoneNumbers
          : phoneNumbers // ignore: cast_nullable_to_non_nullable
              as String?,
      vipStatus: freezed == vipStatus
          ? _value.vipStatus
          : vipStatus // ignore: cast_nullable_to_non_nullable
              as bool?,
      site: freezed == site
          ? _value.site
          : site // ignore: cast_nullable_to_non_nullable
              as String?,
      mail: freezed == mail
          ? _value.mail
          : mail // ignore: cast_nullable_to_non_nullable
              as String?,
      socialProfiles: freezed == socialProfiles
          ? _value._socialProfiles
          : socialProfiles // ignore: cast_nullable_to_non_nullable
              as List<SocialProfile>?,
      location: freezed == location
          ? _value._location
          : location // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      productCount: freezed == productCount
          ? _value.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int?,
      productCategories: freezed == productCategories
          ? _value._productCategories
          : productCategories // ignore: cast_nullable_to_non_nullable
              as List<BusinessProfileDetailProductCategory>?,
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
      this.description,
      @JsonKey(name: 'brief_description') this.briefDescription,
      this.views,
      @JsonKey(name: 'cover_media') this.coverMedia,
      @JsonKey(name: 'phone_numbers') this.phoneNumbers,
      @JsonKey(name: 'vip_status') this.vipStatus,
      this.site,
      this.mail,
      @JsonKey(name: 'social_profiles')
      final List<SocialProfile>? socialProfiles,
      final List<dynamic>? location,
      @JsonKey(name: 'product_count') this.productCount,
      @JsonKey(name: 'product_categories')
      final List<BusinessProfileDetailProductCategory>? productCategories})
      : _socialProfiles = socialProfiles,
        _location = location,
        _productCategories = productCategories;

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
  final String? description;
  @override
  @JsonKey(name: 'brief_description')
  final String? briefDescription;
  @override
  final int? views;
  @override
  @JsonKey(name: 'cover_media')
  final String? coverMedia;
  @override
  @JsonKey(name: 'phone_numbers')
  final String? phoneNumbers;
  @override
  @JsonKey(name: 'vip_status')
  final bool? vipStatus;
  @override
  final String? site;
  @override
  final String? mail;
  final List<SocialProfile>? _socialProfiles;
  @override
  @JsonKey(name: 'social_profiles')
  List<SocialProfile>? get socialProfiles {
    final value = _socialProfiles;
    if (value == null) return null;
    if (_socialProfiles is EqualUnmodifiableListView) return _socialProfiles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<dynamic>? _location;
  @override
  List<dynamic>? get location {
    final value = _location;
    if (value == null) return null;
    if (_location is EqualUnmodifiableListView) return _location;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'product_count')
  final int? productCount;
  final List<BusinessProfileDetailProductCategory>? _productCategories;
  @override
  @JsonKey(name: 'product_categories')
  List<BusinessProfileDetailProductCategory>? get productCategories {
    final value = _productCategories;
    if (value == null) return null;
    if (_productCategories is EqualUnmodifiableListView)
      return _productCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Shop(id: $id, brand: $brand, logo: $logo, image: $image, description: $description, briefDescription: $briefDescription, views: $views, coverMedia: $coverMedia, phoneNumbers: $phoneNumbers, vipStatus: $vipStatus, site: $site, mail: $mail, socialProfiles: $socialProfiles, location: $location, productCount: $productCount, productCategories: $productCategories)';
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
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.briefDescription, briefDescription) ||
                other.briefDescription == briefDescription) &&
            (identical(other.views, views) || other.views == views) &&
            (identical(other.coverMedia, coverMedia) ||
                other.coverMedia == coverMedia) &&
            (identical(other.phoneNumbers, phoneNumbers) ||
                other.phoneNumbers == phoneNumbers) &&
            (identical(other.vipStatus, vipStatus) ||
                other.vipStatus == vipStatus) &&
            (identical(other.site, site) || other.site == site) &&
            (identical(other.mail, mail) || other.mail == mail) &&
            const DeepCollectionEquality()
                .equals(other._socialProfiles, _socialProfiles) &&
            const DeepCollectionEquality().equals(other._location, _location) &&
            (identical(other.productCount, productCount) ||
                other.productCount == productCount) &&
            const DeepCollectionEquality()
                .equals(other._productCategories, _productCategories));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      brand,
      logo,
      image,
      description,
      briefDescription,
      views,
      coverMedia,
      phoneNumbers,
      vipStatus,
      site,
      mail,
      const DeepCollectionEquality().hash(_socialProfiles),
      const DeepCollectionEquality().hash(_location),
      productCount,
      const DeepCollectionEquality().hash(_productCategories));

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
      final String? description,
      @JsonKey(name: 'brief_description') final String? briefDescription,
      final int? views,
      @JsonKey(name: 'cover_media') final String? coverMedia,
      @JsonKey(name: 'phone_numbers') final String? phoneNumbers,
      @JsonKey(name: 'vip_status') final bool? vipStatus,
      final String? site,
      final String? mail,
      @JsonKey(name: 'social_profiles')
      final List<SocialProfile>? socialProfiles,
      final List<dynamic>? location,
      @JsonKey(name: 'product_count') final int? productCount,
      @JsonKey(name: 'product_categories')
      final List<BusinessProfileDetailProductCategory>?
          productCategories}) = _$ShopImpl;

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
  String? get description;
  @override
  @JsonKey(name: 'brief_description')
  String? get briefDescription;
  @override
  int? get views;
  @override
  @JsonKey(name: 'cover_media')
  String? get coverMedia;
  @override
  @JsonKey(name: 'phone_numbers')
  String? get phoneNumbers;
  @override
  @JsonKey(name: 'vip_status')
  bool? get vipStatus;
  @override
  String? get site;
  @override
  String? get mail;
  @override
  @JsonKey(name: 'social_profiles')
  List<SocialProfile>? get socialProfiles;
  @override
  List<dynamic>? get location;
  @override
  @JsonKey(name: 'product_count')
  int? get productCount;
  @override
  @JsonKey(name: 'product_categories')
  List<BusinessProfileDetailProductCategory>? get productCategories;

  /// Create a copy of Shop
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ShopImplCopyWith<_$ShopImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

SocialProfile _$SocialProfileFromJson(Map<String, dynamic> json) {
  return _SocialProfile.fromJson(json);
}

/// @nodoc
mixin _$SocialProfile {
  @JsonKey(name: 'sociable_id')
  int? get sociableId => throw _privateConstructorUsedError;
  String? get platform => throw _privateConstructorUsedError;
  String? get url => throw _privateConstructorUsedError;

  /// Serializes this SocialProfile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SocialProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SocialProfileCopyWith<SocialProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocialProfileCopyWith<$Res> {
  factory $SocialProfileCopyWith(
          SocialProfile value, $Res Function(SocialProfile) then) =
      _$SocialProfileCopyWithImpl<$Res, SocialProfile>;
  @useResult
  $Res call(
      {@JsonKey(name: 'sociable_id') int? sociableId,
      String? platform,
      String? url});
}

/// @nodoc
class _$SocialProfileCopyWithImpl<$Res, $Val extends SocialProfile>
    implements $SocialProfileCopyWith<$Res> {
  _$SocialProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SocialProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sociableId = freezed,
    Object? platform = freezed,
    Object? url = freezed,
  }) {
    return _then(_value.copyWith(
      sociableId: freezed == sociableId
          ? _value.sociableId
          : sociableId // ignore: cast_nullable_to_non_nullable
              as int?,
      platform: freezed == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SocialProfileImplCopyWith<$Res>
    implements $SocialProfileCopyWith<$Res> {
  factory _$$SocialProfileImplCopyWith(
          _$SocialProfileImpl value, $Res Function(_$SocialProfileImpl) then) =
      __$$SocialProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'sociable_id') int? sociableId,
      String? platform,
      String? url});
}

/// @nodoc
class __$$SocialProfileImplCopyWithImpl<$Res>
    extends _$SocialProfileCopyWithImpl<$Res, _$SocialProfileImpl>
    implements _$$SocialProfileImplCopyWith<$Res> {
  __$$SocialProfileImplCopyWithImpl(
      _$SocialProfileImpl _value, $Res Function(_$SocialProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of SocialProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sociableId = freezed,
    Object? platform = freezed,
    Object? url = freezed,
  }) {
    return _then(_$SocialProfileImpl(
      sociableId: freezed == sociableId
          ? _value.sociableId
          : sociableId // ignore: cast_nullable_to_non_nullable
              as int?,
      platform: freezed == platform
          ? _value.platform
          : platform // ignore: cast_nullable_to_non_nullable
              as String?,
      url: freezed == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SocialProfileImpl implements _SocialProfile {
  const _$SocialProfileImpl(
      {@JsonKey(name: 'sociable_id') this.sociableId, this.platform, this.url});

  factory _$SocialProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$SocialProfileImplFromJson(json);

  @override
  @JsonKey(name: 'sociable_id')
  final int? sociableId;
  @override
  final String? platform;
  @override
  final String? url;

  @override
  String toString() {
    return 'SocialProfile(sociableId: $sociableId, platform: $platform, url: $url)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SocialProfileImpl &&
            (identical(other.sociableId, sociableId) ||
                other.sociableId == sociableId) &&
            (identical(other.platform, platform) ||
                other.platform == platform) &&
            (identical(other.url, url) || other.url == url));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, sociableId, platform, url);

  /// Create a copy of SocialProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SocialProfileImplCopyWith<_$SocialProfileImpl> get copyWith =>
      __$$SocialProfileImplCopyWithImpl<_$SocialProfileImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SocialProfileImplToJson(
      this,
    );
  }
}

abstract class _SocialProfile implements SocialProfile {
  const factory _SocialProfile(
      {@JsonKey(name: 'sociable_id') final int? sociableId,
      final String? platform,
      final String? url}) = _$SocialProfileImpl;

  factory _SocialProfile.fromJson(Map<String, dynamic> json) =
      _$SocialProfileImpl.fromJson;

  @override
  @JsonKey(name: 'sociable_id')
  int? get sociableId;
  @override
  String? get platform;
  @override
  String? get url;

  /// Create a copy of SocialProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SocialProfileImplCopyWith<_$SocialProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

BusinessProfileDetailProductCategory
    _$BusinessProfileDetailProductCategoryFromJson(Map<String, dynamic> json) {
  return _BusinessProfileDetailProductCategory.fromJson(json);
}

/// @nodoc
mixin _$BusinessProfileDetailProductCategory {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  BusinessProfileDetailProductCategoryParent? get parent =>
      throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'products_count')
  int? get productsCount => throw _privateConstructorUsedError;
  String? get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'parent_id')
  int? get parentId => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  String? get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this BusinessProfileDetailProductCategory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BusinessProfileDetailProductCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BusinessProfileDetailProductCategoryCopyWith<
          BusinessProfileDetailProductCategory>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessProfileDetailProductCategoryCopyWith<$Res> {
  factory $BusinessProfileDetailProductCategoryCopyWith(
          BusinessProfileDetailProductCategory value,
          $Res Function(BusinessProfileDetailProductCategory) then) =
      _$BusinessProfileDetailProductCategoryCopyWithImpl<$Res,
          BusinessProfileDetailProductCategory>;
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? image,
      BusinessProfileDetailProductCategoryParent? parent,
      String? description,
      @JsonKey(name: 'products_count') int? productsCount,
      String? type,
      @JsonKey(name: 'parent_id') int? parentId,
      String? name,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});

  $BusinessProfileDetailProductCategoryParentCopyWith<$Res>? get parent;
}

/// @nodoc
class _$BusinessProfileDetailProductCategoryCopyWithImpl<$Res,
        $Val extends BusinessProfileDetailProductCategory>
    implements $BusinessProfileDetailProductCategoryCopyWith<$Res> {
  _$BusinessProfileDetailProductCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BusinessProfileDetailProductCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? parent = freezed,
    Object? description = freezed,
    Object? productsCount = freezed,
    Object? type = freezed,
    Object? parentId = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as BusinessProfileDetailProductCategoryParent?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      productsCount: freezed == productsCount
          ? _value.productsCount
          : productsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
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
    ) as $Val);
  }

  /// Create a copy of BusinessProfileDetailProductCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BusinessProfileDetailProductCategoryParentCopyWith<$Res>? get parent {
    if (_value.parent == null) {
      return null;
    }

    return $BusinessProfileDetailProductCategoryParentCopyWith<$Res>(
        _value.parent!, (value) {
      return _then(_value.copyWith(parent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BusinessProfileDetailProductCategoryImplCopyWith<$Res>
    implements $BusinessProfileDetailProductCategoryCopyWith<$Res> {
  factory _$$BusinessProfileDetailProductCategoryImplCopyWith(
          _$BusinessProfileDetailProductCategoryImpl value,
          $Res Function(_$BusinessProfileDetailProductCategoryImpl) then) =
      __$$BusinessProfileDetailProductCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? image,
      BusinessProfileDetailProductCategoryParent? parent,
      String? description,
      @JsonKey(name: 'products_count') int? productsCount,
      String? type,
      @JsonKey(name: 'parent_id') int? parentId,
      String? name,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});

  @override
  $BusinessProfileDetailProductCategoryParentCopyWith<$Res>? get parent;
}

/// @nodoc
class __$$BusinessProfileDetailProductCategoryImplCopyWithImpl<$Res>
    extends _$BusinessProfileDetailProductCategoryCopyWithImpl<$Res,
        _$BusinessProfileDetailProductCategoryImpl>
    implements _$$BusinessProfileDetailProductCategoryImplCopyWith<$Res> {
  __$$BusinessProfileDetailProductCategoryImplCopyWithImpl(
      _$BusinessProfileDetailProductCategoryImpl _value,
      $Res Function(_$BusinessProfileDetailProductCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of BusinessProfileDetailProductCategory
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? parent = freezed,
    Object? description = freezed,
    Object? productsCount = freezed,
    Object? type = freezed,
    Object? parentId = freezed,
    Object? name = freezed,
    Object? createdAt = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$BusinessProfileDetailProductCategoryImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as BusinessProfileDetailProductCategoryParent?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      productsCount: freezed == productsCount
          ? _value.productsCount
          : productsCount // ignore: cast_nullable_to_non_nullable
              as int?,
      type: freezed == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BusinessProfileDetailProductCategoryImpl
    implements _BusinessProfileDetailProductCategory {
  const _$BusinessProfileDetailProductCategoryImpl(
      {this.id,
      this.title,
      this.image,
      this.parent,
      this.description,
      @JsonKey(name: 'products_count') this.productsCount,
      this.type,
      @JsonKey(name: 'parent_id') this.parentId,
      this.name,
      @JsonKey(name: 'created_at') this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$BusinessProfileDetailProductCategoryImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BusinessProfileDetailProductCategoryImplFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? image;
  @override
  final BusinessProfileDetailProductCategoryParent? parent;
  @override
  final String? description;
  @override
  @JsonKey(name: 'products_count')
  final int? productsCount;
  @override
  final String? type;
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
  String toString() {
    return 'BusinessProfileDetailProductCategory(id: $id, title: $title, image: $image, parent: $parent, description: $description, productsCount: $productsCount, type: $type, parentId: $parentId, name: $name, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessProfileDetailProductCategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.productsCount, productsCount) ||
                other.productsCount == productsCount) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.parentId, parentId) ||
                other.parentId == parentId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, image, parent,
      description, productsCount, type, parentId, name, createdAt, updatedAt);

  /// Create a copy of BusinessProfileDetailProductCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessProfileDetailProductCategoryImplCopyWith<
          _$BusinessProfileDetailProductCategoryImpl>
      get copyWith => __$$BusinessProfileDetailProductCategoryImplCopyWithImpl<
          _$BusinessProfileDetailProductCategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BusinessProfileDetailProductCategoryImplToJson(
      this,
    );
  }
}

abstract class _BusinessProfileDetailProductCategory
    implements BusinessProfileDetailProductCategory {
  const factory _BusinessProfileDetailProductCategory(
          {final int? id,
          final String? title,
          final String? image,
          final BusinessProfileDetailProductCategoryParent? parent,
          final String? description,
          @JsonKey(name: 'products_count') final int? productsCount,
          final String? type,
          @JsonKey(name: 'parent_id') final int? parentId,
          final String? name,
          @JsonKey(name: 'created_at') final String? createdAt,
          @JsonKey(name: 'updated_at') final String? updatedAt}) =
      _$BusinessProfileDetailProductCategoryImpl;

  factory _BusinessProfileDetailProductCategory.fromJson(
          Map<String, dynamic> json) =
      _$BusinessProfileDetailProductCategoryImpl.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get image;
  @override
  BusinessProfileDetailProductCategoryParent? get parent;
  @override
  String? get description;
  @override
  @JsonKey(name: 'products_count')
  int? get productsCount;
  @override
  String? get type;
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

  /// Create a copy of BusinessProfileDetailProductCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BusinessProfileDetailProductCategoryImplCopyWith<
          _$BusinessProfileDetailProductCategoryImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BusinessProfileDetailProductCategoryParent
    _$BusinessProfileDetailProductCategoryParentFromJson(
        Map<String, dynamic> json) {
  return _BusinessProfileDetailProductCategoryParent.fromJson(json);
}

/// @nodoc
mixin _$BusinessProfileDetailProductCategoryParent {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  BusinessProfileDetailProductCategoryParent? get parent =>
      throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this BusinessProfileDetailProductCategoryParent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BusinessProfileDetailProductCategoryParent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BusinessProfileDetailProductCategoryParentCopyWith<
          BusinessProfileDetailProductCategoryParent>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessProfileDetailProductCategoryParentCopyWith<$Res> {
  factory $BusinessProfileDetailProductCategoryParentCopyWith(
          BusinessProfileDetailProductCategoryParent value,
          $Res Function(BusinessProfileDetailProductCategoryParent) then) =
      _$BusinessProfileDetailProductCategoryParentCopyWithImpl<$Res,
          BusinessProfileDetailProductCategoryParent>;
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? image,
      BusinessProfileDetailProductCategoryParent? parent,
      String? description});

  $BusinessProfileDetailProductCategoryParentCopyWith<$Res>? get parent;
}

/// @nodoc
class _$BusinessProfileDetailProductCategoryParentCopyWithImpl<$Res,
        $Val extends BusinessProfileDetailProductCategoryParent>
    implements $BusinessProfileDetailProductCategoryParentCopyWith<$Res> {
  _$BusinessProfileDetailProductCategoryParentCopyWithImpl(
      this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BusinessProfileDetailProductCategoryParent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? parent = freezed,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as BusinessProfileDetailProductCategoryParent?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of BusinessProfileDetailProductCategoryParent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BusinessProfileDetailProductCategoryParentCopyWith<$Res>? get parent {
    if (_value.parent == null) {
      return null;
    }

    return $BusinessProfileDetailProductCategoryParentCopyWith<$Res>(
        _value.parent!, (value) {
      return _then(_value.copyWith(parent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BusinessProfileDetailProductCategoryParentImplCopyWith<$Res>
    implements $BusinessProfileDetailProductCategoryParentCopyWith<$Res> {
  factory _$$BusinessProfileDetailProductCategoryParentImplCopyWith(
          _$BusinessProfileDetailProductCategoryParentImpl value,
          $Res Function(_$BusinessProfileDetailProductCategoryParentImpl)
              then) =
      __$$BusinessProfileDetailProductCategoryParentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? image,
      BusinessProfileDetailProductCategoryParent? parent,
      String? description});

  @override
  $BusinessProfileDetailProductCategoryParentCopyWith<$Res>? get parent;
}

/// @nodoc
class __$$BusinessProfileDetailProductCategoryParentImplCopyWithImpl<$Res>
    extends _$BusinessProfileDetailProductCategoryParentCopyWithImpl<$Res,
        _$BusinessProfileDetailProductCategoryParentImpl>
    implements _$$BusinessProfileDetailProductCategoryParentImplCopyWith<$Res> {
  __$$BusinessProfileDetailProductCategoryParentImplCopyWithImpl(
      _$BusinessProfileDetailProductCategoryParentImpl _value,
      $Res Function(_$BusinessProfileDetailProductCategoryParentImpl) _then)
      : super(_value, _then);

  /// Create a copy of BusinessProfileDetailProductCategoryParent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? image = freezed,
    Object? parent = freezed,
    Object? description = freezed,
  }) {
    return _then(_$BusinessProfileDetailProductCategoryParentImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      title: freezed == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      parent: freezed == parent
          ? _value.parent
          : parent // ignore: cast_nullable_to_non_nullable
              as BusinessProfileDetailProductCategoryParent?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BusinessProfileDetailProductCategoryParentImpl
    implements _BusinessProfileDetailProductCategoryParent {
  const _$BusinessProfileDetailProductCategoryParentImpl(
      {this.id, this.title, this.image, this.parent, this.description});

  factory _$BusinessProfileDetailProductCategoryParentImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BusinessProfileDetailProductCategoryParentImplFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? image;
  @override
  final BusinessProfileDetailProductCategoryParent? parent;
  @override
  final String? description;

  @override
  String toString() {
    return 'BusinessProfileDetailProductCategoryParent(id: $id, title: $title, image: $image, parent: $parent, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessProfileDetailProductCategoryParentImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.parent, parent) || other.parent == parent) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, image, parent, description);

  /// Create a copy of BusinessProfileDetailProductCategoryParent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessProfileDetailProductCategoryParentImplCopyWith<
          _$BusinessProfileDetailProductCategoryParentImpl>
      get copyWith =>
          __$$BusinessProfileDetailProductCategoryParentImplCopyWithImpl<
                  _$BusinessProfileDetailProductCategoryParentImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BusinessProfileDetailProductCategoryParentImplToJson(
      this,
    );
  }
}

abstract class _BusinessProfileDetailProductCategoryParent
    implements BusinessProfileDetailProductCategoryParent {
  const factory _BusinessProfileDetailProductCategoryParent(
          {final int? id,
          final String? title,
          final String? image,
          final BusinessProfileDetailProductCategoryParent? parent,
          final String? description}) =
      _$BusinessProfileDetailProductCategoryParentImpl;

  factory _BusinessProfileDetailProductCategoryParent.fromJson(
          Map<String, dynamic> json) =
      _$BusinessProfileDetailProductCategoryParentImpl.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get image;
  @override
  BusinessProfileDetailProductCategoryParent? get parent;
  @override
  String? get description;

  /// Create a copy of BusinessProfileDetailProductCategoryParent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BusinessProfileDetailProductCategoryParentImplCopyWith<
          _$BusinessProfileDetailProductCategoryParentImpl>
      get copyWith => throw _privateConstructorUsedError;
}
