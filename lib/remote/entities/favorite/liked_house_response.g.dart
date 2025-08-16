// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'liked_house_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LikedHouseResponseImpl _$$LikedHouseResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$LikedHouseResponseImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => LikedHouse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$LikedHouseResponseImplToJson(
        _$LikedHouseResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$LikedHouseImpl _$$LikedHouseImplFromJson(Map<String, dynamic> json) =>
    _$LikedHouseImpl(
      houseId: (json['house_id'] as num?)?.toInt(),
      userId: (json['user_id'] as num?)?.toInt(),
      userName: json['user_name'] as String?,
      userPhone: json['user_phone'] as String?,
      categoryId: (json['category_id'] as num?)?.toInt(),
      categoryName: json['category_name'] as String?,
      locationParentId: (json['location_parent_id'] as num?)?.toInt(),
      locationParentName: json['location_parent_name'] as String?,
      locationId: (json['location_id'] as num?)?.toInt(),
      locationName: json['location_name'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      price: json['price'] as String?,
      star: json['star'],
      status: json['status'] as String?,
      luxe: (json['luxe'] as num?)?.toInt(),
      bronNumber: json['bron_number'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => HouseImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      possibilities: (json['possibilities'] as List<dynamic>?)
          ?.map((e) => HousePossibility.fromJson(e as Map<String, dynamic>))
          .toList(),
      comment: json['comment'],
      isComment: json['isComment'],
      who: json['is_comment'],
      area: json['area'],
      exclusive: json['exclusive'],
      hashtag: json['hashtag'],
      levelNumber: json['level_number'],
      reason: json['reason'],
      viewed: (json['viewed'] as num?)?.toInt(),
      roomNumber: (json['room_number'] as num?)?.toInt(),
      floorNumber: (json['floor_number'] as num?)?.toInt(),
      guestNumber: (json['guest_number'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$LikedHouseImplToJson(_$LikedHouseImpl instance) =>
    <String, dynamic>{
      'house_id': instance.houseId,
      'user_id': instance.userId,
      'user_name': instance.userName,
      'user_phone': instance.userPhone,
      'category_id': instance.categoryId,
      'category_name': instance.categoryName,
      'location_parent_id': instance.locationParentId,
      'location_parent_name': instance.locationParentName,
      'location_id': instance.locationId,
      'location_name': instance.locationName,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'star': instance.star,
      'status': instance.status,
      'luxe': instance.luxe,
      'bron_number': instance.bronNumber,
      'images': instance.images,
      'possibilities': instance.possibilities,
      'comment': instance.comment,
      'isComment': instance.isComment,
      'is_comment': instance.who,
      'area': instance.area,
      'exclusive': instance.exclusive,
      'hashtag': instance.hashtag,
      'level_number': instance.levelNumber,
      'reason': instance.reason,
      'viewed': instance.viewed,
      'room_number': instance.roomNumber,
      'floor_number': instance.floorNumber,
      'guest_number': instance.guestNumber,
    };

_$HouseImageImpl _$$HouseImageImplFromJson(Map<String, dynamic> json) =>
    _$HouseImageImpl(
      id: (json['id'] as num?)?.toInt(),
      houseId: (json['house_id'] as num?)?.toInt(),
      url: json['url'] as String?,
      createdAt: _dateTimeFromString(json['created_at'] as String?),
      updatedAt: _dateTimeFromString(json['updated_at'] as String?),
    );

Map<String, dynamic> _$$HouseImageImplToJson(_$HouseImageImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'house_id': instance.houseId,
      'url': instance.url,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };

_$HousePossibilityImpl _$$HousePossibilityImplFromJson(
        Map<String, dynamic> json) =>
    _$HousePossibilityImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      createdAt: _dateTimeFromString(json['created_at'] as String?),
      updatedAt: _dateTimeFromString(json['updated_at'] as String?),
      pivot: json['pivot'] == null
          ? null
          : PossibilityPivot.fromJson(json['pivot'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HousePossibilityImplToJson(
        _$HousePossibilityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'pivot': instance.pivot,
    };

_$PossibilityPivotImpl _$$PossibilityPivotImplFromJson(
        Map<String, dynamic> json) =>
    _$PossibilityPivotImpl(
      houseId: (json['house_id'] as num?)?.toInt(),
      possibilityId: (json['possibility_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$PossibilityPivotImplToJson(
        _$PossibilityPivotImpl instance) =>
    <String, dynamic>{
      'house_id': instance.houseId,
      'possibility_id': instance.possibilityId,
    };
