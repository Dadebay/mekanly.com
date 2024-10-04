import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:mekanly_com/logic/cubits/view_count/view_count.dart';
import 'package:mekanly_com/ui/widgets/notfication_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:turkmen_localization_support/turkmen_localization_support.dart';

import '/logic/cubits/categs/categs_cubit.dart';
import '/logic/cubits/fav/fav_cubit.dart';
import '/logic/cubits/house/house_cubit.dart';
import '/logic/cubits/navigator/nav_cubit.dart';
import 'config/config.dart';
import 'firebase_options.dart';
import 'localization/locals_delegate.dart';
import 'logic/cubits/comments/comments_cubit.dart';
import 'logic/cubits/cubits.dart';
import 'logic/cubits/lang/lang_cubit.dart';
import 'logic/cubits/region/region_cubit.dart';
import 'logic/cubits/theme/theme_cubit.dart';
import 'ui/navigation/navigation.dart';
import 'ui/widgets/widgets.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)..badCertificateCallback = (X509Certificate cert, String host, int port) => true;
  }
}

Future<void> backgroundNotificationHandler(RemoteMessage message) async {
  await FCMConfig().sendNotification(body: message.notification!.body!, title: message.notification!.title!);
  return;
}

Future<void> main() async {
  await Future.delayed(const Duration(seconds: 3));

  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  final prefs = await SharedPreferences.getInstance();
  HttpOverrides.global = MyHttpOverrides();
  await init();

  await FCMConfig().requestPermission();
  await FCMConfig().initAwesomeNotification();
  FirebaseMessaging.onBackgroundMessage(backgroundNotificationHandler);
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  SystemChrome.setPreferredOrientations(
    [DeviceOrientation.portraitUp],
  ).then((_) async {
    runApp(
      MyApp(prefs: prefs),
    );
  });
}

class MyApp extends StatefulWidget {
  const MyApp({super.key, required this.prefs});
  final SharedPreferences prefs;

  @override
  State<MyApp> createState() => MyAppState();
  static void setStatee(BuildContext context) {
    MyAppState? state = context.findAncestorStateOfType<MyAppState>();
    state!.setStatee();
  }
}

class MyAppState extends State<MyApp> {
  @override
  void initState() {
    logger("${"-" * 50} INITIALIZED${"-" * 50}");
    firebaseTask();
    super.initState();
  }

  dynamic firebaseTask() async {
    await FirebaseMessaging.instance.getToken();
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      FCMConfig().sendNotification(body: message.notification!.body!, title: message.notification!.title!);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => sl<NavCubit>()),
        BlocProvider(create: (context) => sl<CommentsCubit>()),
        BlocProvider(create: (context) => sl<CategsCubit>()..fetchCategsorites()),
        BlocProvider(create: (context) => sl<HouseCubit>()..getAllHouses()),
        BlocProvider(create: (context) => sl<RegionsCubit>()..fetchRgions()),
        BlocProvider(create: (context) => sl<ViewCountCubit>()),
        BlocProvider(create: (context) => LangCubit(widget.prefs, sl())),
        BlocProvider(create: (context) => sl<FavCubit>()..initFav()),
        BlocProvider(create: (context) => AuthCubit(sl(), sl())..getLocal()),
        BlocProvider(create: (context) => ThemeCubit()..initializeTheme()),
      ],
      child: BlocConsumer<LangCubit, Locale>(
        listener: (context, locale) {
          SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
        },
        builder: (context, locale) {
          return BlocBuilder<ThemeCubit, AppThemeState>(builder: (context, theme) {
            return MaterialApp(
              builder: ((context, child) => MediaQuery(data: MediaQuery.of(context).copyWith(textScaler: const TextScaler.linear(1.0)), child: child!)),
              scrollBehavior: CustomScrollBehavior(),
              navigatorKey: NavKey.mainKey,
              title: 'Mekanly.com',
              theme: theme.themeData,
              locale: locale,
              initialRoute: Routes.main,
              onGenerateRoute: RouterMain.onGenerateRoute,
              debugShowCheckedModeBanner: false,
              localizationsDelegates: const [
                LocalsDelegate(),
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
                ...TkDelegates.delegates,
              ],
              supportedLocales: const [
                Locale('tk'),
                Locale('ru'),
                Locale('en'),
                Locale('en', 'US'),
              ],
            );
          });
        },
      ),
    );
  }

  setStatee() => setState(() => {});
}
