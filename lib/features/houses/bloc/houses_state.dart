part of 'houses_bloc.dart';

@freezed
class HousesState with _$HousesState {
  const factory HousesState({
    // ignore: strict_raw_type
    @Default(BaseStatus.initial()) BaseStatus status,
    @Default([]) List<HouseEntity> houses,
    GlobalOptionsResponse? globalOptions,

    // 👇 Pagination alanları
    @Default(false) bool isPaginating,
    @Default(0) int currentPage,
    @Default(true) bool hasMorePages,
  }) = _HousesState;

  const HousesState._();

  bool get hasActiveFilters => globalOptions?.data.hasActiveFilters ?? false;
}
