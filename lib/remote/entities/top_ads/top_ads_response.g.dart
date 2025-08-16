// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'top_ads_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TopAdsResponseImpl _$$TopAdsResponseImplFromJson(Map<String, dynamic> json) =>
    _$TopAdsResponseImpl(
      topAds: (json['data'] as List<dynamic>?)
          ?.map((e) => TopAdsEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$TopAdsResponseImplToJson(
        _$TopAdsResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.topAds,
    };
