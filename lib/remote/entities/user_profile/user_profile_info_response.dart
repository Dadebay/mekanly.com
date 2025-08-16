import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profile_info_response.freezed.dart';
part 'user_profile_info_response.g.dart';

@freezed
class UserProfileInfoResponse with _$UserProfileInfoResponse {
  const factory UserProfileInfoResponse({
    UserData? data,
  }) = _UserProfileInfoResponse;

  factory UserProfileInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$UserProfileInfoResponseFromJson(json);
}

@freezed
class UserData with _$UserData {
  const factory UserData({
    int? id,
    String? username,
    String? email,
    String? phone,
    String? role,
    String? status,
    String? about,
    int? views,
    List<Shop>? shops,
    @JsonKey(name: 'product_categories')
    List<UserProductCategory>? productCategories,
    @JsonKey(name: 'social_profiles') List<SocialProfile>? socialProfiles,
    @JsonKey(name: 'vip_expire') DateTime? vipExpire,
    @JsonKey(name: 'vip_day') int? vipDay,
    @JsonKey(name: 'device_info') String? deviceInfo,
    @JsonKey(name: 'device_token') String? deviceToken,
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
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
    @JsonKey(name: 'is_vip') int? isVip,
    @JsonKey(name: 'vip_days') int? vipDays,
    String? site,
    String? mail,
    @JsonKey(name: 'social_profiles') List<SocialProfile>? socialProfiles,
    Location? location,
    @JsonKey(name: 'product_count') int? productCount,
    @JsonKey(name: 'product_categories')
    List<ProductCategory>? productCategories,
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
class UserProductCategory with _$UserProductCategory {
  const factory UserProductCategory({
    int? id,
    String? title,
    @JsonKey(name: 'products_count') int? productCount,
    String? type,
  }) = _UserProductCategory;

  factory UserProductCategory.fromJson(Map<String, dynamic> json) =>
      _$UserProductCategoryFromJson(json);
}

@freezed
class Location with _$Location {
  const factory Location({
    int? id,
    @JsonKey(name: 'parent_id') int? parentId,
    String? name,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'parent_name') String? parentName,
  }) = _Location;

  factory Location.fromJson(Map<String, dynamic> json) =>
      _$LocationFromJson(json);
}

@freezed
class ProductCategory with _$ProductCategory {
  const factory ProductCategory({
    int? id,
    String? title,
    String? image,
    CategoryParent? parent,
    String? description,
    @JsonKey(name: 'products_count') int? productsCount,
  }) = _ProductCategory;

  factory ProductCategory.fromJson(Map<String, dynamic> json) =>
      _$ProductCategoryFromJson(json);
}

@freezed
class CategoryParent with _$CategoryParent {
  const factory CategoryParent({
    int? id,
    String? title,
    String? image,
    CategoryParent? parent,
    String? description,
  }) = _CategoryParent;

  factory CategoryParent.fromJson(Map<String, dynamic> json) =>
      _$CategoryParentFromJson(json);
}
