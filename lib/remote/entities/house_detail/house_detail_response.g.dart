// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'house_detail_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HouseDetailResponseImpl _$$HouseDetailResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$HouseDetailResponseImpl(
      data: json['data'] == null
          ? null
          : HouseData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$HouseDetailResponseImplToJson(
        _$HouseDetailResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$HouseDataImpl _$$HouseDataImplFromJson(Map<String, dynamic> json) =>
    _$HouseDataImpl(
      id: (json['id'] as num?)?.toInt(),
      categoryId: (json['category_id'] as num?)?.toInt(),
      categoryName: json['category_name'] as String?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      username: json['username'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      name: json['name'] as String?,
      description: json['description'] as String?,
      reason: json['reason'] as String?,
      price: json['price'] as String?,
      lowerPrice: json['lower_price'] as String?,
      lowerPercentage: (json['lower_percentage'] as num?)?.toInt(),
      commentCount: (json['comment_count'] as num?)?.toInt(),
      viewed: (json['viewed'] as num?)?.toInt(),
      star: (json['star'] as num?)?.toDouble(),
      bronNumber: json['bron_number'] as String?,
      roomNumber: (json['room_number'] as num?)?.toInt(),
      floorNumber: (json['floor_number'] as num?)?.toInt(),
      status: json['status'] as String?,
      luxe: (json['luxe'] as num?)?.toInt(),
      luxeStatus: json['luxe_status'] as bool?,
      luxeExpire: json['luxe_expire'] == null
          ? null
          : DateTime.parse(json['luxe_expire'] as String),
      vipStatus: json['vip_status'] as bool?,
      vipExpire: json['vip_expire'] == null
          ? null
          : DateTime.parse(json['vip_expire'] as String),
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => HouseImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      possibilities: (json['possibilities'] as List<dynamic>?)
          ?.map((e) => Possibility.fromJson(e as Map<String, dynamic>))
          .toList(),
      comment: (json['comment'] as num?)?.toInt(),
      writeComment: (json['write_comment'] as num?)?.toInt(),
      who: json['who'] as String?,
      area: (json['area'] as num?)?.toInt(),
      exclusive: (json['exclusive'] as num?)?.toInt(),
      hashtag: json['hashtag'] as String?,
      levelNumber: (json['level_number'] as num?)?.toInt(),
      liked: json['liked'] as bool?,
      shop: json['shop'] as String?,
      type: json['type'] as String?,
      propertyType: json['property_type'] == null
          ? null
          : PropertyType.fromJson(
              json['property_type'] as Map<String, dynamic>),
      repairType: json['repair_type'] == null
          ? null
          : RepairType.fromJson(json['repair_type'] as Map<String, dynamic>),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      banner: json['banner'] as String?,
      isOwner: json['is_owner'] as bool?,
      favorited: json['favorited'] as bool?,
    );

Map<String, dynamic> _$$HouseDataImplToJson(_$HouseDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'category_id': instance.categoryId,
      'category_name': instance.categoryName,
      'location': instance.location,
      'username': instance.username,
      'user': instance.user,
      'name': instance.name,
      'description': instance.description,
      'reason': instance.reason,
      'price': instance.price,
      'lower_price': instance.lowerPrice,
      'lower_percentage': instance.lowerPercentage,
      'comment_count': instance.commentCount,
      'viewed': instance.viewed,
      'star': instance.star,
      'bron_number': instance.bronNumber,
      'room_number': instance.roomNumber,
      'floor_number': instance.floorNumber,
      'status': instance.status,
      'luxe': instance.luxe,
      'luxe_status': instance.luxeStatus,
      'luxe_expire': instance.luxeExpire?.toIso8601String(),
      'vip_status': instance.vipStatus,
      'vip_expire': instance.vipExpire?.toIso8601String(),
      'images': instance.images,
      'possibilities': instance.possibilities,
      'comment': instance.comment,
      'write_comment': instance.writeComment,
      'who': instance.who,
      'area': instance.area,
      'exclusive': instance.exclusive,
      'hashtag': instance.hashtag,
      'level_number': instance.levelNumber,
      'liked': instance.liked,
      'shop': instance.shop,
      'type': instance.type,
      'property_type': instance.propertyType,
      'repair_type': instance.repairType,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
      'banner': instance.banner,
      'is_owner': instance.isOwner,
      'favorited': instance.favorited,
    };

_$LocationImpl _$$LocationImplFromJson(Map<String, dynamic> json) =>
    _$LocationImpl(
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

Map<String, dynamic> _$$LocationImplToJson(_$LocationImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parent_id': instance.parentId,
      'name': instance.name,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'parent_name': instance.parentName,
    };

_$UserImpl _$$UserImplFromJson(Map<String, dynamic> json) => _$UserImpl(
      id: (json['id'] as num?)?.toInt(),
      username: json['username'] as String?,
    );

Map<String, dynamic> _$$UserImplToJson(_$UserImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
    };

_$HouseImageImpl _$$HouseImageImplFromJson(Map<String, dynamic> json) =>
    _$HouseImageImpl(
      url: json['url'] as String?,
      original: json['original'] as String?,
      thumbnail: json['thumbnail'] as String?,
      watermark: json['watermark'] as String?,
    );

Map<String, dynamic> _$$HouseImageImplToJson(_$HouseImageImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'original': instance.original,
      'thumbnail': instance.thumbnail,
      'watermark': instance.watermark,
    };

_$PossibilityImpl _$$PossibilityImplFromJson(Map<String, dynamic> json) =>
    _$PossibilityImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$PossibilityImplToJson(_$PossibilityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
