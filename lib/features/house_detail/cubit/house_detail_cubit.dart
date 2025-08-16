import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../product/base/base_status/base_status.dart';
import '../../../product/base/bloc/base_bloc.dart';
import '../../../remote/entities/house_detail/house_detail_response.dart';
import '../../../remote/repositories/house_detail/house_detail_repository.dart';

part 'house_detail_state.dart';
part 'house_detail_cubit.freezed.dart';

@injectable
class HouseDetailCubit extends BaseCubit<HouseDetailState> {
  HouseDetailCubit(this._detailRepository) : super(const HouseDetailState());

  final HouseDetailRepository _detailRepository;

  Future<void> getHouseDetail(int id) async {
    emit(state.copyWith(status: const BaseStatus.loading()));
    final result = await _detailRepository.houseDetail(id);
    result.fold(
      (l) => emit(state.copyWith(status: BaseStatus.failure(l))),
      (r) => emit(
        state.copyWith(
          status: const BaseStatus.success(),
          response: r,
        ),
      ),
    );
  }

  void updateHouseFavoriteStatus(bool isFavorite) {
    if (state.response?.data != null) {
      final updatedHouse = state.response!.data!.copyWith(favorited: isFavorite);
      emit(state.copyWith(response: state.response!.copyWith(data: updatedHouse)));
    }
  }
}
