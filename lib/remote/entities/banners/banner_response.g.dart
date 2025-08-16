// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'banner_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BannerResponseImpl _$$BannerResponseImplFromJson(Map<String, dynamic> json) =>
    _$BannerResponseImpl(
      banners: (json['data'] as List<dynamic>?)
          ?.map((e) => BannerEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BannerResponseImplToJson(
        _$BannerResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.banners,
    };
