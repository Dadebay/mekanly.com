import 'package:freezed_annotation/freezed_annotation.dart';

part 'liked_house_response.freezed.dart';
part 'liked_house_response.g.dart';

@freezed
class LikedHouseResponse with _$LikedHouseResponse {
  const factory LikedHouseResponse({
    List<LikedHouse>? data,
  }) = _LikedHouseResponse;

  factory LikedHouseResponse.fromJson(Map<String, dynamic> json) =>
      _$LikedHouseResponseFromJson(json);
}

@freezed
class LikedHouse with _$LikedHouse {
  const factory LikedHouse({
    @JsonKey(name: 'house_id') int? houseId,
    @JsonKey(name: 'user_id') int? userId,
    @JsonKey(name: 'user_name') String? userName,
    @JsonKey(name: 'user_phone') String? userPhone,
    @JsonKey(name: 'category_id') int? categoryId,
    @JsonKey(name: 'category_name') String? categoryName,
    @JsonKey(name: 'location_parent_id') int? locationParentId,
    @JsonKey(name: 'location_parent_name') String? locationParentName,
    @JsonKey(name: 'location_id') int? locationId,
    @JsonKey(name: 'location_name') String? locationName,
    String? name,
    String? description,
    String? price,
    dynamic star, // Using dynamic for null value
    String? status,
    int? luxe,
    @JsonKey(name: 'bron_number') String? bronNumber,
    List<HouseImage>? images,
    List<HousePossibility>? possibilities,
    dynamic comment, // Using dynamic for null value
    dynamic isComment, // Using dynamic for null value
    @JsonKey(name: 'is_comment') dynamic who, // Using dynamic for null value
    dynamic area, // Using dynamic for null value
    dynamic exclusive, // Using dynamic for null value
    dynamic hashtag, // Using dynamic for null value
    @JsonKey(name: 'level_number')
    dynamic levelNumber, // Using dynamic for null value
    dynamic reason, // Using dynamic for null value
    int? viewed,
    @JsonKey(name: 'room_number') int? roomNumber,
    @JsonKey(name: 'floor_number') int? floorNumber,
    @JsonKey(name: 'guest_number') int? guestNumber,
  }) = _LikedHouse;

  factory LikedHouse.fromJson(Map<String, dynamic> json) =>
      _$LikedHouseFromJson(json);
}

@freezed
class HouseImage with _$HouseImage {
  const factory HouseImage({
    int? id,
    @JsonKey(name: 'house_id') int? houseId,
    String? url,
    @JsonKey(name: 'created_at', fromJson: _dateTimeFromString)
    DateTime? createdAt,
    @JsonKey(name: 'updated_at', fromJson: _dateTimeFromString)
    DateTime? updatedAt,
  }) = _HouseImage;

  factory HouseImage.fromJson(Map<String, dynamic> json) =>
      _$HouseImageFromJson(json);
}

@freezed
class HousePossibility with _$HousePossibility {
  const factory HousePossibility({
    int? id,
    String? name,
    @JsonKey(name: 'created_at', fromJson: _dateTimeFromString)
    DateTime? createdAt,
    @JsonKey(name: 'updated_at', fromJson: _dateTimeFromString)
    DateTime? updatedAt,
    PossibilityPivot? pivot,
  }) = _HousePossibility;

  factory HousePossibility.fromJson(Map<String, dynamic> json) =>
      _$HousePossibilityFromJson(json);
}

@freezed
class PossibilityPivot with _$PossibilityPivot {
  const factory PossibilityPivot({
    @JsonKey(name: 'house_id') int? houseId,
    @JsonKey(name: 'possibility_id') int? possibilityId,
  }) = _PossibilityPivot;

  factory PossibilityPivot.fromJson(Map<String, dynamic> json) =>
      _$PossibilityPivotFromJson(json);
}

// Helper function to convert string to DateTime
DateTime? _dateTimeFromString(String? dateString) {
  if (dateString == null) return null;
  return DateTime.parse(dateString);
}
