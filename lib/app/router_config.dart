// import 'package:flutter/widgets.dart';
// import 'package:go_router/go_router.dart';
// import 'package:injectable/injectable.dart';
// import '../features/add_house/add_house_view.dart';
// import '../features/auth/login/otp/otp_view.dart';
// import '../features/auth/login/phone_number/login_phone_number_view.dart';
// import '../features/business_porfile_detail/business_porfile_detail_view.dart';
// import '../features/comments/comments_view.dart';
// import '../features/contact_us/contact_us_view.dart';
// import '../features/content/content_view.dart';
// import '../features/house_detail/house_detail_view.dart';
// import '../features/house_filters/house_filters_view.dart';
// import '../features/root/view/root_view.dart';
// import '../features/splash/splash_view.dart';
// import '../features/user_business_profile/view/user_business_profile_view.dart';

// final rootNavigator = GlobalKey<NavigatorState>(debugLabel: 'root');
// final homeShellNavigator = GlobalKey<NavigatorState>(debugLabel: 'home shell');
// final housesShellNavigator =
//     GlobalKey<NavigatorState>(debugLabel: 'houses shell');
// final businessProfileShellNavigator =
//     GlobalKey<NavigatorState>(debugLabel: 'business-profile shell');
// final favoritesShellNavigator =
//     GlobalKey<NavigatorState>(debugLabel: 'favorites shell');
// final menuShellNavigator = GlobalKey<NavigatorState>(debugLabel: 'menu shell');

// @singleton
// class AppRouterConfig {
//   final goRouter = GoRouter(
//     navigatorKey: rootNavigator,
//     observers: [HeroController()],
//     routes: [
//       GoRoute(
//         path: '/',
//         builder: (context, state) {
//           return const SplashView();
//         },
//         routes: [
//           GoRoute(
//             path: SplashView.routePath,
//             name: SplashView.routeName,
//             builder: SplashView.builder,
//           ),
//           GoRoute(
//             path: LoginPhoneNumberView.routePath,
//             name: LoginPhoneNumberView.routeName,
//             builder: LoginPhoneNumberView.builder,
//           ),
//           GoRoute(
//             path: OtpView.routePath,
//             name: OtpView.routeName,
//             builder: OtpView.builder,
//           ),
//           GoRoute(
//             path: HouseDetailView.routePath,
//             name: HouseDetailView.routeName,
//             builder: HouseDetailView.builder,
//           ),
//           GoRoute(
//             path: HouseFiltersView.routePath,
//             name: HouseFiltersView.routeName,
//             builder: HouseFiltersView.builder,
//           ),
//           GoRoute(
//             path: CommentsView.routePath,
//             name: CommentsView.routeName,
//             builder: CommentsView.builder,
//           ),
//           GoRoute(
//             path: AddHouseView.routePath,
//             name: AddHouseView.routeName,
//             builder: AddHouseView.builder,
//           ),
//           GoRoute(
//             path: ContentView.routePath,
//             name: ContentView.routeName,
//             builder: ContentView.builder,
//           ),
//           GoRoute(
//             path: ContactUsView.routePath,
//             name: ContactUsView.routeName,
//             builder: ContactUsView.builder,
//           ),
//           GoRoute(
//             path: UserBusinessProfileView.routePath,
//             name: UserBusinessProfileView.routeName,
//             builder: UserBusinessProfileView.builder,
//           ),
//           GoRoute(
//             path: BusinessProfileDetailView.routePath,
//             name: BusinessProfileDetailView.routeName,
//             builder: BusinessProfileDetailView.builder,
//           ),
//           GoRoute(
//             path: RootView.routePath,
//             name: RootView.routeName,
//             builder: RootView.builder,
//           ),
//         ],
//       ),
//     ],
//   );

//   // void error(Failure failure) {
//   //   goRouter.pushNamed('/error', extra: failure);
//   // }

//   void go(String path, {Object? extra}) {
//     goRouter.go(path, extra: extra);
//   }

//   void pop<T extends Object?>([T? result]) {
//     if (!goRouter.canPop()) return;
//     goRouter.pop<T>(result);
//   }

//   Future<T?> pushNamed<T extends Object?>(String path, {Object? extra}) {
//     return goRouter.pushNamed<T>(path, extra: extra);
//   }

//   Future<T?> push<T extends Object?>(String location, {Object? extra}) {
//     return goRouter.push<T>(location, extra: extra);
//   }

//   Future<T?> pushReplacementNamed<T extends Object?>(
//     String name, {
//     Map<String, String> pathParameters = const <String, String>{},
//     Map<String, dynamic> queryParameters = const <String, dynamic>{},
//     Object? extra,
//   }) {
//     return goRouter.pushReplacementNamed<T>(name, extra: extra);
//   }
// }

// // Workaroud root '/' widget to avoid Launcher Bloc being created multiple times
// // class Root extends StatefulWidget {
// //   const Root({super.key});

// //   @override
// //   State<Root> createState() => _RootState();
// // }

// // class _RootState extends State<Root> {
// //   @override
// //   void initState() {
// //     Future.delayed(const Duration(milliseconds: 200), () {
// //       context.go(SplashView.routePath);
// //     });
// //     super.initState();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Container();
// //   }
// // }
