import 'package:freezed_annotation/freezed_annotation.dart';

import 'business_profile_entity.dart';

part 'business_profiles_response.freezed.dart';
part 'business_profiles_response.g.dart';

@freezed
class BusinessProfilesResponse with _$BusinessProfilesResponse {
  const factory BusinessProfilesResponse({
    List<BusinessProfileEntity>? data,
  }) = _BusinessProfilesResponse;

  @JsonSerializable(explicitToJson: true)
  factory BusinessProfilesResponse.fromJson(Map<String, dynamic> json) =>
      _$BusinessProfilesResponseFromJson(json);
}
