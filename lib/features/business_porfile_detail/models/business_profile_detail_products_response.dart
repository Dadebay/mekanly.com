import 'package:freezed_annotation/freezed_annotation.dart';

part 'business_profile_detail_products_response.freezed.dart';
part 'business_profile_detail_products_response.g.dart';

@freezed
class BusinessProfileDetailProductsResponse with _$BusinessProfileDetailProductsResponse {
  const factory BusinessProfileDetailProductsResponse({
    List<ProductData>? data,
  }) = _BusinessProfileDetailProductsResponse;

  factory BusinessProfileDetailProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$BusinessProfileDetailProductsResponseFromJson(json);
}

@freezed
class ProductData with _$ProductData {
  const factory ProductData({
    int? id,
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
    String? reason,
  }) = _ProductData;

  factory ProductData.fromJson(Map<String, dynamic> json) =>
      _$ProductDataFromJson(json);
}

@freezed
class ProductImage with _$ProductImage {
  const factory ProductImage({
    int? id,
    @JsonKey(name: 'product_id') int? productId,
    String? path,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _ProductImage;

  factory ProductImage.fromJson(Map<String, dynamic> json) =>
      _$ProductImageFromJson(json);
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
    @JsonKey(name: 'phone_numbers') String? phoneNumbers,
    @JsonKey(name: 'vip_status') bool? vipStatus,
    String? site,
    String? mail,
    @JsonKey(name: 'social_profiles') List<SocialProfile>? socialProfiles,
    List<dynamic>? location,
    @JsonKey(name: 'product_count') int? productCount,
    @JsonKey(name: 'product_categories') List<BusinessProfileDetailProductCategory>? productCategories,
  }) = _Shop;

  factory Shop.fromJson(Map<String, dynamic> json) =>
      _$ShopFromJson(json);
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
class BusinessProfileDetailProductCategory with _$BusinessProfileDetailProductCategory {
  const factory BusinessProfileDetailProductCategory({
    int? id,
    String? title,
    String? image,
    BusinessProfileDetailProductCategoryParent? parent,
    String? description,
    @JsonKey(name: 'products_count') int? productsCount,
    String? type,
    @JsonKey(name: 'parent_id') int? parentId,
    String? name,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _BusinessProfileDetailProductCategory;

  factory BusinessProfileDetailProductCategory.fromJson(Map<String, dynamic> json) =>
      _$BusinessProfileDetailProductCategoryFromJson(json);
}

@freezed
class BusinessProfileDetailProductCategoryParent with _$BusinessProfileDetailProductCategoryParent {
  const factory BusinessProfileDetailProductCategoryParent({
    int? id,
    String? title,
    String? image,
    BusinessProfileDetailProductCategoryParent? parent,
    String? description,
  }) = _BusinessProfileDetailProductCategoryParent;

  factory BusinessProfileDetailProductCategoryParent.fromJson(Map<String, dynamic> json) =>
      _$BusinessProfileDetailProductCategoryParentFromJson(json);
}