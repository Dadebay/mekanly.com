import 'package:common/common.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../product/base/base_status/base_status.dart';
import '../../../product/base/bloc/base_bloc.dart';
import '../../../remote/entities/banners/banner_entity.dart';
import '../../../remote/entities/top_ads/top_ads_entity.dart';
import '../../../remote/repositories/banner/banners_repository.dart';
import '../../../remote/repositories/top_ads/top_ads_repository.dart';

part 'home_state.dart';
part 'home_cubit.freezed.dart';

@injectable
class HomeCubit extends BaseCubit<HomeState> {
  HomeCubit(this._bannersRepository, this._topAdsRepository)
      : super(const HomeState());

  final BannersRepository _bannersRepository;

  final TopAdsRepository _topAdsRepository;

  void init({
    required List<BannerEntity>? onSmallBanners,
    required List<BannerEntity>? onBigBanners,
    required List<TopAdsEntity>? onTopAds,
  }) {
    emit(
      state.copyWith(
        smallBanners: onSmallBanners,
        bigBanners: onBigBanners,
        topAds: onTopAds,
      ),
    );
  }

  Future<void> getHome() async {
    emit(state.copyWith(status: const BaseStatus.loading()));

    final res = await _bannersRepository.banners();

    res.fold(
      (l) => emit(state.copyWith(status: BaseStatus.failure(l))),
      (r) async {
        final banners = r.banners;

        final res = await _topAdsRepository.topAds();

        res.fold(
          (l) => emit(state.copyWith(status: BaseStatus.failure(l))),
          (r) {
            BaseLogger.info(' - - - - ->  $banners - - - -- ');
            final smallBanners =
                banners?.where((b) => b.type == BannerType.small).toList();
            final bigBanners =
                banners?.where((b) => b.type == BannerType.big).toList();

            return emit(
              state.copyWith(
                status: const BaseStatus.success(),
                smallBanners: smallBanners,
                bigBanners: bigBanners,
                topAds: r.topAds,
              ),
            );
          },
        );
      },
    );
  }
}
