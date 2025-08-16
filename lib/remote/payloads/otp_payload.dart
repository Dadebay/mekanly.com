// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'otp_payload.freezed.dart';
part 'otp_payload.g.dart';

@freezed
class OtpPayload with _$OtpPayload {
  const factory OtpPayload({
    required String phone,
    required String token,
    required String code,
  }) = _OtpPayload;

  @JsonSerializable(explicitToJson: true)
  factory OtpPayload.fromJson(Map<String, dynamic> json) =>
      _$OtpPayloadFromJson(json);
}
