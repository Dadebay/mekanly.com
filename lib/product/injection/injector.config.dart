// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../app/cubit/app_cubit.dart' as _i1026;
import '../../features/add_house/cubit/add_house_cubit.dart' as _i362;
import '../../features/auth/cubit/auth_cubit.dart' as _i698;
import '../../features/auth/login/otp/cubit/otp_cubit.dart' as _i886;
import '../../features/auth/login/phone_number/cubit/login_cubit.dart' as _i755;
import '../../features/business_porfile/cubit/business_profile_cubit.dart'
    as _i89;
import '../../features/business_porfile_detail/bloc/business_profile_detail_bloc.dart'
    as _i456;
import '../../features/business_porfile_detail/bloc/product_cubit.dart/business_product_detail_cubit.dart'
    as _i600;
import '../../features/content/bloc/content_bloc.dart' as _i267;
import '../../features/home/cubit/home_cubit.dart' as _i1032;
import '../../features/house_detail/cubit/house_detail_cubit.dart' as _i350;
import '../../features/houses/bloc/houses_bloc.dart' as _i531;
import '../../features/user_business_profile/bloc/user_business_profile_bloc.dart'
    as _i499;
import '../../remote/http_client/dio_http_client.dart' as _i75;
import '../../remote/repositories/add_house/add_house_repository.dart' as _i537;
import '../../remote/repositories/auth/auth_repository.dart' as _i743;
import '../../remote/repositories/auth/auth_repository_impl.dart' as _i273;
import '../../remote/repositories/banner/banners_repository.dart' as _i318;
import '../../remote/repositories/business_profile/business_profile_detail_products_repository.dart'
    as _i1066;
import '../../remote/repositories/business_profile/business_profile_detail_repository.dart'
    as _i932;
import '../../remote/repositories/business_profile/business_profile_repository.dart'
    as _i592;
import '../../remote/repositories/business_profile/product_cubit.dart' as _i534;
import '../../remote/repositories/business_profile/product_service.dart'
    as _i690;
import '../../remote/repositories/house_detail/house_detail_repository.dart'
    as _i159;
import '../../remote/repositories/houses/house_repository.dart' as _i188;
import '../../remote/repositories/top_ads/top_ads_repository.dart' as _i571;
import '../../remote/repositories/user_houses/user_houses_repository.dart'
    as _i652;
import 'register_module.dart' as _i291;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> initialize({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final registerModule = _$RegisterModule();
    gh.factory<_i1026.AppCubit>(() => _i1026.AppCubit());
    await gh.lazySingletonAsync<_i75.DioHttpClient>(
      () => registerModule.dioHttpClient,
      preResolve: true,
    );
    gh.factory<_i743.IAuthRepository>(
        () => _i273.AuthRepositoryImpl(client: gh<_i75.DioHttpClient>()));
    gh.lazySingleton<_i361.Dio>(
        () => registerModule.dio(gh<_i75.DioHttpClient>()));
    gh.factory<_i571.TopAdsRepository>(
        () => _i571.TopAdsRepository(client: gh<_i75.DioHttpClient>()));
    gh.factory<_i188.HousesRepository>(
        () => _i188.HousesRepository(client: gh<_i75.DioHttpClient>()));
    gh.factory<_i1066.BusinessProfileDetailProductsRepository>(() =>
        _i1066.BusinessProfileDetailProductsRepository(
            client: gh<_i75.DioHttpClient>()));
    gh.factory<_i690.ProductService>(
        () => _i690.ProductService(client: gh<_i75.DioHttpClient>()));
    gh.factory<_i592.BusinessProfileRepository>(() =>
        _i592.BusinessProfileRepository(client: gh<_i75.DioHttpClient>()));
    gh.factory<_i592.BusinessProfileCategoryRepository>(() =>
        _i592.BusinessProfileCategoryRepository(
            client: gh<_i75.DioHttpClient>()));
    gh.factory<_i932.BusinessProfileDetailRepository>(() =>
        _i932.BusinessProfileDetailRepository(
            client: gh<_i75.DioHttpClient>()));
    gh.factory<_i652.UserHousesRepository>(
        () => _i652.UserHousesRepository(client: gh<_i75.DioHttpClient>()));
    gh.factory<_i537.AddHouseRepository>(
        () => _i537.AddHouseRepository(client: gh<_i75.DioHttpClient>()));
    gh.factory<_i159.HouseDetailRepository>(
        () => _i159.HouseDetailRepository(client: gh<_i75.DioHttpClient>()));
    gh.factory<_i318.BannersRepository>(
        () => _i318.BannersRepository(client: gh<_i75.DioHttpClient>()));
    gh.factory<_i89.BusinessProfileCubit>(() => _i89.BusinessProfileCubit(
          gh<_i592.BusinessProfileRepository>(),
          gh<_i592.BusinessProfileCategoryRepository>(),
        ));
    gh.factory<_i362.AddHouseCubit>(
        () => _i362.AddHouseCubit(gh<_i537.AddHouseRepository>()));
    gh.factory<_i350.HouseDetailCubit>(
        () => _i350.HouseDetailCubit(gh<_i159.HouseDetailRepository>()));
    gh.factory<_i1032.HomeCubit>(() => _i1032.HomeCubit(
          gh<_i318.BannersRepository>(),
          gh<_i571.TopAdsRepository>(),
        ));
    gh.factory<_i886.OtpCubit>(
        () => _i886.OtpCubit(gh<_i743.IAuthRepository>()));
    gh.factory<_i755.LoginCubit>(
        () => _i755.LoginCubit(gh<_i743.IAuthRepository>()));
    gh.factory<_i600.BusinessProfileProductCubit>(() =>
        _i600.BusinessProfileProductCubit(
            gh<_i1066.BusinessProfileDetailProductsRepository>()));
    gh.factory<_i698.AuthCubit>(() => _i698.AuthCubit(
          gh<_i743.IAuthRepository>(),
          gh<_i318.BannersRepository>(),
          gh<_i571.TopAdsRepository>(),
        ));
    gh.factory<_i534.ProductCubit>(
        () => _i534.ProductCubit(gh<_i690.ProductService>()));
    gh.factory<_i531.HousesBloc>(
        () => _i531.HousesBloc(gh<_i188.HousesRepository>()));
    gh.factory<_i267.ContentBloc>(() => _i267.ContentBloc(
          gh<_i652.UserHousesRepository>(),
          gh<_i188.HousesRepository>(),
          gh<_i743.IAuthRepository>(),
        ));
    gh.factory<_i499.UserBusinessProfileBloc>(
        () => _i499.UserBusinessProfileBloc(
              gh<_i932.BusinessProfileDetailRepository>(),
              gh<_i1066.BusinessProfileDetailProductsRepository>(),
            ));
    gh.factory<_i456.BusinessProfileDetailBloc>(() =>
        _i456.BusinessProfileDetailBloc(
            gh<_i932.BusinessProfileDetailRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i291.RegisterModule {}
