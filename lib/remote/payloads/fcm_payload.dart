// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'fcm_payload.freezed.dart';
part 'fcm_payload.g.dart';

@freezed
class FcmPayload with _$FcmPayload {
  const factory FcmPayload({
    @JsonKey(name: 'device_info') required String deviceInfo,
    @JsonKey(name: 'device_token') required String deviceToken,
  }) = _FcmPayload;

  @JsonSerializable(explicitToJson: true)
  factory FcmPayload.fromJson(Map<String, dynamic> json) =>
      _$FcmPayloadFromJson(json);
}
