import '../../pages/home/home_page.dart';
import '../../pages/profile/profile.dart';
import '../main_navigator.dart';
import '/config/config.dart';

String routesss = '''

Route::group(['prefix' => 'v1', 'middleware' => 'auth:sanctum'], function() {
    
    Route::post('logout', [RegisterController::class, 'logout'])->name('user.logout');
    Route::post('houses/shatlyk', [HouseController::class, 'store'])->name('houses.store');
    Route::post('houses/{house}/comment', [CommentController::class, 'store'])->name('comments.store');

    Route::get('profile', [RegisterController::class, 'profile'])->name('user.profile');
    Route::get('houses/{house}/favorite', [HouseController::class, 'favorite'])->name('houses.favorite');
    Route::get('user/houses', [HouseController::class, 'index'])->name('houses.index');
});

Route::group(['prefix' => 'v1'], function() {
    Route::get('categories', [CategoryController::class, 'index'])->name('categories.index');
    Route::get('locations', [LocationController::class, 'index'])->name('locations.index');
    Route::get('houses', [HouseController::class, 'showAll'])->name('houses.showAll');
    Route::get('possibilities', [PossibilityController::class, 'index'])->name('possibilities.index');
    Route::get('filter', [HouseController::class, 'search'])->name('houses.search');
});

''';

class Routes {
  static const String root = '/root';
  static const String main = '/main';
  static const String intro = '/intro';

  static const String home = '/home';
  static const String sliderPage = '/sliderPage';
  static const String groupItems = '/groupItems';
  static const String itemDetails = '/itemDetails';
  static const String searchPage = '/searchPage';

  static const String cart = '/cart';
  static const String checkout = '/checkout';
  static const String addAddress = 'addAdress';
  static const String editAddress = 'editAddress';
  static const String paymentDone = '/paymentDone';

  static const String register = '/signIn';
  static const String login = "/login";
  static const String otp = '/otp';

  static const String profile = '/profile';
  static const String favourites = '/favourites';
  static const String orders = '/orders';
  static const String orderDetail = '/orderDetail';
  static const String addresses = '/addresses';
  static const String accountDetails = '/accountDetails';
  static const String changePassword = '/changePassword';
}

class RouterMain {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.main:
        return MaterialPageRoute(builder: (_) => const MainNavigator());
    }
    return null;
  }
}

class RouterHome {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.home:
        return MaterialPageRoute(builder: (_) => const HomePage());
    }
    return null;
  }
}

class RouterCart {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {}
    return null;
  }
}

class RouterProfile {
  static Route? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.profile:
        return MaterialPageRoute(builder: (_) => const ProfilePage());

      case Routes.addresses:
        return MaterialPageRoute(builder: (_) => const MyHouses());
    }
    return null;
  }
}
