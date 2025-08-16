part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.initial() = Initial;
  const factory AuthState.authenticated(User user) = Authenticated;
  const factory AuthState.authChecking() = AuthChecking;
  const factory AuthState.authCheckingDone({
    List<BannerEntity>? smallBanners,
    List<BannerEntity>? bigBanners,
    List<TopAdsEntity>? topAds,
    User? user,
  }) = AuthCheckingDone;
  const factory AuthState.authCheckingFailure() = AuthCheckingFailure;
  const factory AuthState.unAuthenticated() = UnAuthenticated;
  const factory AuthState.successLogOut() = SuccessLogOut;
}
