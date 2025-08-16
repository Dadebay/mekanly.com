// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_profile_category_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BusinessProfileCategoryResponseImpl
    _$$BusinessProfileCategoryResponseImplFromJson(Map<String, dynamic> json) =>
        _$BusinessProfileCategoryResponseImpl(
          data: (json['data'] as List<dynamic>?)
              ?.map((e) => BusinessProfileCategoryEntity.fromJson(
                  e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$BusinessProfileCategoryResponseImplToJson(
        _$BusinessProfileCategoryResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
