// user_houses_response.dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_houses_response.freezed.dart';
part 'user_houses_response.g.dart';

@freezed
class UserHousesResponse with _$UserHousesResponse {
  const factory UserHousesResponse({
    List<UserHouse>? data,
  }) = _UserHousesResponse;

  factory UserHousesResponse.fromJson(Map<String, dynamic> json) =>
      _$UserHousesResponseFromJson(json);
}

@freezed
class UserHouse with _$UserHouse {
  const factory UserHouse({
    int? id,
    @JsonKey(name: 'category_name') String? categoryName,
    UserHouseLocation? location,
    @JsonKey(name: 'user_id') int? userId,
    String? username,
    @JsonKey(name: 'user_phone') String? userPhone,
    String? name,
    String? description,
    String? price,
    int? viewed,
    double? star,
    @JsonKey(name: 'comment_count') int? commentCount,
    @JsonKey(name: 'room_number') int? roomNumber,
    @JsonKey(name: 'floor_number') int? floorNumber,
    @JsonKey(name: 'property_type') UserHousePropertyType? propertyType,
    @JsonKey(name: 'repair_type') UserHouseRepairType? repairType,
    String? status,
    bool? luxe,
    @JsonKey(name: 'luxe_status') bool? luxeStatus,
    @JsonKey(name: 'luxe_expire') String? luxeExpire,
    @JsonKey(name: 'vip_status') bool? vipStatus,
    @JsonKey(name: 'vip_expire') String? vipExpire,
    @JsonKey(name: 'bron_number') String? bronNumber,
    List<UserHouseImage>? images,
    List<UserHousePossibility>? possibilities,
    int? comment,
    @JsonKey(name: 'is_comment') bool? isComment,
    String? who,
    double? area,
    int? exclusisive,
    String? hashtag,
    @JsonKey(name: 'level_number') int? levelNumber,
    bool? favorited,
    bool? liked,
    String? shop,
    String? type,
    String? date,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _UserHouse;

  factory UserHouse.fromJson(Map<String, dynamic> json) =>
      _$UserHouseFromJson(json);
}

@freezed
class UserHouseLocation with _$UserHouseLocation {
  const factory UserHouseLocation({
    int? id,
    @JsonKey(name: 'parent_id') int? parentId,
    String? name,
    @JsonKey(name: 'created_at') DateTime? createdAt,
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
    @JsonKey(name: 'parent_name') String? parentName,
  }) = _UserHouseLocation;

  factory UserHouseLocation.fromJson(Map<String, dynamic> json) =>
      _$UserHouseLocationFromJson(json);
}

@freezed
class UserHousePropertyType with _$UserHousePropertyType {
  const factory UserHousePropertyType({
    int? id,
    String? name,
    String? icon,
  }) = _UserHousePropertyType;

  factory UserHousePropertyType.fromJson(Map<String, dynamic> json) =>
      _$UserHousePropertyTypeFromJson(json);
}

@freezed
class UserHouseRepairType with _$UserHouseRepairType {
  const factory UserHouseRepairType({
    int? id,
    String? name,
    String? icon,
  }) = _UserHouseRepairType;

  factory UserHouseRepairType.fromJson(Map<String, dynamic> json) =>
      _$UserHouseRepairTypeFromJson(json);
}

@freezed
class UserHouseImage with _$UserHouseImage {
  const factory UserHouseImage({
    String? url,
  }) = _UserHouseImage;

  factory UserHouseImage.fromJson(Map<String, dynamic> json) =>
      _$UserHouseImageFromJson(json);
}

@freezed
class UserHousePossibility with _$UserHousePossibility {
  const factory UserHousePossibility({
    int? id,
    String? name,
  }) = _UserHousePossibility;

  factory UserHousePossibility.fromJson(Map<String, dynamic> json) =>
      _$UserHousePossibilityFromJson(json);
}
