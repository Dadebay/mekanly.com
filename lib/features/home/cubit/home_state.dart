// ignore_for_file: inference_failure_on_instance_creation

part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    // ignore: strict_raw_type
    @Default(BaseStatus.initial()) BaseStatus status,
    List<BannerEntity>? smallBanners,
    List<BannerEntity>? bigBanners,
    List<TopAdsEntity>? topAds,
  }) = _HomeState;

  const HomeState._();
}
