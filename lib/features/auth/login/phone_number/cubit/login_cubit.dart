import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../product/base/base_status/base_status.dart';
import '../../../../../product/base/bloc/base_bloc.dart';
import '../../../../../remote/entities/auth/login_success_entity.dart';
import '../../../../../remote/payloads/login_payload.dart';
import '../../../../../remote/repositories/auth/auth_repository.dart';

part 'login_state.dart';
part 'login_cubit.freezed.dart';

@injectable
class LoginCubit extends BaseCubit<LoginState> {
  LoginCubit(this._authRepository) : super(const LoginState());
  final IAuthRepository _authRepository;

  Future<void> login(String phoneNumber) async {
    emit(state.copyWith(status: const BaseStatus.loading()));
    final response =
        await _authRepository.login(LoginPayload(phone: phoneNumber));
    response.fold(
      (error) => emit(state.copyWith(status: BaseStatus.failure(error))),
      (data) => emit(
        state.copyWith(status: const BaseStatus.success(), response: data),
      ),
    );
  }
}
