// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_profile_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BusinessProfileEntityImpl _$$BusinessProfileEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$BusinessProfileEntityImpl(
      id: (json['id'] as num?)?.toInt(),
      brand: json['brand'] as String?,
      logo: json['logo'] as String?,
      image: json['image'] as String?,
      status: json['status'] as String?,
      description: json['description'] == null
          ? null
          : BaseTranslationModel.fromJson(
              json['description'] as Map<String, dynamic>),
      briefDescription: json['brief_description'] as String?,
      productCount: (json['product_count'] as num?)?.toInt(),
      locationId: (json['location_id'] as num?)?.toInt(),
      expire: json['expire'] as String?,
      views: (json['views'] as num?)?.toInt(),
      coverMedia: json['cover_media'] as String?,
      rating: (json['rating'] as num?)?.toInt(),
      locations: json['locations'],
      phoneNumbers: _phoneNumbersFromJson(json['phone_numbers']),
      isVip: (json['is_vip'] as num?)?.toInt(),
      vipDays: (json['vip_days'] as num?)?.toInt(),
      site: json['site'] as String?,
      messengers: json['messengers'],
      mail: json['mail'] as String?,
      createdAt: json['created_at'] as String?,
      updatedAt: json['updated_at'] as String?,
    );

Map<String, dynamic> _$$BusinessProfileEntityImplToJson(
        _$BusinessProfileEntityImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'brand': instance.brand,
      'logo': instance.logo,
      'image': instance.image,
      'status': instance.status,
      'description': instance.description,
      'brief_description': instance.briefDescription,
      'product_count': instance.productCount,
      'location_id': instance.locationId,
      'expire': instance.expire,
      'views': instance.views,
      'cover_media': instance.coverMedia,
      'rating': instance.rating,
      'locations': instance.locations,
      'phone_numbers': _phoneNumbersToJson(instance.phoneNumbers),
      'is_vip': instance.isVip,
      'vip_days': instance.vipDays,
      'site': instance.site,
      'messengers': instance.messengers,
      'mail': instance.mail,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_$BaseTranslationModelImpl _$$BaseTranslationModelImplFromJson(
        Map<String, dynamic> json) =>
    _$BaseTranslationModelImpl(
      tk: json['tk'] as String?,
      ru: json['ru'] as String?,
      en: json['en'] as String?,
    );

Map<String, dynamic> _$$BaseTranslationModelImplToJson(
        _$BaseTranslationModelImpl instance) =>
    <String, dynamic>{
      'tk': instance.tk,
      'ru': instance.ru,
      'en': instance.en,
    };
