part of 'house_detail_cubit.dart';

@freezed
class HouseDetailState with _$HouseDetailState {
  const factory HouseDetailState({
    // ignore: inference_failure_on_instance_creation, strict_raw_type
    @Default(BaseStatus.initial()) BaseStatus status,
    HouseDetailResponse? response,
  }) = _HouseDetailState;

  const HouseDetailState._();
}
