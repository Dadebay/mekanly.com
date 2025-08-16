part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    // ignore: inference_failure_on_instance_creation, strict_raw_type
    @Default(BaseStatus.initial()) BaseStatus status,
    LoginSuccessEntity? response,
  }) = _LoginState;

  const LoginState._();
}
