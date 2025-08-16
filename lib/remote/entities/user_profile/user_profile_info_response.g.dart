// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profile_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserProfileInfoResponseImpl _$$UserProfileInfoResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$UserProfileInfoResponseImpl(
      data: json['data'] == null
          ? null
          : UserData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$UserProfileInfoResponseImplToJson(
        _$UserProfileInfoResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

_$UserDataImpl _$$UserDataImplFromJson(Map<String, dynamic> json) =>
    _$UserDataImpl(
      id: (json['id'] as num?)?.toInt(),
      username: json['username'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      role: json['role'] as String?,
      status: json['status'] as String?,
      about: json['about'] as String?,
      views: (json['views'] as num?)?.toInt(),
      shops: (json['shops'] as List<dynamic>?)
          ?.map((e) => Shop.fromJson(e as Map<String, dynamic>))
          .toList(),
      productCategories: (json['product_categories'] as List<dynamic>?)
          ?.map((e) => UserProductCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
      socialProfiles: (json['social_profiles'] as List<dynamic>?)
          ?.map((e) => SocialProfile.fromJson(e as Map<String, dynamic>))
          .toList(),
      vipExpire: json['vip_expire'] == null
          ? null
          : DateTime.parse(json['vip_expire'] as String),
      vipDay: (json['vip_day'] as num?)?.toInt(),
      deviceInfo: json['device_info'] as String?,
      deviceToken: json['device_token'] as String?,
    );

Map<String, dynamic> _$$UserDataImplToJson(_$UserDataImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'phone': instance.phone,
      'role': instance.role,
      'status': instance.status,
      'about': instance.about,
      'views': instance.views,
      'shops': instance.shops,
      'product_categories': instance.productCategories,
      'social_profiles': instance.socialProfiles,
      'vip_expire': instance.vipExpire?.toIso8601String(),
      'vip_day': instance.vipDay,
      'device_info': instance.deviceInfo,
      'device_token': instance.deviceToken,
    };

_$ShopImpl _$$ShopImplFromJson(Map<String, dynamic> json) => _$ShopImpl(
      id: (json['id'] as num?)?.toInt(),
      brand: json['brand'] as String?,
      logo: json['logo'] as String?,
      image: json['image'] as String?,
      description: json['description'] as String?,
      briefDescription: json['brief_description'] as String?,
      views: (json['views'] as num?)?.toInt(),
      coverMedia: json['cover_media'] as String?,
      phoneNumbers: json['phone_numbers'] as String?,
      isVip: (json['is_vip'] as num?)?.toInt(),
      vipDays: (json['vip_days'] as num?)?.toInt(),
      site: json['site'] as String?,
      mail: json['mail'] as String?,
      socialProfiles: (json['social_profiles'] as List<dynamic>?)
          ?.map((e) => SocialProfile.fromJson(e as Map<String, dynamic>))
          .toList(),
      location: json['location'] == null
          ? null
          : Location.fromJson(json['location'] as Map<String, dynamic>),
      productCount: (json['product_count'] as num?)?.toInt(),
      productCategories: (json['product_categories'] as List<dynamic>?)
          ?.map((e) => ProductCategory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ShopImplToJson(_$ShopImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'brand': instance.brand,
      'logo': instance.logo,
      'image': instance.image,
      'description': instance.description,
      'brief_description': instance.briefDescription,
      'views': instance.views,
      'cover_media': instance.coverMedia,
      'phone_numbers': instance.phoneNumbers,
      'is_vip': instance.isVip,
      'vip_days': instance.vipDays,
      'site': instance.site,
      'mail': instance.mail,
      'social_profiles': instance.socialProfiles,
      'location': instance.location,
      'product_count': instance.productCount,
      'product_categories': instance.productCategories,
    };

_$SocialProfileImpl _$$SocialProfileImplFromJson(Map<String, dynamic> json) =>
    _$SocialProfileImpl(
      sociableId: (json['sociable_id'] as num?)?.toInt(),
      platform: json['platform'] as String?,
      url: json['url'] as String?,
    );

Map<String, dynamic> _$$SocialProfileImplToJson(_$SocialProfileImpl instance) =>
    <String, dynamic>{
      'sociable_id': instance.sociableId,
      'platform': instance.platform,
      'url': instance.url,
    };

_$UserProductCategoryImpl _$$UserProductCategoryImplFromJson(
        Map<String, dynamic> json) =>
    _$UserProductCategoryImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      productCount: (json['products_count'] as num?)?.toInt(),
      type: json['type'] as String?,
    );

Map<String, dynamic> _$$UserProductCategoryImplToJson(
        _$UserProductCategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'products_count': instance.productCount,
      'type': instance.type,
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

_$ProductCategoryImpl _$$ProductCategoryImplFromJson(
        Map<String, dynamic> json) =>
    _$ProductCategoryImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      image: json['image'] as String?,
      parent: json['parent'] == null
          ? null
          : CategoryParent.fromJson(json['parent'] as Map<String, dynamic>),
      description: json['description'] as String?,
      productsCount: (json['products_count'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ProductCategoryImplToJson(
        _$ProductCategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'parent': instance.parent,
      'description': instance.description,
      'products_count': instance.productsCount,
    };

_$CategoryParentImpl _$$CategoryParentImplFromJson(Map<String, dynamic> json) =>
    _$CategoryParentImpl(
      id: (json['id'] as num?)?.toInt(),
      title: json['title'] as String?,
      image: json['image'] as String?,
      parent: json['parent'] == null
          ? null
          : CategoryParent.fromJson(json['parent'] as Map<String, dynamic>),
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$CategoryParentImplToJson(
        _$CategoryParentImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'parent': instance.parent,
      'description': instance.description,
    };
