import 'package:mekanly_com/config/config.dart';

import '../../core/errors/types.dart';
import '../../repos/i_main_repo.dart';
import '/logic/services/i_main_service.dart';
import '/models/models.dart';
import '/packages.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  final IMainRepo repo;
  final IMainService service;

  AuthCubit(this.repo, this.service) : super(AuthInitial());

  Future<Usr?> getLocal() async {
    emit(AuthLoading());
    var user = await _getLocalUser();
    if (user != null) {
      emit(AuthSuccess(user));
      return user;
    } else {
      emit(const AuthFailed(fail: ErrorType.notFoundUserInLocal));
      return null;
    }
  }

  Future<Usr?> _getLocalUser() async {
    try {
      var result = await repo.getUser();
      return result.fold((l) {
        return null;
      }, (r) {
        return r;
      });
    } catch (e, st) {
      logger("$e\n$st");
      return null;
    }
  }

  Future<Usr?> register(String username, String phone, String password) async {
    await logout();
    emit(AuthLoading());
    emit(await _register(username, phone, password));

    return repo.user;
  }

  Future<AuthState> _register(String username, String phone, String password) async {
    final result = await service.register(username, phone, password);
    return result.fold(
      (l) {
        if (l.errorType == ErrorType.userConflict) {
          return const AuthFailed(fail: ErrorType.userConflict);
        } else {
          return const AuthFailed();
        }
      },
      (r) => AuthSuccess(r),
    );
  }

  Future<void> logout() async {
    emit(AuthLoading());
    await repo.removeUser();

    emit(const AuthFailed());
  }

  Future<Usr?> logIn(String phone, String password) async {
    emit(AuthLoading());
    emit(await login(phone, password));
    return repo.user;
  }

  Future<AuthState> login(String phone, String password) async {
    emit(AuthLoading());

    final result = await service.logIn(phone, password);
    return result.fold(
      (l) {
        if (l.errorType == ErrorType.userNotFound) {
          emit(const AuthFailed(fail: ErrorType.userNotFound));
          return const AuthFailed(fail: ErrorType.userNotFound);
        } else {
          emit(const AuthFailed());

          return AuthFailed(fail: l.errorType);
        }
      },
      (r) {
        emit(AuthSuccess(r));

        return AuthSuccess(r);
      },
    );
  }
}
