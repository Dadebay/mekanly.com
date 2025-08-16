// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_houses_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserHousesResponseImpl _$$UserHousesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UserHousesResponseImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => UserHouse.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$UserHousesResponseImplToJson(
        _$UserHousesResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$UserHouseImpl _$$UserHouseImplFromJson(Map<String, dynamic> json) =>
    _$UserHouseImpl(
      id: (json['id'] as num?)?.toInt(),
      categoryName: json['category_name'] as String?,
      location: json['location'] == null
          ? null
          : UserHouseLocation.fromJson(
              json['location'] as Map<String, dynamic>),
      userId: (json['user_id'] as num?)?.toInt(),
      username: json['username'] as String?,
      userPhone: json['user_phone'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      price: json['price'] as String?,
      viewed: (json['viewed'] as num?)?.toInt(),
      star: (json['star'] as num?)?.toDouble(),
      commentCount: (json['comment_count'] as num?)?.toInt(),
      roomNumber: (json['room_number'] as num?)?.toInt(),
      floorNumber: (json['floor_number'] as num?)?.toInt(),
      propertyType: json['property_type'] == null
          ? null
          : UserHousePropertyType.fromJson(
              json['property_type'] as Map<String, dynamic>),
      repairType: json['repair_type'] == null
          ? null
          : UserHouseRepairType.fromJson(
              json['repair_type'] as Map<String, dynamic>),
      status: json['status'] as String?,
      luxe: json['luxe'] as bool?,
      luxeStatus: json['luxe_status'] as bool?,
      luxeExpire: json['luxe_expire'] as String?,
      vipStatus: json['vip_status'] as bool?,
      vipExpire: json['vip_expire'] as String?,
      bronNumber: json['bron_number'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => UserHouseImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      possibilities: (json['possibilities'] as List<dynamic>?)
          ?.map((e) => UserHousePossibility.fromJson(e as Map<String, dynamic>))
          .toList(),
      comment: (json['comment'] as num?)?.toInt(),
      isComment: json['is_comment'] as bool?,
      who: json['who'] as String?,
      area: (json['area'] as num?)?.toDouble(),
      exclusisive: (json['exclusisive'] as num?)?.toInt(),
      hashtag: json['hashtag'] as String?,
      levelNumber: (json['level_number'] as num?)?.toInt(),
      favorited: json['favorited'] as bool?,
      liked: json['liked'] as bool?,
      shop: json['shop'] as String?,
      type: json['type'] as String?,
      date: json['date'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$UserHouseImplToJson(_$UserHouseImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category_name': instance.categoryName,
      'location': instance.location,
      'user_id': instance.userId,
      'username': instance.username,
      'user_phone': instance.userPhone,
      'name': instance.name,
      'description': instance.description,
      'price': instance.price,
      'viewed': instance.viewed,
      'star': instance.star,
      'comment_count': instance.commentCount,
      'room_number': instance.roomNumber,
      'floor_number': instance.floorNumber,
      'property_type': instance.propertyType,
      'repair_type': instance.repairType,
      'status': instance.status,
      'luxe': instance.luxe,
      'luxe_status': instance.luxeStatus,
      'luxe_expire': instance.luxeExpire,
      'vip_status': instance.vipStatus,
      'vip_expire': instance.vipExpire,
      'bron_number': instance.bronNumber,
      'images': instance.images,
      'possibilities': instance.possibilities,
      'comment': instance.comment,
      'is_comment': instance.isComment,
      'who': instance.who,
      'area': instance.area,
      'exclusisive': instance.exclusisive,
      'hashtag': instance.hashtag,
      'level_number': instance.levelNumber,
      'favorited': instance.favorited,
      'liked': instance.liked,
      'shop': instance.shop,
      'type': instance.type,
      'date': instance.date,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
    };

_$UserHouseLocationImpl _$$UserHouseLocationImplFromJson(
        Map<String, dynamic> json) =>
    _$UserHouseLocationImpl(
      id: (json['id'] as num?)?.toInt(),
      parentId: (json['parent_id'] as num?)?.toInt(),
      name: json['name'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      parentName: json['parent_name'] as String?,
    );

Map<String, dynamic> _$$UserHouseLocationImplToJson(
        _$UserHouseLocationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parent_id': instance.parentId,
      'name': instance.name,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'parent_name': instance.parentName,
    };

_$UserHousePropertyTypeImpl _$$UserHousePropertyTypeImplFromJson(
        Map<String, dynamic> json) =>
    _$UserHousePropertyTypeImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$$UserHousePropertyTypeImplToJson(
        _$UserHousePropertyTypeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
    };

_$UserHouseRepairTypeImpl _$$UserHouseRepairTypeImplFromJson(
        Map<String, dynamic> json) =>
    _$UserHouseRepairTypeImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$$UserHouseRepairTypeImplToJson(
        _$UserHouseRepairTypeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
    };

_$UserHouseImageImpl _$$UserHouseImageImplFromJson(Map<String, dynamic> json) =>
    _$UserHouseImageImpl(
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$UserHouseImageImplToJson(
        _$UserHouseImageImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
    };

_$UserHousePossibilityImpl _$$UserHousePossibilityImplFromJson(
        Map<String, dynamic> json) =>
    _$UserHousePossibilityImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$UserHousePossibilityImplToJson(
        _$UserHousePossibilityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
