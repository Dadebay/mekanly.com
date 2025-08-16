// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'house_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HouseEntityImpl _$$HouseEntityImplFromJson(Map<String, dynamic> json) =>
    _$HouseEntityImpl(
      id: (json['id'] as num?)?.toInt(),
      categoryName: json['category_name'] as String?,
      location: json['location'] == null
          ? null
          : LocationEntity.fromJson(json['location'] as Map<String, dynamic>),
      userId: (json['user_id'] as num?)?.toInt(),
      username: json['username'] as String?,
      userPhone: json['user_phone'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      price: json['price'] as String?,
      loverPercentage: _stringToInt(json['lover_percentage']),
      loverPrice: _stringToInt(json['lover_price']),
      viewed: (json['viewed'] as num?)?.toInt(),
      star: json['star'] as String?,
      commentCount: (json['comment_count'] as num?)?.toInt(),
      roomNumber: (json['room_number'] as num?)?.toInt(),
      floorNumber: (json['floor_number'] as num?)?.toInt(),
      propertyType: json['property_type'] == null
          ? null
          : PropertyTypeEntity.fromJson(
              json['property_type'] as Map<String, dynamic>),
      repairType: json['repair_type'] == null
          ? null
          : RepairTypeEntity.fromJson(
              json['repair_type'] as Map<String, dynamic>),
      status: json['status'] as String?,
      luxe: json['luxe'] as bool?,
      luxeStatus: json['luxe_status'] as bool?,
      luxeExpire: json['luxe_expire'] as String?,
      vipStatus: json['vip_status'] as bool?,
      vipExpire: json['vip_expire'] as String?,
      bronNumber: json['bron_number'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ImageEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      possibilities: (json['possibilities'] as List<dynamic>?)
          ?.map((e) => PossibilityEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
      comment: (json['comment'] as num?)?.toInt(),
      isComment: json['is_comment'] as String?,
      writeComment: json['write_comment'] as String?,
      who: json['who'] as String?,
      area: (json['area'] as num?)?.toInt(),
      exclusisive: (json['exclusisive'] as num?)?.toInt(),
      exclusive: (json['exclusive'] as num?)?.toInt(),
      hashtag: json['hashtag'] as String?,
      levelNumber: (json['level_number'] as num?)?.toInt(),
      favorited: json['favorited'] as bool?,
      liked: json['liked'] as bool?,
      shop: json['shop'] == null
          ? null
          : ShopEntity.fromJson(json['shop'] as Map<String, dynamic>),
      type: json['type'] as String?,
      date: json['date'] as String?,
      updatedAt: json['updated_at'] as String?,
      createdAt: json['created_at'] as String?,
      contacted: json['contacted'] as bool?,
      hasSeen: json['has_seen'] as bool?,
      contact: json['contact'] as bool?,
      isOwner: json['is_owner'] as bool?,
    );

Map<String, dynamic> _$$HouseEntityImplToJson(_$HouseEntityImpl instance) =>
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
      'lover_percentage': instance.loverPercentage,
      'lover_price': instance.loverPrice,
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
      'write_comment': instance.writeComment,
      'who': instance.who,
      'area': instance.area,
      'exclusisive': instance.exclusisive,
      'exclusive': instance.exclusive,
      'hashtag': instance.hashtag,
      'level_number': instance.levelNumber,
      'favorited': instance.favorited,
      'liked': instance.liked,
      'shop': instance.shop,
      'type': instance.type,
      'date': instance.date,
      'updated_at': instance.updatedAt,
      'created_at': instance.createdAt,
      'contacted': instance.contacted,
      'has_seen': instance.hasSeen,
      'contact': instance.contact,
      'is_owner': instance.isOwner,
    };

_$LocationEntityImpl _$$LocationEntityImplFromJson(Map<String, dynamic> json) =>
    _$LocationEntityImpl(
      id: (json['id'] as num?)?.toInt(),
      parentId: (json['parent_id'] as num?)?.toInt(),
      name: json['name'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
      parentName: json['parent_name'] as String?,
    );

Map<String, dynamic> _$$LocationEntityImplToJson(
        _$LocationEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'parent_id': instance.parentId,
      'name': instance.name,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'parent_name': instance.parentName,
    };

_$PropertyTypeEntityImpl _$$PropertyTypeEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$PropertyTypeEntityImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$$PropertyTypeEntityImplToJson(
        _$PropertyTypeEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
    };

_$RepairTypeEntityImpl _$$RepairTypeEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$RepairTypeEntityImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      icon: json['icon'] as String?,
    );

Map<String, dynamic> _$$RepairTypeEntityImplToJson(
        _$RepairTypeEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'icon': instance.icon,
    };

_$ImageEntityImpl _$$ImageEntityImplFromJson(Map<String, dynamic> json) =>
    _$ImageEntityImpl(
      url: json['url'] as String?,
      original: json['original'] as String?,
      thumbnail: json['thumbnail'] as String?,
      watermark: json['watermark'] as String?,
    );

Map<String, dynamic> _$$ImageEntityImplToJson(_$ImageEntityImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'original': instance.original,
      'thumbnail': instance.thumbnail,
      'watermark': instance.watermark,
    };

_$ShopEntityImpl _$$ShopEntityImplFromJson(Map<String, dynamic> json) =>
    _$ShopEntityImpl(
      id: (json['id'] as num?)?.toInt(),
      brand: json['brand'] as String?,
      logo: json['logo'] as String?,
      image: json['image'] as String?,
      status: json['status'] as String?,
      description: json['description'] as String?,
      briefDescription: json['brief_description'] as String?,
      locationId: (json['location_id'] as num?)?.toInt(),
      expire: json['expire'] as String?,
      views: (json['views'] as num?)?.toInt(),
      coverMedia: json['cover_media'] as String?,
      rating: (json['rating'] as num?)?.toInt(),
      locations: json['locations'] as String?,
      phoneNumbers: json['phone_numbers'] as String?,
      isVip: (json['is_vip'] as num?)?.toInt(),
      vipDays: json['vip_days'] as String?,
      vipExpire: json['vip_expire'] as String?,
      site: json['site'] as String?,
      messengers: json['messengers'] as String?,
      mail: json['mail'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$ShopEntityImplToJson(_$ShopEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'brand': instance.brand,
      'logo': instance.logo,
      'image': instance.image,
      'status': instance.status,
      'description': instance.description,
      'brief_description': instance.briefDescription,
      'location_id': instance.locationId,
      'expire': instance.expire,
      'views': instance.views,
      'cover_media': instance.coverMedia,
      'rating': instance.rating,
      'locations': instance.locations,
      'phone_numbers': instance.phoneNumbers,
      'is_vip': instance.isVip,
      'vip_days': instance.vipDays,
      'vip_expire': instance.vipExpire,
      'site': instance.site,
      'messengers': instance.messengers,
      'mail': instance.mail,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_$PossibilityEntityImpl _$$PossibilityEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$PossibilityEntityImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$PossibilityEntityImplToJson(
        _$PossibilityEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
    };
