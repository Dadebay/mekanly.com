// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BannerEntityImpl _$$BannerEntityImplFromJson(Map<String, dynamic> json) =>
    _$BannerEntityImpl(
      title: json['title'] as String?,
      type: $enumDecodeNullable(_$BannerTypeEnumMap, json['type']),
      image: json['image'] as String?,
      logo: json['logo'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$BannerEntityImplToJson(_$BannerEntityImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'type': instance.type,
      'image': instance.image,
      'logo': instance.logo,
      'created_at': instance.createdAt?.toIso8601String(),
    };

const _$BannerTypeEnumMap = {
  BannerType.big: 'big',
  BannerType.inside: 'inside',
  BannerType.small: 'small',
};
