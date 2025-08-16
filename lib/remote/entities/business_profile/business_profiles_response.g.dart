// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_profiles_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BusinessProfilesResponseImpl _$$BusinessProfilesResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$BusinessProfilesResponseImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map(
              (e) => BusinessProfileEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$BusinessProfilesResponseImplToJson(
        _$BusinessProfilesResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
