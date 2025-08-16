// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OtpPayloadImpl _$$OtpPayloadImplFromJson(Map<String, dynamic> json) =>
    _$OtpPayloadImpl(
      phone: json['phone'] as String,
      token: json['token'] as String,
      code: json['code'] as String,
    );

Map<String, dynamic> _$$OtpPayloadImplToJson(_$OtpPayloadImpl instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'token': instance.token,
      'code': instance.code,
    };
