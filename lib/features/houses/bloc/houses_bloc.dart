import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../product/base/base_global_data.dart';
import '../../../product/base/base_status/base_status.dart';
import '../../../product/base/bloc/base_bloc.dart';
import '../../../remote/entities/global_options/global_option_values.dart';
import '../../../remote/entities/global_options/global_options.dart';
import '../../../remote/entities/houses/house_entity.dart';
import '../../../remote/repositories/houses/house_repository.dart';

part 'houses_event.dart';
part 'houses_state.dart';
part 'houses_bloc.freezed.dart';

@injectable
class HousesBloc extends BaseBloc<HousesEvent, HousesState> {
  HousesBloc(this._housesRepository) : super(const HousesState()) {
    on<_Refresh>(_onRefresh);
    on<_GetFilters>(_onGetFilters);
    on<_Filter>(_onApplyFilter);
    on<_LoadMore>(_onLoadMore);
    on<_UpdateHouseFavoriteStatus>(_onUpdateHouseFavoriteStatus);
  }

  final HousesRepository _housesRepository;

  FutureOr<void> _onUpdateHouseFavoriteStatus(
    _UpdateHouseFavoriteStatus event,
    Emitter<HousesState> emit,
  ) async {
    final currentHouses = List<HouseEntity>.from(state.houses);
    final updatedHouses = currentHouses.map((house) {
      if (house.id == event.houseId) {
        return house.copyWith(favorited: event.isFavorite);
      }
      return house;
    }).toList();
    emit(state.copyWith(houses: updatedHouses));
  }

  FutureOr<void> _onLoadMore(
    _LoadMore event,
    Emitter<HousesState> emit,
  ) async {
    if (state.isPaginating || !state.hasMorePages) return;

   
    emit(state.copyWith(isPaginating: true));

  
    final nextPage = state.currentPage + 10;

    final result = await _housesRepository.houses(
      limit: 10,
      page: nextPage,
    );

    result.fold(
      (failure) {
        emit(state.copyWith(isPaginating: false));
      },
      (response) {
        final newHouses = response.houses ?? [];

        final allHouses = List<HouseEntity>.from(state.houses)
          ..addAll(newHouses);

        final uniqueHouses = {
          for (var house in allHouses) house.id: house,
        }.values.toList();

        final hasMore = newHouses.length == 10;

        emit(state.copyWith(
          houses: uniqueHouses,
          currentPage: nextPage,
          hasMorePages: hasMore,
          isPaginating: false,
        ));
      },
    );
  }

  FutureOr<void> _onRefresh(
    _Refresh event,
    Emitter<HousesState> emit,
  ) async {
    emit(state.copyWith(status: const BaseStatus.loading()));
    final result = await _housesRepository.houses();

    result.fold(
      (l) => emit(state.copyWith(status: BaseStatus.failure(l))),
      (r) async {
        print(' ${r.houses}');
        final houses = r.houses;
        final filter = state.globalOptions?.data;
        final globalFilter = BaseGlobalData.instance.filter;
        if (globalFilter == null && filter == null) {
          add(HousesEvent.getFilter(houses));
          return;
        }
        if (filter != null || globalFilter != null) {
          final currentFilter = filter ?? globalFilter!;

          final updated = currentFilter.copyWith(
            floorCount: GlobalOptionValues.floorCounts,
            roomCount: GlobalOptionValues.roomCounts,
            floorCountHouse: GlobalOptionValues.floorCountsHouse,
            roomCountHouse: GlobalOptionValues.roomCountsHouse,
            levelCountHouse: GlobalOptionValues.levelCountsHouse,
          );
          final data = GlobalOptionsResponse(data: updated);
          BaseGlobalData.instance.filter = data.data;

          return emit(
            state.copyWith(
              status: const BaseStatus.success(),
              houses: houses ?? [],
              globalOptions: data,
            ),
          );
        }
        return emit(
          state.copyWith(
            status: const BaseStatus.success(),
            houses: houses ?? [],
          ),
        );
      },
    );
  }

  FutureOr<void> _onGetFilters(
    _GetFilters event,
    Emitter<HousesState> emit,
  ) async {
    final res = await _housesRepository.globalOptions();
    res.fold(
      (l) => emit(state.copyWith(status: BaseStatus.failure(l))),
      (r) {
        final filter = r.data.copyWith(
          floorCount: GlobalOptionValues.floorCounts,
          roomCount: GlobalOptionValues.roomCounts,
          floorCountHouse: GlobalOptionValues.floorCountsHouse,
          roomCountHouse: GlobalOptionValues.roomCountsHouse,
          levelCountHouse: GlobalOptionValues.levelCountsHouse,
        );
        BaseGlobalData.instance.filter = filter;
        final updated = r.copyWith(data: filter);
        return emit(
          state.copyWith(
            status: const BaseStatus.success(),
            globalOptions: updated,
            houses: event.houses ?? [],
          ),
        );
      },
    );
  }

  FutureOr<void> _onApplyFilter(
    _Filter event,
    Emitter<HousesState> emit,
  ) async {
    final filter = state.globalOptions?.copyWith(
      data: event.filter,
    );
    emit(
      state.copyWith(
        status: const BaseStatus.loading(),
        globalOptions: filter,
      ),
    );

    if (event.filter.search?.isNotEmpty ?? false) {
      final res = await _housesRepository.searchHouses(
        searchQuery: event.filter.search!,
        limit: 10,
        page: 0,
      );
      res.fold(
        (l) => emit(state.copyWith(status: BaseStatus.failure(l))),
        (r) {
          return emit(
            state.copyWith(
              status: const BaseStatus.success(),
              globalOptions: filter,
              houses: r.houses ?? [],
            ),
          );
        },
      );
    } else {
      final res = await _housesRepository.filter(filter: event.filter);
      res.fold(
        (l) => emit(state.copyWith(status: BaseStatus.failure(l))),
        (r) {
          return emit(
            state.copyWith(
              status: const BaseStatus.success(),
              globalOptions: filter,
              houses: r,
            ),
          );
        },
      );
    }
  }
}
