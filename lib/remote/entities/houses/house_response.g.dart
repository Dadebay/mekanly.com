// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'house_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$HouseResponseImpl _$$HouseResponseImplFromJson(Map<String, dynamic> json) =>
    _$HouseResponseImpl(
      houses: (json['data'] as List<dynamic>?)
          ?.map((e) => HouseEntity.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$HouseResponseImplToJson(_$HouseResponseImpl instance) =>
    <String, dynamic>{
      'data': instance.houses,
    };
