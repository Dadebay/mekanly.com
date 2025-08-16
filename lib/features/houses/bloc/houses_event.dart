part of 'houses_bloc.dart';

@freezed
class HousesEvent with _$HousesEvent {
  const factory HousesEvent.refresh() = _Refresh;
  const factory HousesEvent.getFilter(List<HouseEntity>? houses) = _GetFilters;
  const factory HousesEvent.filter(GlobalOptions filter) = _Filter;
  const factory HousesEvent.loadMore() = _LoadMore;
  const factory HousesEvent.updateHouseFavoriteStatus(
    int houseId,
    bool isFavorite,
  ) = _UpdateHouseFavoriteStatus;
}
