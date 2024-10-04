import 'package:flutter_bloc/flutter_bloc.dart';

import '/config/config.dart';
import '/logic/services/i_main_service.dart';
import '/models/category/category_model.dart';
import '../../core/errors/failure.dart';
import '../../repos/i_main_repo.dart';

part 'categs_state.dart';

class CategsCubit extends Cubit<CategsState> {
  IMainService service;
  IMainRepo repo;

  CategsCubit(this.repo, this.service) : super(const CategsInitial());

  Future<void> fetchCategsorites() async {
    try {
      emit(const CategsLoading());
      logger('Fetching categs');

      final result = await service.getCategories();
      result.fold(
        (failure) => emit(CategsError(failure)),
        (_) {
          emit(CategsSuccess(repo.cats));
        },
      );
    } catch (ex, s) {
      logger(ex.toString());
      logger(s.toString());
    }
  }
}
