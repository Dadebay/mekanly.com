import 'package:freezed_annotation/freezed_annotation.dart';

import 'house_entity.dart';

part 'house_response.freezed.dart';
part 'house_response.g.dart';

@freezed
class HouseResponse with _$HouseResponse {
  const factory HouseResponse({
    @JsonKey(name: 'data') List<HouseEntity>? houses,
  }) = _HouseResponse;

  @JsonSerializable(explicitToJson: true)
  factory HouseResponse.fromJson(Map<String, dynamic> json) =>
      _$HouseResponseFromJson(json);
}
