import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../../product/base/base_status/base_status.dart';
import '../../../../../product/base/bloc/base_bloc.dart';
import '../../../../../product/local/config_preference.dart';
import '../../../../../remote/entities/auth/otp_success_entity.dart';
import '../../../../../remote/in_memory_token.dart';
import '../../../../../remote/payloads/otp_payload.dart';
import '../../../../../remote/repositories/auth/auth_repository.dart';

part 'otp_state.dart';
part 'otp_cubit.freezed.dart';

@injectable
class OtpCubit extends BaseCubit<OtpState> {
  OtpCubit(this._authRepository) : super(const OtpState());
  final IAuthRepository _authRepository;

  Future<void> verify(OtpPayload payload) async {
    emit(state.copyWith(status: const BaseStatus.loading()));
    final res = await _authRepository.otp(payload);

    res.fold(
      (l) => emit(state.copyWith(status: BaseStatus.failure(l))),
      (r) async {
        final user = r.user;
        final token = r.user.token;

        InMemoryToken.instance.token = token;
        final isSuccess = await ConfigPreference.setCredentials(user);

        if (isSuccess) {
          return emit(
            state.copyWith(
              status: const BaseStatus.success(),
              response: r,
            ),
          );
        }
      },
    );
  }
}
