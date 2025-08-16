import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'app/app.dart';
import 'app/cubit/app_cubit.dart';
import 'features/auth/cubit/auth_cubit.dart';
import 'features/business_porfile/cubit/business_profile_cubit.dart';
import 'features/business_porfile_detail/bloc/product_cubit.dart/business_product_detail_cubit.dart';
import 'features/home/cubit/home_cubit.dart';
import 'features/houses/bloc/houses_bloc.dart';
import 'features/user_business_profile/bloc/user_business_profile_bloc.dart';
import 'product/init/app_init.dart';
import 'product/injection/injector.dart';
import 'remote/http_client/dio_http_client.dart';
import 'remote/repositories/business_profile/business_profile_detail_products_repository.dart';
import 'remote/repositories/business_profile/business_profile_detail_repository.dart';
import 'package:dio/dio.dart';
import 'dart:io';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)..badCertificateCallback = ((X509Certificate cert, String host, int port) => true);
  }
}

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HttpOverrides.global = MyHttpOverrides();
  await ApplicationInitialize().initialize();
  await configureDependencies(); // Call configureDependencies

  // Resolve dependencies after initialization
  final appBloc = injector<AppCubit>();
  // FIX: Manually call init() after the object is successfully retrieved.
  await appBloc.init();

  final authBloc = injector<AuthCubit>();
  final homeBloc = injector<HomeCubit>();
  final housesBloc = injector<HousesBloc>();
  final businessProfileBloc = injector<BusinessProfileCubit>();

  final businessProfilRepository = injector<BusinessProfileDetailRepository>();
  final businesProfilDetailRepository = injector<BusinessProfileDetailProductsRepository>();

  final userBusinessProfileBloc = UserBusinessProfileBloc(
    businessProfilRepository,
    businesProfilDetailRepository,
  );

  final businessProfileProductCubit = BusinessProfileProductCubit(businesProfilDetailRepository);

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider.value(value: appBloc),
        BlocProvider.value(value: authBloc),
        BlocProvider.value(value: homeBloc),
        BlocProvider.value(value: housesBloc),
        BlocProvider.value(value: businessProfileBloc),
        BlocProvider.value(value: userBusinessProfileBloc),
        BlocProvider.value(value: businessProfileProductCubit),
      ],
      child: const MekanlyApp(),
    ),
  );
}
