// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fcm_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FcmPayloadImpl _$$FcmPayloadImplFromJson(Map<String, dynamic> json) =>
    _$FcmPayloadImpl(
      deviceInfo: json['device_info'] as String,
      deviceToken: json['device_token'] as String,
    );

Map<String, dynamic> _$$FcmPayloadImplToJson(_$FcmPayloadImpl instance) =>
    <String, dynamic>{
      'device_info': instance.deviceInfo,
      'device_token': instance.deviceToken,
    };
