// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_ads_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopAdsEntityImpl _$$TopAdsEntityImplFromJson(Map<String, dynamic> json) =>
    _$TopAdsEntityImpl(
      name: json['name'] as String?,
      type: json['type'] as String?,
      phone: json['phone'] as String?,
      image: json['image'] as String?,
      price: json['price'] as String?,
      location: json['location'] == null
          ? null
          : AdsLocationEntity.fromJson(
              json['location'] as Map<String, dynamic>),
      description: json['description'] as String?,
      itemId: (json['item_id'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TopAdsEntityImplToJson(_$TopAdsEntityImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'type': instance.type,
      'phone': instance.phone,
      'image': instance.image,
      'price': instance.price,
      'location': instance.location,
      'description': instance.description,
      'item_id': instance.itemId,
    };
