import 'package:freezed_annotation/freezed_annotation.dart';

import 'banner_entity.dart';

part 'banner_response.freezed.dart';
part 'banner_response.g.dart';

@freezed
class BannerResponse with _$BannerResponse {
  const factory BannerResponse({
    @JsonKey(name: 'data') List<BannerEntity>? banners,
  }) = _BannerResponse;

  @JsonSerializable(explicitToJson: true)
  factory BannerResponse.fromJson(Map<String, dynamic> json) =>
      _$BannerResponseFromJson(json);
}
