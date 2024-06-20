part of 'categs_cubit.dart';

abstract class CategsState {
  const CategsState();
}

class CategsInitial extends CategsState {
  const CategsInitial();
}

class CategsLoading extends CategsState {
  const CategsLoading();
}

class CategsSuccess extends CategsState {
  final Categories categs;

  const CategsSuccess(this.categs);
}

class CategsError extends CategsState {
  final Failure failure;

  const CategsError(this.failure);
}
