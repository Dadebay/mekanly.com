import 'package:freezed_annotation/freezed_annotation.dart';

part 'ads_location_entity.freezed.dart';
part 'ads_location_entity.g.dart';

@freezed
class AdsLocationEntity with _$AdsLocationEntity {
  const factory AdsLocationEntity({
    String? name,
    String? parent,
  }) = _AdsLocationEntity;

  @JsonSerializable(explicitToJson: true)
  factory AdsLocationEntity.fromJson(Map<String, dynamic> json) =>
      _$AdsLocationEntityFromJson(json);
}
