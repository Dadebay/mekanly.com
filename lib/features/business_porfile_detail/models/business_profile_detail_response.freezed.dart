// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'business_profile_detail_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BusinessProfileDetailResponse _$BusinessProfileDetailResponseFromJson(
    Map<String, dynamic> json) {
  return _BusinessProfileDetailResponse.fromJson(json);
}

/// @nodoc
mixin _$BusinessProfileDetailResponse {
  BusinessProfileData? get data => throw _privateConstructorUsedError;

  /// Serializes this BusinessProfileDetailResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BusinessProfileDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BusinessProfileDetailResponseCopyWith<BusinessProfileDetailResponse>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessProfileDetailResponseCopyWith<$Res> {
  factory $BusinessProfileDetailResponseCopyWith(
          BusinessProfileDetailResponse value,
          $Res Function(BusinessProfileDetailResponse) then) =
      _$BusinessProfileDetailResponseCopyWithImpl<$Res,
          BusinessProfileDetailResponse>;
  @useResult
  $Res call({BusinessProfileData? data});

  $BusinessProfileDataCopyWith<$Res>? get data;
}

/// @nodoc
class _$BusinessProfileDetailResponseCopyWithImpl<$Res,
        $Val extends BusinessProfileDetailResponse>
    implements $BusinessProfileDetailResponseCopyWith<$Res> {
  _$BusinessProfileDetailResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BusinessProfileDetailResponse
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
              as BusinessProfileData?,
    ) as $Val);
  }

  /// Create a copy of BusinessProfileDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BusinessProfileDataCopyWith<$Res>? get data {
    if (_value.data == null) {
      return null;
    }

    return $BusinessProfileDataCopyWith<$Res>(_value.data!, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$BusinessProfileDetailResponseImplCopyWith<$Res>
    implements $BusinessProfileDetailResponseCopyWith<$Res> {
  factory _$$BusinessProfileDetailResponseImplCopyWith(
          _$BusinessProfileDetailResponseImpl value,
          $Res Function(_$BusinessProfileDetailResponseImpl) then) =
      __$$BusinessProfileDetailResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({BusinessProfileData? data});

  @override
  $BusinessProfileDataCopyWith<$Res>? get data;
}

/// @nodoc
class __$$BusinessProfileDetailResponseImplCopyWithImpl<$Res>
    extends _$BusinessProfileDetailResponseCopyWithImpl<$Res,
        _$BusinessProfileDetailResponseImpl>
    implements _$$BusinessProfileDetailResponseImplCopyWith<$Res> {
  __$$BusinessProfileDetailResponseImplCopyWithImpl(
      _$BusinessProfileDetailResponseImpl _value,
      $Res Function(_$BusinessProfileDetailResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of BusinessProfileDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$BusinessProfileDetailResponseImpl(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as BusinessProfileData?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BusinessProfileDetailResponseImpl
    implements _BusinessProfileDetailResponse {
  const _$BusinessProfileDetailResponseImpl({this.data});

  factory _$BusinessProfileDetailResponseImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$BusinessProfileDetailResponseImplFromJson(json);

  @override
  final BusinessProfileData? data;

  @override
  String toString() {
    return 'BusinessProfileDetailResponse(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessProfileDetailResponseImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of BusinessProfileDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessProfileDetailResponseImplCopyWith<
          _$BusinessProfileDetailResponseImpl>
      get copyWith => __$$BusinessProfileDetailResponseImplCopyWithImpl<
          _$BusinessProfileDetailResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BusinessProfileDetailResponseImplToJson(
      this,
    );
  }
}

abstract class _BusinessProfileDetailResponse
    implements BusinessProfileDetailResponse {
  const factory _BusinessProfileDetailResponse(
      {final BusinessProfileData? data}) = _$BusinessProfileDetailResponseImpl;

  factory _BusinessProfileDetailResponse.fromJson(Map<String, dynamic> json) =
      _$BusinessProfileDetailResponseImpl.fromJson;

  @override
  BusinessProfileData? get data;

  /// Create a copy of BusinessProfileDetailResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BusinessProfileDetailResponseImplCopyWith<
          _$BusinessProfileDetailResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

BusinessProfileData _$BusinessProfileDataFromJson(Map<String, dynamic> json) {
  return _BusinessProfileData.fromJson(json);
}

/// @nodoc
mixin _$BusinessProfileData {
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
  List<String>? get phoneNumbers => throw _privateConstructorUsedError;
  @JsonKey(name: 'vip_status')
  bool? get vipStatus => throw _privateConstructorUsedError;
  String? get site => throw _privateConstructorUsedError;
  String? get mail => throw _privateConstructorUsedError;
  @JsonKey(name: 'social_profiles')
  List<SocialProfile>? get socialProfiles => throw _privateConstructorUsedError;
  List<String>? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_count')
  int? get productCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_categories')
  List<ProductCategory>? get productCategories =>
      throw _privateConstructorUsedError; // Ek alanlar
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

  /// Serializes this BusinessProfileData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BusinessProfileData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BusinessProfileDataCopyWith<BusinessProfileData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessProfileDataCopyWith<$Res> {
  factory $BusinessProfileDataCopyWith(
          BusinessProfileData value, $Res Function(BusinessProfileData) then) =
      _$BusinessProfileDataCopyWithImpl<$Res, BusinessProfileData>;
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
      @JsonKey(name: 'phone_numbers') List<String>? phoneNumbers,
      @JsonKey(name: 'vip_status') bool? vipStatus,
      String? site,
      String? mail,
      @JsonKey(name: 'social_profiles') List<SocialProfile>? socialProfiles,
      List<String>? location,
      @JsonKey(name: 'product_count') int? productCount,
      @JsonKey(name: 'product_categories')
      List<ProductCategory>? productCategories,
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
      @JsonKey(name: 'shop_logo') String? shopLogo});

  $LocationParentCopyWith<$Res>? get locationParent;
  $ShopCopyWith<$Res>? get shop;
}

/// @nodoc
class _$BusinessProfileDataCopyWithImpl<$Res, $Val extends BusinessProfileData>
    implements $BusinessProfileDataCopyWith<$Res> {
  _$BusinessProfileDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BusinessProfileData
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
              as List<String>?,
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
              as List<String>?,
      productCount: freezed == productCount
          ? _value.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int?,
      productCategories: freezed == productCategories
          ? _value.productCategories
          : productCategories // ignore: cast_nullable_to_non_nullable
              as List<ProductCategory>?,
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
    ) as $Val);
  }

  /// Create a copy of BusinessProfileData
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

  /// Create a copy of BusinessProfileData
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
abstract class _$$BusinessProfileDataImplCopyWith<$Res>
    implements $BusinessProfileDataCopyWith<$Res> {
  factory _$$BusinessProfileDataImplCopyWith(_$BusinessProfileDataImpl value,
          $Res Function(_$BusinessProfileDataImpl) then) =
      __$$BusinessProfileDataImplCopyWithImpl<$Res>;
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
      @JsonKey(name: 'phone_numbers') List<String>? phoneNumbers,
      @JsonKey(name: 'vip_status') bool? vipStatus,
      String? site,
      String? mail,
      @JsonKey(name: 'social_profiles') List<SocialProfile>? socialProfiles,
      List<String>? location,
      @JsonKey(name: 'product_count') int? productCount,
      @JsonKey(name: 'product_categories')
      List<ProductCategory>? productCategories,
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
      @JsonKey(name: 'shop_logo') String? shopLogo});

  @override
  $LocationParentCopyWith<$Res>? get locationParent;
  @override
  $ShopCopyWith<$Res>? get shop;
}

/// @nodoc
class __$$BusinessProfileDataImplCopyWithImpl<$Res>
    extends _$BusinessProfileDataCopyWithImpl<$Res, _$BusinessProfileDataImpl>
    implements _$$BusinessProfileDataImplCopyWith<$Res> {
  __$$BusinessProfileDataImplCopyWithImpl(_$BusinessProfileDataImpl _value,
      $Res Function(_$BusinessProfileDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of BusinessProfileData
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
  }) {
    return _then(_$BusinessProfileDataImpl(
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
          ? _value._phoneNumbers
          : phoneNumbers // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
              as List<String>?,
      productCount: freezed == productCount
          ? _value.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int?,
      productCategories: freezed == productCategories
          ? _value._productCategories
          : productCategories // ignore: cast_nullable_to_non_nullable
              as List<ProductCategory>?,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$BusinessProfileDataImpl implements _BusinessProfileData {
  const _$BusinessProfileDataImpl(
      {this.id,
      this.brand,
      this.logo,
      this.image,
      this.description,
      @JsonKey(name: 'brief_description') this.briefDescription,
      this.views,
      @JsonKey(name: 'cover_media') this.coverMedia,
      @JsonKey(name: 'phone_numbers') final List<String>? phoneNumbers,
      @JsonKey(name: 'vip_status') this.vipStatus,
      this.site,
      this.mail,
      @JsonKey(name: 'social_profiles')
      final List<SocialProfile>? socialProfiles,
      final List<String>? location,
      @JsonKey(name: 'product_count') this.productCount,
      @JsonKey(name: 'product_categories')
      final List<ProductCategory>? productCategories,
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
      @JsonKey(name: 'shop_logo') this.shopLogo})
      : _phoneNumbers = phoneNumbers,
        _socialProfiles = socialProfiles,
        _location = location,
        _productCategories = productCategories;

  factory _$BusinessProfileDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$BusinessProfileDataImplFromJson(json);

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
  final List<String>? _phoneNumbers;
  @override
  @JsonKey(name: 'phone_numbers')
  List<String>? get phoneNumbers {
    final value = _phoneNumbers;
    if (value == null) return null;
    if (_phoneNumbers is EqualUnmodifiableListView) return _phoneNumbers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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

  final List<String>? _location;
  @override
  List<String>? get location {
    final value = _location;
    if (value == null) return null;
    if (_location is EqualUnmodifiableListView) return _location;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'product_count')
  final int? productCount;
  final List<ProductCategory>? _productCategories;
  @override
  @JsonKey(name: 'product_categories')
  List<ProductCategory>? get productCategories {
    final value = _productCategories;
    if (value == null) return null;
    if (_productCategories is EqualUnmodifiableListView)
      return _productCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

// Ek alanlar
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
  String toString() {
    return 'BusinessProfileData(id: $id, brand: $brand, logo: $logo, image: $image, description: $description, briefDescription: $briefDescription, views: $views, coverMedia: $coverMedia, phoneNumbers: $phoneNumbers, vipStatus: $vipStatus, site: $site, mail: $mail, socialProfiles: $socialProfiles, location: $location, productCount: $productCount, productCategories: $productCategories, userId: $userId, userName: $userName, userPhone: $userPhone, locationId: $locationId, locationName: $locationName, locationParent: $locationParent, categoryId: $categoryId, categoryTitle: $categoryTitle, categoryParent: $categoryParent, shop: $shop, shopId: $shopId, shopBrand: $shopBrand, shopLogo: $shopLogo)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BusinessProfileDataImpl &&
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
            const DeepCollectionEquality()
                .equals(other._phoneNumbers, _phoneNumbers) &&
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
                .equals(other._productCategories, _productCategories) &&
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
                other.shopLogo == shopLogo));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        id,
        brand,
        logo,
        image,
        description,
        briefDescription,
        views,
        coverMedia,
        const DeepCollectionEquality().hash(_phoneNumbers),
        vipStatus,
        site,
        mail,
        const DeepCollectionEquality().hash(_socialProfiles),
        const DeepCollectionEquality().hash(_location),
        productCount,
        const DeepCollectionEquality().hash(_productCategories),
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
        shopLogo
      ]);

  /// Create a copy of BusinessProfileData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BusinessProfileDataImplCopyWith<_$BusinessProfileDataImpl> get copyWith =>
      __$$BusinessProfileDataImplCopyWithImpl<_$BusinessProfileDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BusinessProfileDataImplToJson(
      this,
    );
  }
}

abstract class _BusinessProfileData implements BusinessProfileData {
  const factory _BusinessProfileData(
      {final int? id,
      final String? brand,
      final String? logo,
      final String? image,
      final String? description,
      @JsonKey(name: 'brief_description') final String? briefDescription,
      final int? views,
      @JsonKey(name: 'cover_media') final String? coverMedia,
      @JsonKey(name: 'phone_numbers') final List<String>? phoneNumbers,
      @JsonKey(name: 'vip_status') final bool? vipStatus,
      final String? site,
      final String? mail,
      @JsonKey(name: 'social_profiles')
      final List<SocialProfile>? socialProfiles,
      final List<String>? location,
      @JsonKey(name: 'product_count') final int? productCount,
      @JsonKey(name: 'product_categories')
      final List<ProductCategory>? productCategories,
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
      @JsonKey(name: 'shop_logo')
      final String? shopLogo}) = _$BusinessProfileDataImpl;

  factory _BusinessProfileData.fromJson(Map<String, dynamic> json) =
      _$BusinessProfileDataImpl.fromJson;

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
  List<String>? get phoneNumbers;
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
  List<String>? get location;
  @override
  @JsonKey(name: 'product_count')
  int? get productCount;
  @override
  @JsonKey(name: 'product_categories')
  List<ProductCategory>? get productCategories; // Ek alanlar
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

  /// Create a copy of BusinessProfileData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BusinessProfileDataImplCopyWith<_$BusinessProfileDataImpl> get copyWith =>
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
  List<String>? get phoneNumbers => throw _privateConstructorUsedError;
  @JsonKey(name: 'vip_status')
  bool? get vipStatus => throw _privateConstructorUsedError;
  String? get site => throw _privateConstructorUsedError;
  String? get mail => throw _privateConstructorUsedError;
  @JsonKey(name: 'social_profiles')
  List<SocialProfile>? get socialProfiles => throw _privateConstructorUsedError;
  List<String>? get location => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_count')
  int? get productCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'product_categories')
  List<ProductCategory>? get productCategories =>
      throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  String? get createdAt => throw _privateConstructorUsedError;

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
      @JsonKey(name: 'phone_numbers') List<String>? phoneNumbers,
      @JsonKey(name: 'vip_status') bool? vipStatus,
      String? site,
      String? mail,
      @JsonKey(name: 'social_profiles') List<SocialProfile>? socialProfiles,
      List<String>? location,
      @JsonKey(name: 'product_count') int? productCount,
      @JsonKey(name: 'product_categories')
      List<ProductCategory>? productCategories,
      @JsonKey(name: 'created_at') String? createdAt});
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
    Object? createdAt = freezed,
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
              as List<String>?,
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
              as List<String>?,
      productCount: freezed == productCount
          ? _value.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int?,
      productCategories: freezed == productCategories
          ? _value.productCategories
          : productCategories // ignore: cast_nullable_to_non_nullable
              as List<ProductCategory>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
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
      @JsonKey(name: 'phone_numbers') List<String>? phoneNumbers,
      @JsonKey(name: 'vip_status') bool? vipStatus,
      String? site,
      String? mail,
      @JsonKey(name: 'social_profiles') List<SocialProfile>? socialProfiles,
      List<String>? location,
      @JsonKey(name: 'product_count') int? productCount,
      @JsonKey(name: 'product_categories')
      List<ProductCategory>? productCategories,
      @JsonKey(name: 'created_at') String? createdAt});
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
    Object? createdAt = freezed,
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
          ? _value._phoneNumbers
          : phoneNumbers // ignore: cast_nullable_to_non_nullable
              as List<String>?,
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
              as List<String>?,
      productCount: freezed == productCount
          ? _value.productCount
          : productCount // ignore: cast_nullable_to_non_nullable
              as int?,
      productCategories: freezed == productCategories
          ? _value._productCategories
          : productCategories // ignore: cast_nullable_to_non_nullable
              as List<ProductCategory>?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
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
      @JsonKey(name: 'phone_numbers') final List<String>? phoneNumbers,
      @JsonKey(name: 'vip_status') this.vipStatus,
      this.site,
      this.mail,
      @JsonKey(name: 'social_profiles')
      final List<SocialProfile>? socialProfiles,
      final List<String>? location,
      @JsonKey(name: 'product_count') this.productCount,
      @JsonKey(name: 'product_categories')
      final List<ProductCategory>? productCategories,
      @JsonKey(name: 'created_at') this.createdAt})
      : _phoneNumbers = phoneNumbers,
        _socialProfiles = socialProfiles,
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
  final List<String>? _phoneNumbers;
  @override
  @JsonKey(name: 'phone_numbers')
  List<String>? get phoneNumbers {
    final value = _phoneNumbers;
    if (value == null) return null;
    if (_phoneNumbers is EqualUnmodifiableListView) return _phoneNumbers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

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

  final List<String>? _location;
  @override
  List<String>? get location {
    final value = _location;
    if (value == null) return null;
    if (_location is EqualUnmodifiableListView) return _location;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'product_count')
  final int? productCount;
  final List<ProductCategory>? _productCategories;
  @override
  @JsonKey(name: 'product_categories')
  List<ProductCategory>? get productCategories {
    final value = _productCategories;
    if (value == null) return null;
    if (_productCategories is EqualUnmodifiableListView)
      return _productCategories;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'created_at')
  final String? createdAt;

  @override
  String toString() {
    return 'Shop(id: $id, brand: $brand, logo: $logo, image: $image, description: $description, briefDescription: $briefDescription, views: $views, coverMedia: $coverMedia, phoneNumbers: $phoneNumbers, vipStatus: $vipStatus, site: $site, mail: $mail, socialProfiles: $socialProfiles, location: $location, productCount: $productCount, productCategories: $productCategories, createdAt: $createdAt)';
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
            const DeepCollectionEquality()
                .equals(other._phoneNumbers, _phoneNumbers) &&
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
                .equals(other._productCategories, _productCategories) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
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
      const DeepCollectionEquality().hash(_phoneNumbers),
      vipStatus,
      site,
      mail,
      const DeepCollectionEquality().hash(_socialProfiles),
      const DeepCollectionEquality().hash(_location),
      productCount,
      const DeepCollectionEquality().hash(_productCategories),
      createdAt);

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
      @JsonKey(name: 'phone_numbers') final List<String>? phoneNumbers,
      @JsonKey(name: 'vip_status') final bool? vipStatus,
      final String? site,
      final String? mail,
      @JsonKey(name: 'social_profiles')
      final List<SocialProfile>? socialProfiles,
      final List<String>? location,
      @JsonKey(name: 'product_count') final int? productCount,
      @JsonKey(name: 'product_categories')
      final List<ProductCategory>? productCategories,
      @JsonKey(name: 'created_at') final String? createdAt}) = _$ShopImpl;

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
  List<String>? get phoneNumbers;
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
  List<String>? get location;
  @override
  @JsonKey(name: 'product_count')
  int? get productCount;
  @override
  @JsonKey(name: 'product_categories')
  List<ProductCategory>? get productCategories;
  @override
  @JsonKey(name: 'created_at')
  String? get createdAt;

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

ProductCategory _$ProductCategoryFromJson(Map<String, dynamic> json) {
  return _ProductCategory.fromJson(json);
}

/// @nodoc
mixin _$ProductCategory {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  ProductCategoryParent? get parent => throw _privateConstructorUsedError;
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

  /// Serializes this ProductCategory to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCategoryCopyWith<ProductCategory> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCategoryCopyWith<$Res> {
  factory $ProductCategoryCopyWith(
          ProductCategory value, $Res Function(ProductCategory) then) =
      _$ProductCategoryCopyWithImpl<$Res, ProductCategory>;
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? image,
      ProductCategoryParent? parent,
      String? description,
      @JsonKey(name: 'products_count') int? productsCount,
      String? type,
      @JsonKey(name: 'parent_id') int? parentId,
      String? name,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});

  $ProductCategoryParentCopyWith<$Res>? get parent;
}

/// @nodoc
class _$ProductCategoryCopyWithImpl<$Res, $Val extends ProductCategory>
    implements $ProductCategoryCopyWith<$Res> {
  _$ProductCategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductCategory
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
              as ProductCategoryParent?,
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

  /// Create a copy of ProductCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductCategoryParentCopyWith<$Res>? get parent {
    if (_value.parent == null) {
      return null;
    }

    return $ProductCategoryParentCopyWith<$Res>(_value.parent!, (value) {
      return _then(_value.copyWith(parent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductCategoryImplCopyWith<$Res>
    implements $ProductCategoryCopyWith<$Res> {
  factory _$$ProductCategoryImplCopyWith(_$ProductCategoryImpl value,
          $Res Function(_$ProductCategoryImpl) then) =
      __$$ProductCategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? image,
      ProductCategoryParent? parent,
      String? description,
      @JsonKey(name: 'products_count') int? productsCount,
      String? type,
      @JsonKey(name: 'parent_id') int? parentId,
      String? name,
      @JsonKey(name: 'created_at') String? createdAt,
      @JsonKey(name: 'updated_at') String? updatedAt});

  @override
  $ProductCategoryParentCopyWith<$Res>? get parent;
}

/// @nodoc
class __$$ProductCategoryImplCopyWithImpl<$Res>
    extends _$ProductCategoryCopyWithImpl<$Res, _$ProductCategoryImpl>
    implements _$$ProductCategoryImplCopyWith<$Res> {
  __$$ProductCategoryImplCopyWithImpl(
      _$ProductCategoryImpl _value, $Res Function(_$ProductCategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductCategory
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
    return _then(_$ProductCategoryImpl(
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
              as ProductCategoryParent?,
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
class _$ProductCategoryImpl implements _ProductCategory {
  const _$ProductCategoryImpl(
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

  factory _$ProductCategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductCategoryImplFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? image;
  @override
  final ProductCategoryParent? parent;
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
    return 'ProductCategory(id: $id, title: $title, image: $image, parent: $parent, description: $description, productsCount: $productsCount, type: $type, parentId: $parentId, name: $name, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductCategoryImpl &&
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

  /// Create a copy of ProductCategory
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductCategoryImplCopyWith<_$ProductCategoryImpl> get copyWith =>
      __$$ProductCategoryImplCopyWithImpl<_$ProductCategoryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductCategoryImplToJson(
      this,
    );
  }
}

abstract class _ProductCategory implements ProductCategory {
  const factory _ProductCategory(
          {final int? id,
          final String? title,
          final String? image,
          final ProductCategoryParent? parent,
          final String? description,
          @JsonKey(name: 'products_count') final int? productsCount,
          final String? type,
          @JsonKey(name: 'parent_id') final int? parentId,
          final String? name,
          @JsonKey(name: 'created_at') final String? createdAt,
          @JsonKey(name: 'updated_at') final String? updatedAt}) =
      _$ProductCategoryImpl;

  factory _ProductCategory.fromJson(Map<String, dynamic> json) =
      _$ProductCategoryImpl.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get image;
  @override
  ProductCategoryParent? get parent;
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

  /// Create a copy of ProductCategory
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductCategoryImplCopyWith<_$ProductCategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ProductCategoryParent _$ProductCategoryParentFromJson(
    Map<String, dynamic> json) {
  return _ProductCategoryParent.fromJson(json);
}

/// @nodoc
mixin _$ProductCategoryParent {
  int? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  ProductCategoryParent? get parent => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  /// Serializes this ProductCategoryParent to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ProductCategoryParent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ProductCategoryParentCopyWith<ProductCategoryParent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCategoryParentCopyWith<$Res> {
  factory $ProductCategoryParentCopyWith(ProductCategoryParent value,
          $Res Function(ProductCategoryParent) then) =
      _$ProductCategoryParentCopyWithImpl<$Res, ProductCategoryParent>;
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? image,
      ProductCategoryParent? parent,
      String? description});

  $ProductCategoryParentCopyWith<$Res>? get parent;
}

/// @nodoc
class _$ProductCategoryParentCopyWithImpl<$Res,
        $Val extends ProductCategoryParent>
    implements $ProductCategoryParentCopyWith<$Res> {
  _$ProductCategoryParentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ProductCategoryParent
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
              as ProductCategoryParent?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of ProductCategoryParent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ProductCategoryParentCopyWith<$Res>? get parent {
    if (_value.parent == null) {
      return null;
    }

    return $ProductCategoryParentCopyWith<$Res>(_value.parent!, (value) {
      return _then(_value.copyWith(parent: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ProductCategoryParentImplCopyWith<$Res>
    implements $ProductCategoryParentCopyWith<$Res> {
  factory _$$ProductCategoryParentImplCopyWith(
          _$ProductCategoryParentImpl value,
          $Res Function(_$ProductCategoryParentImpl) then) =
      __$$ProductCategoryParentImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? id,
      String? title,
      String? image,
      ProductCategoryParent? parent,
      String? description});

  @override
  $ProductCategoryParentCopyWith<$Res>? get parent;
}

/// @nodoc
class __$$ProductCategoryParentImplCopyWithImpl<$Res>
    extends _$ProductCategoryParentCopyWithImpl<$Res,
        _$ProductCategoryParentImpl>
    implements _$$ProductCategoryParentImplCopyWith<$Res> {
  __$$ProductCategoryParentImplCopyWithImpl(_$ProductCategoryParentImpl _value,
      $Res Function(_$ProductCategoryParentImpl) _then)
      : super(_value, _then);

  /// Create a copy of ProductCategoryParent
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
    return _then(_$ProductCategoryParentImpl(
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
              as ProductCategoryParent?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ProductCategoryParentImpl implements _ProductCategoryParent {
  const _$ProductCategoryParentImpl(
      {this.id, this.title, this.image, this.parent, this.description});

  factory _$ProductCategoryParentImpl.fromJson(Map<String, dynamic> json) =>
      _$$ProductCategoryParentImplFromJson(json);

  @override
  final int? id;
  @override
  final String? title;
  @override
  final String? image;
  @override
  final ProductCategoryParent? parent;
  @override
  final String? description;

  @override
  String toString() {
    return 'ProductCategoryParent(id: $id, title: $title, image: $image, parent: $parent, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProductCategoryParentImpl &&
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

  /// Create a copy of ProductCategoryParent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ProductCategoryParentImplCopyWith<_$ProductCategoryParentImpl>
      get copyWith => __$$ProductCategoryParentImplCopyWithImpl<
          _$ProductCategoryParentImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ProductCategoryParentImplToJson(
      this,
    );
  }
}

abstract class _ProductCategoryParent implements ProductCategoryParent {
  const factory _ProductCategoryParent(
      {final int? id,
      final String? title,
      final String? image,
      final ProductCategoryParent? parent,
      final String? description}) = _$ProductCategoryParentImpl;

  factory _ProductCategoryParent.fromJson(Map<String, dynamic> json) =
      _$ProductCategoryParentImpl.fromJson;

  @override
  int? get id;
  @override
  String? get title;
  @override
  String? get image;
  @override
  ProductCategoryParent? get parent;
  @override
  String? get description;

  /// Create a copy of ProductCategoryParent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ProductCategoryParentImplCopyWith<_$ProductCategoryParentImpl>
      get copyWith => throw _privateConstructorUsedError;
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
