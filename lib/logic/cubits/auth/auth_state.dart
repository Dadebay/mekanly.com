part of 'auth_cubit.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthFailed extends AuthState {
  final ErrorType? fail;

  const AuthFailed({this.fail});
}

class AuthSuccess extends AuthState {
  final Usr? user;
  const AuthSuccess(this.user);
}
