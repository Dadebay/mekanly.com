import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../models/models.dart';
import '../../core/errors/failure.dart';
import '/config/config.dart';
import '../../repos/i_main_repo.dart';
import '/logic/services/i_main_service.dart';

class RegionsCubit extends Cubit<RegionsState> {
  IMainService service;
  IMainRepo repo;

  RegionsCubit(this.repo, this.service) : super(const RegionsInitial());

  Future<void> fetchRgions() async {
    try {
      emit(const RegionsLoading());

      final result = await service.getRegions();

      result.fold(
        (failure) => emit(RegionsError(failure)),
        (_) {
          emit(RegionsSuccess(repo.regions));
        },
      );
    } catch (ex, s) {
      logger(ex.toString());
      logger(s.toString());
    }
  }
}

abstract class RegionsState {
  const RegionsState();
}

class RegionsInitial extends RegionsState {
  const RegionsInitial();
}

class RegionsLoading extends RegionsState {
  const RegionsLoading();
}

class RegionsSuccess extends RegionsState {
  final Regions regions;

  RegionsSuccess(this.regions);
}

class RegionsError extends RegionsState {
  final Failure errorMessage;

  RegionsError(this.errorMessage);
}
