// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_profile_house_products_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BusinessProfileHouseProductsResponseImpl
    _$$BusinessProfileHouseProductsResponseImplFromJson(
            Map<String, dynamic> json) =>
        _$BusinessProfileHouseProductsResponseImpl(
          data: (json['data'] as List<dynamic>?)
              ?.map((e) => HouseProduct.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$BusinessProfileHouseProductsResponseImplToJson(
        _$BusinessProfileHouseProductsResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$HouseProductImpl _$$HouseProductImplFromJson(Map<String, dynamic> json) =>
    _$HouseProductImpl(
      id: (json['id'] as num?)?.toInt(),
      categoryName: json['category_name'] as String?,
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      userId: (json['user_id'] as num?)?.toInt(),
      username: json['username'] as String?,
      userPhone: json['user_phone'] as String?,
      name: json['name'] as String?,
      description: json['description'] as String?,
      price: json['price'] as String?,
      loverPercentage: json['lover_percentage'] as String?,
      loverPrice: json['lover_price'] as String?,
      viewed: (json['viewed'] as num?)?.toInt(),
      star: json['star'] as String?,
      commentCount: (json['comment_count'] as num?)?.toInt(),
      roomNumber: (json['room_number'] as num?)?.toInt(),
      floorNumber: (json['floor_number'] as num?)?.toInt(),
      propertyType: json['property_type'] as String?,
      repairType: json['repair_type'] as String?,
      status: json['status'] as String?,
      luxe: json['luxe'] as bool?,
      luxeStatus: json['luxe_status'] as bool?,
      luxeExpire: json['luxe_expire'] as String?,
      vipStatus: json['vip_status'] as bool?,
      vipExpire: json['vip_expire'] as String?,
      bronNumber: json['bron_number'] as String?,
      images: (json['images'] as List<dynamic>?)
          ?.map((e) => ProductImage.fromJson(e as Map<String, dynamic>))
          .toList(),
      possibilities: (json['possibilities'] as List<dynamic>?)
          ?.map((e) => Possibility.fromJson(e as Map<String, dynamic>))
          .toList(),
      comment: (json['comment'] as num?)?.toInt(),
      isComment: json['is_comment'] as String?,
      who: json['who'] as String?,
      area: json['area'] as String?,
      exclusisive: (json['exclusisive'] as num?)?.toInt(),
      hashtag: json['hashtag'] as String?,
      levelNumber: (json['level_number'] as num?)?.toInt(),
      favorited: json['favorited'] as bool?,
      liked: json['liked'] as bool?,
      shop: json['shop'] == null
          ? null
          : Shop.fromJson(json['shop'] as Map<String, dynamic>),
      type: json['type'] as String?,
      date:
          json['date'] == null ? null : DateTime.parse(json['date'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$HouseProductImplToJson(_$HouseProductImpl instance) =>
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
      'who': instance.who,
      'area': instance.area,
      'exclusisive': instance.exclusisive,
      'hashtag': instance.hashtag,
      'level_number': instance.levelNumber,
      'favorited': instance.favorited,
      'liked': instance.liked,
      'shop': instance.shop,
      'type': instance.type,
      'date': instance.date?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'created_at': instance.createdAt?.toIso8601String(),
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

_$ProductImageImpl _$$ProductImageImplFromJson(Map<String, dynamic> json) =>
    _$ProductImageImpl(
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$ProductImageImplToJson(_$ProductImageImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
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

_$ShopImpl _$$ShopImplFromJson(Map<String, dynamic> json) => _$ShopImpl(
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
      vipDays: (json['vip_days'] as num?)?.toInt(),
      vipExpire: json['vip_expire'] as String?,
      site: json['site'] as String?,
      messengers: json['messengers'] as String?,
      mail: json['mail'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$ShopImplToJson(_$ShopImpl instance) =>
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
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
