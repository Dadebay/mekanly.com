import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../config/config.dart';
import '../../../models/category/category_model.dart';
import '../../repos/i_main_repo.dart';
import '../../services/i_main_service.dart';
import '/logic/core/core.dart';

part 'house_state.dart';

class HouseCubit extends Cubit<HouseState> {
  IMainService service;
  IMainRepo repo;
  HouseCubit(this.repo, this.service) : super(HouseInitial());

  Future<bool> tryAddHouse({required Map<String, dynamic> data, required List<String> imagePaths}) async {
    var aa = await service.addHouse(data, imagePaths);

    if (aa.isRight()) {
      return true;
    } else {
      return false;
    }
  }

  Future<bool> tryUpdateHouse({required Map<String, String> data, required List<String> imagePaths, required int id}) async {
    var aa = await service.updateHouse(data, imagePaths, id);

    if (aa.isRight()) {
      return true;
    } else {
      return false;
    }
  }

  Future<void> getAllHouses() async {
    try {
      emit(HouseLoading());
      final result = await service.getAllHouses();
      result.fold(
        (failure) => emit(HouseError()),
        (r) {
          emit(HouseSuccess(repo.houses));
        },
      );
    } catch (ex, s) {
      logger(ex.toString());
      logger(s.toString());
    }
  }

  Future<void> search(String query) async {
    try {
      emit(HouseLoading());
      final result = await service.searchHouses(query);
      result.fold(
        (failure) {
          if (failure.errorType == ErrorType.houseEmpty) {
            logger(failure.errorType);
            emit(HouseError(errorType: failure.errorType));
          }
        },
        (r) {
          emit(HouseSuccess(repo.houses));
        },
      );
    } catch (ex, s) {
      logger(ex.toString());
      logger(s.toString());
    }
  }

  Future<void> filterBy(
    String? minPrice,
    String? maxPrice,
    List<int>? locations,
    List<int> roomCount,
    List<int> floorCount,
    int? guestCount,
    List<int>? features,
    String? date,
  ) async {
    try {
      emit(HouseLoading());

      final result = await service.filterBy(minPrice, maxPrice, locations, roomCount, floorCount, guestCount, features, date);

      result.fold(
        (failure) {
          if (failure.errorType == ErrorType.houseEmpty) {
            logger(failure.errorType);
            emit(HouseError(errorType: failure.errorType));
          }
        },
        (_) {
          logger('IFED');
          emit(HouseSuccess(repo.houses));
        },
      );
    } catch (ex, s) {
      logger("Burger ${ex.toString()}");
      logger(s.toString());
    }
  }

  Future<void> deleteHouse(int id) async {
    try {
      final result = await service.deleteHouse(id);
      result.fold(
        (failure) => emit(HouseError()),
        (r) {
          emit(HouseSuccess(repo.houses));
        },
      );
    } catch (ex, s) {
      logger(ex.toString());
      logger(s.toString());
    }
  }

  Future<void> forwardHouse(int id) async {
    try {
      emit(HouseLoading());
      final result = await service.forwardHouse(id);
      result.fold(
        (failure) => emit(HouseError()),
        (r) {
          emit(HouseSuccess(repo.houses));
        },
      );
    } catch (ex, s) {
      logger(ex.toString());
      logger(s.toString());
    }
  }

  Future<void> bronHouse(int id) async {
    try {
      emit(HouseLoading());
      final result = await service.bronHouse(id);
      result.fold(
        (failure) => emit(HouseError()),
        (r) {
          emit(HouseSuccess(repo.houses));
        },
      );
    } catch (ex, s) {
      logger(ex.toString());
      logger(s.toString());
    }
  }
}
