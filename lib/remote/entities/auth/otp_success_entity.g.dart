// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_success_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OtpSuccessEntityImpl _$$OtpSuccessEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$OtpSuccessEntityImpl(
      message: json['message'] as String,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$OtpSuccessEntityImplToJson(
        _$OtpSuccessEntityImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'user': instance.user,
    };
