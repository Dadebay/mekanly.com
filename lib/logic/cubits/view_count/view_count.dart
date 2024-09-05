import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mekanly_com/config/config.dart';
import 'package:mekanly_com/logic/services/i_main_service.dart';

class ViewCountCubit extends Cubit<int> {
  IMainService service;

  ViewCountCubit(
    this.service,
  ) : super(0);

  Future<void> incrementView(int houseId) async {
    try {
      final result = await service.incrementView(houseId);

      result.fold(
        (failure) => emit(state),
        (r) {
          emit(r);
        },
      );
    } catch (ex, s) {
      logger(ex.toString());
      logger(s.toString());
    }
  }
}
