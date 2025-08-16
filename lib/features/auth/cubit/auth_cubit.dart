import 'dart:developer';

import 'package:common/common.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import '../../../local_notifications_service.dart';
import '../../../product/base/bloc/base_bloc.dart';
import '../../../product/local/config_preference.dart';
import '../../../remote/entities/banners/banner_entity.dart';
import '../../../remote/entities/banners/banner_response.dart';
import '../../../remote/entities/top_ads/top_ads_entity.dart';
import '../../../remote/entities/top_ads/top_ads_response.dart';
import '../../../remote/entities/user.dart';
import '../../../remote/entities/user_profile/user_profile_info_response.dart';
import '../../../remote/in_memory_token.dart';
import '../../../remote/payloads/fcm_payload.dart';
import '../../../remote/repositories/auth/auth_repository.dart';
import '../../../remote/repositories/banner/banners_repository.dart';
import '../../../remote/repositories/top_ads/top_ads_repository.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@injectable
class AuthCubit extends BaseCubit<AuthState> {
  AuthCubit(
    this._authRepository,
    this._bannersRepository,
    this._topAdsRepository,
  ) : super(const AuthState.initial());

  final IAuthRepository _authRepository;

  final BannersRepository _bannersRepository;

  final TopAdsRepository _topAdsRepository;

  Future<void> checkState() async {
    emit(const AuthState.authChecking());

    final credentials = ConfigPreference.getUser();
    String? token;
    await FirebaseMessaging.instance.getToken().then((value) {
      token = value;
    }).catchError((_) {});

    final allRes = await Future.wait([
      _bannersRepository.banners(),
      _topAdsRepository.topAds(),
    ]);

    List<BannerEntity>? smallBanners;
    List<BannerEntity>? bigBanners;
    List<TopAdsEntity>? topAds;
    User? user;

    allRes.first.fold(
      (l) {
        return emit(const AuthState.authCheckingFailure());
      },
      (r) {
        final res = r as BannerResponse?;

        final banners = res?.banners;

        smallBanners = banners?.where((b) => b.type == BannerType.small).toList();
        bigBanners = banners?.where((b) => b.type == BannerType.big).toList();
      },
    );

    allRes.last.fold(
      (l) {
        return emit(const AuthState.authCheckingFailure());
      },
      (r) {
        final res = r as TopAdsResponse?;
        topAds = res?.topAds;
      },
    );

    if (credentials?.token != null && credentials != null) {
      InMemoryToken.instance.token = credentials.token;

      await DeviceInfoPlugin().deviceInfo.then((devInfo) async {
        final data = FcmPayload(
          deviceInfo: (devInfo.data['device'] as String?) ?? 'unknown',
          deviceToken: token ?? '',
        );
        await Future.wait(
          [
            _authRepository.deviceInfo(data),
            _authRepository.profileInfo(),
          ],
        ).then((value) {
          value[1].fold(
            (l) {
              log('<<<<<<<<<<<<<<<<<<<<<<<<User Prifiel Error:$l ');
              BaseLogger.error('$l');
              return emit(const AuthState.authCheckingFailure());
            },
            (r) {
              final userProfile = r as UserProfileInfoResponse?;
              final shopId = (userProfile?.data?.shops?.isNotEmpty ?? false) ? userProfile?.data?.shops?.first.id : null;

              user = credentials.copyWith(
                shopId: shopId,
                vipExpire: userProfile?.data?.vipExpire,
              );
            },
          );
        });
      });
    }

    return emit(
      AuthState.authCheckingDone(
        smallBanners: smallBanners,
        bigBanners: bigBanners,
        topAds: topAds,
        user: user,
      ),
    );
  }

  void setAuthState(User credential) {
    emit(AuthState.authenticated(credential));
  }

  Future<void> logOut() async {
    final isCleared = await ConfigPreference.clear();
    if (isCleared) {
      InMemoryToken.instance.token = null;
      emit(const AuthState.unAuthenticated());
    }
  }
}
