import 'package:freezed_annotation/freezed_annotation.dart';

part 'business_profile_entity.freezed.dart';
part 'business_profile_entity.g.dart';

List<String>? _phoneNumbersFromJson(dynamic json) {
  if (json == null) return null;
  if (json is String) return [json];
  if (json is List) return json.map((e) => e.toString()).toList();
  return null;
}

dynamic _phoneNumbersToJson(List<String>? phoneNumbers) => phoneNumbers;

@freezed
class BusinessProfileEntity with _$BusinessProfileEntity {
  const factory BusinessProfileEntity({
    @JsonKey(name: 'id') int? id,
    @JsonKey(name: 'brand') String? brand,
    @JsonKey(name: 'logo') String? logo,
    @JsonKey(name: 'image') String? image,
    @JsonKey(name: 'status') String? status,
    @JsonKey(name: 'description') BaseTranslationModel? description,
    @JsonKey(name: 'brief_description')
    String? briefDescription,
    @JsonKey(name: 'product_count') int? productCount, 
    @JsonKey(name: 'location_id') int? locationId,
    @JsonKey(name: 'expire') String? expire,
    @JsonKey(name: 'views') int? views,
    @JsonKey(name: 'cover_media') String? coverMedia,
    @JsonKey(name: 'rating') int? rating,
    @JsonKey(name: 'locations') dynamic locations,
    @JsonKey(
        name: 'phone_numbers',
        fromJson: _phoneNumbersFromJson,
        toJson: _phoneNumbersToJson)
    List<String>? phoneNumbers,
    @JsonKey(name: 'is_vip') int? isVip,
    @JsonKey(name: 'vip_days') int? vipDays,
    @JsonKey(name: 'site') String? site,
    @JsonKey(name: 'messengers') dynamic messengers,
    @JsonKey(name: 'mail') String? mail,
    @JsonKey(name: 'created_at') String? createdAt,
    @JsonKey(name: 'updated_at') String? updatedAt,
  }) = _BusinessProfileEntity;

  factory BusinessProfileEntity.fromJson(Map<String, dynamic> json) =>
      _$BusinessProfileEntityFromJson(json);
}

@freezed
class BaseTranslationModel with _$BaseTranslationModel {
  const factory BaseTranslationModel({
    String? tk,
    String? ru,
    String? en,
  }) = _BaseTranslationModel;

  factory BaseTranslationModel.fromJson(Map<String, dynamic> json) =>
      _$BaseTranslationModelFromJson(json);
}
