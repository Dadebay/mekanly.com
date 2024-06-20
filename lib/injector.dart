import 'dart:developer';

import 'package:get_it/get_it.dart';
import 'package:http/http.dart';
import 'package:mekanly_com/logic/cubits/view_count/view_count.dart';

import '/logic/cubits/categs/categs_cubit.dart';
import '/logic/cubits/fav/fav_cubit.dart';
import '/logic/cubits/region/region_cubit.dart';
import 'logic/repos/main_repo.dart';
import 'logic/cubits/comments/comments_cubit.dart';
import 'logic/cubits/cubits.dart';
import 'logic/cubits/house/house_cubit.dart';
import 'logic/cubits/lang/lang_cubit.dart';
import 'logic/cubits/navigator/nav_cubit.dart';
import 'logic/repos/i_main_repo.dart';
import 'logic/services/i_main_service.dart';
import 'logic/services/main_service.dart';
import 'ui/navigation/navigation.dart';

GetIt sl = GetIt.instance;
Future<void> init() async {
  sl.registerLazySingleton<IMainRepo>(() => MainRepo());
  sl.registerLazySingleton<MainRepo>(() => MainRepo());

  sl.registerLazySingleton<IMainService>(() => MainService(httpClient: sl(), mainRepo: sl()));
  sl.registerLazySingleton<MainService>(() => MainService(httpClient: sl(), mainRepo: sl()));

  sl.registerLazySingleton(() => Client());
  sl.registerFactory(() => Service());

  sl.registerFactory(() => NavCubit(sl(), navKey: NavKey.mainKey));
  sl.registerFactory(() => AuthCubit(sl(), sl()));
  sl.registerFactory(() => LangCubit(sl(), sl()));
  sl.registerFactory(() => FavCubit());
  sl.registerFactory(() => ViewCountCubit(sl()));
  sl.registerFactory(() => CategsCubit(sl(), sl()));
  sl.registerFactory(() => HouseCubit(sl(), sl()));
  sl.registerFactory(() => CommentsCubit(sl(), sl()));
  sl.registerFactory(() => RegionsCubit(sl(), sl()));
}
