import 'package:freezed_annotation/freezed_annotation.dart';

import 'business_profile_category_entity.dart';

part 'business_profile_category_response.freezed.dart';
part 'business_profile_category_response.g.dart';

@freezed
class BusinessProfileCategoryResponse with _$BusinessProfileCategoryResponse {
  const factory BusinessProfileCategoryResponse({
    List<BusinessProfileCategoryEntity>? data,
  }) = _BusinessProfileCategoryResponse;

  @JsonSerializable(explicitToJson: true)
  factory BusinessProfileCategoryResponse.fromJson(Map<String, dynamic> json) =>
      _$BusinessProfileCategoryResponseFromJson(json);
}
