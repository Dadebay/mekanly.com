part of 'otp_cubit.dart';

@freezed
class OtpState with _$OtpState {
  const factory OtpState({
    // ignore: inference_failure_on_instance_creation, strict_raw_type
    @Default(BaseStatus.initial()) BaseStatus status,
    OtpSuccessEntity? response,
  }) = _OtpState;

  const OtpState._();
}
