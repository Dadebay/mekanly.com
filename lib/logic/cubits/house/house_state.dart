part of 'house_cubit.dart';

abstract class HouseState {
  const HouseState();
}

final class HouseInitial extends HouseState {}

final class HouseLoading extends HouseState {}

final class HouseSuccess extends HouseState {
  final Houses houses;
  const HouseSuccess(this.houses);
}

final class HouseError extends HouseState {
  final ErrorType? errorType;
  HouseError({this.errorType});
}
