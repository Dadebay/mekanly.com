import 'package:freezed_annotation/freezed_annotation.dart';

import '../user.dart';

part 'otp_success_entity.freezed.dart';
part 'otp_success_entity.g.dart';

@freezed
class OtpSuccessEntity with _$OtpSuccessEntity {
  const factory OtpSuccessEntity({
    required String message,
    required User user,
  }) = _OtpSuccessEntity;

  @JsonSerializable(explicitToJson: true)
  factory OtpSuccessEntity.fromJson(Map<String, dynamic> json) =>
      _$OtpSuccessEntityFromJson(json);
}
