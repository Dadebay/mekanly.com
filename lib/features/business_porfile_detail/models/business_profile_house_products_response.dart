import 'package:freezed_annotation/freezed_annotation.dart';

part 'business_profile_house_products_response.freezed.dart';
part 'business_profile_house_products_response.g.dart';

@freezed
class BusinessProfileHouseProductsResponse with _$BusinessProfileHouseProductsResponse {
  const factory BusinessProfileHouseProductsResponse({
    List<HouseProduct>? data,
  }) = _BusinessProfileHouseProductsResponse;

  factory BusinessProfileHouseProductsResponse.fromJson(Map<String, dynamic> json) =>
      _$BusinessProfileHouseProductsResponseFromJson(json);
}

@freezed
class HouseProduct with _$HouseProduct {
  const factory HouseProduct({
    int? id,
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
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _HouseProduct;

  factory HouseProduct.fromJson(Map<String, dynamic> json) =>
      _$HouseProductFromJson(json);
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
class ProductImage with _$ProductImage {
  const factory ProductImage({
    String? url,
  }) = _ProductImage;

  factory ProductImage.fromJson(Map<String, dynamic> json) =>
      _$ProductImageFromJson(json);
}

@freezed
class Possibility with _$Possibility {
  const factory Possibility({
    int? id,
    String? name,
  }) = _Possibility;

  factory Possibility.fromJson(Map<String, dynamic> json) =>
      _$PossibilityFromJson(json);
}

@freezed
class Shop with _$Shop {
  const factory Shop({
    int? id,
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
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _Shop;

  factory Shop.fromJson(Map<String, dynamic> json) => _$ShopFromJson(json);
}