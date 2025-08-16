import 'package:freezed_annotation/freezed_annotation.dart';

part 'business_profile_detail_response.freezed.dart';
part 'business_profile_detail_response.g.dart';

@freezed
class BusinessProfileDetailResponse with _$BusinessProfileDetailResponse {
  const factory BusinessProfileDetailResponse({
    BusinessProfileData? data,
  }) = _BusinessProfileDetailResponse;

  factory BusinessProfileDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$BusinessProfileDetailResponseFromJson(json);
}

@freezed
class BusinessProfileData with _$BusinessProfileData {
  const factory BusinessProfileData({
    int? id,
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

    // Ek alanlar
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
  }) = _BusinessProfileData;

  factory BusinessProfileData.fromJson(Map<String, dynamic> json) =>
      _$BusinessProfileDataFromJson(json);
}

@freezed
class Shop with _$Shop {
  const factory Shop({
    int? id,
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
    @JsonKey(name: 'created_at') String? createdAt,
  }) = _Shop;

  factory Shop.fromJson(Map<String, dynamic> json) => _$ShopFromJson(json);
}

@freezed
class SocialProfile with _$SocialProfile {
  const factory SocialProfile({
    @JsonKey(name: 'sociable_id') int? sociableId,
    String? platform,
    String? url,
  }) = _SocialProfile;

  factory SocialProfile.fromJson(Map<String, dynamic> json) =>
      _$SocialProfileFromJson(json);
}

@freezed
class ProductCategory with _$ProductCategory {
  const factory ProductCategory({
    int? id,
    String? title,
    String? image,
    ProductCategoryParent? parent,
    String? description,
    @JsonKey(name: 'products_count') int? productsCount,
    String? type,
    @JsonKey(name: 'parent_id') int? parentId,
    String? name,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _ProductCategory;

  factory ProductCategory.fromJson(Map<String, dynamic> json) =>
      _$ProductCategoryFromJson(json);
}

@freezed
class ProductCategoryParent with _$ProductCategoryParent {
  const factory ProductCategoryParent({
    int? id,
    String? title,
    String? image,
    ProductCategoryParent? parent,
    String? description,
  }) = _ProductCategoryParent;

  factory ProductCategoryParent.fromJson(Map<String, dynamic> json) =>
      _$ProductCategoryParentFromJson(json);
}

@freezed
class LocationParent with _$LocationParent {
  const factory LocationParent({
    int? id,
    @JsonKey(name: 'parent_id') int? parentId,
    String? name,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
    @JsonKey(name: 'parent_name') String? parentName,
  }) = _LocationParent;

  factory LocationParent.fromJson(Map<String, dynamic> json) =>
      _$LocationParentFromJson(json);
}

enum ProductCategoryType {
  product,
  house;
}

extension ProductCategoryTypeExt on ProductCategory {
  ProductCategoryType get typeProd => switch (type) {
        'product' => ProductCategoryType.product,
        'house' => ProductCategoryType.house,
        _ => ProductCategoryType.product,
      };
}