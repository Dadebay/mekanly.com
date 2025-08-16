// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_success_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginSuccessEntityImpl _$$LoginSuccessEntityImplFromJson(
        Map<String, dynamic> json) =>
    _$LoginSuccessEntityImpl(
      message: json['message'] as String,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$LoginSuccessEntityImplToJson(
        _$LoginSuccessEntityImpl instance) =>
    <String, dynamic>{
      'message': instance.message,
      'user': instance.user,
    };
