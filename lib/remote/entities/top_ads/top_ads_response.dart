import 'package:freezed_annotation/freezed_annotation.dart';

import 'top_ads_entity.dart';

part 'top_ads_response.freezed.dart';
part 'top_ads_response.g.dart';

@freezed
class TopAdsResponse with _$TopAdsResponse {
  const factory TopAdsResponse({
    @JsonKey(name: 'data') List<TopAdsEntity>? topAds,
  }) = _TopAdsResponse;

  @JsonSerializable(explicitToJson: true)
  factory TopAdsResponse.fromJson(Map<String, dynamic> json) =>
      _$TopAdsResponseFromJson(json);
}
