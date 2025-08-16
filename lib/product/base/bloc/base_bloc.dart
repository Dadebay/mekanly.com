import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseCubit<T extends Object> extends Cubit<T> {
  BaseCubit(super.initialState);

  @override
  void emit(T state) {
    if (isClosed) return;
    super.emit(state);
  }
}

abstract class BaseBloc<Event, T extends Object> extends Bloc<Event, T> {
  BaseBloc(super.initialState);

  @override
  void add(Event event) {
    if (isClosed) return;
    super.add(event);
  }
}
