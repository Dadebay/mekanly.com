import 'package:mekanly_com/config/enums.dart';

import '../../config/config.dart';
import 'navigation.dart';

class Go {
  static to(String name, {TypeRoute route = TypeRoute.home, Object? argument, bool all = false}) {
    HapticFeedback.heavyImpact();
    if (all) {
      NavKey.homeKey.currentState?.pushNamed(name, arguments: argument);
      NavKey.profileKey.currentState?.pushNamed(name, arguments: argument);
      NavKey.mainKey.currentState?.pushNamed(name, arguments: argument);
      NavKey.authKey.currentState?.pushNamed(name, arguments: argument);
    } else {
      switch (route) {
        case TypeRoute.home:
          NavKey.homeKey.currentState?.pushNamed(name, arguments: argument);
          break;
        case TypeRoute.profile:
          NavKey.profileKey.currentState?.pushNamed(name, arguments: argument);
          break;

        case TypeRoute.main:
          NavKey.mainKey.currentState?.pushNamed(name, arguments: argument);
          break;
        case TypeRoute.auth:
          NavKey.authKey.currentState?.pushNamed(name, arguments: argument);
          break;
        default:
      }
    }
    return;
  }

  static popUntil({TypeRoute route = TypeRoute.home, bool all = false}) {
    if (all) {
      List<NavigatorState?> navs = [
        NavKey.homeKey.currentState,
        NavKey.profileKey.currentState,
      ];
      if (navs[0]?.canPop() ?? false) {
        navs[0]?.popUntil((route) => route.isFirst);
      }
      if (navs[1]?.canPop() ?? false) {
        navs[1]?.popUntil((route) => route.isFirst);
      }
      if (navs[2]?.canPop() ?? false) {
        navs[2]?.popUntil((route) => route.isFirst);
      }
    } else {
      if (NavKey.homeKey.currentState?.canPop() ?? false) {
        NavKey.homeKey.currentState?.popUntil((route) => route.isFirst);
      } else if (NavKey.profileKey.currentState?.canPop() ?? false) {
        NavKey.profileKey.currentState?.popUntil((route) => route.isFirst);
      } else if (NavKey.mainKey.currentState?.canPop() ?? false) {
        NavKey.mainKey.currentState?.popUntil((route) => route.isFirst);
      } else if (NavKey.authKey.currentState?.canPop() ?? false) {
        NavKey.authKey.currentState?.popUntil((route) => route.isFirst);
      }
    }
  }

  static pop({TypeRoute route = TypeRoute.home, bool all = false}) {
    if (!all) {
      switch (route) {
        case TypeRoute.home:
          NavKey.homeKey.currentState?.pop();
          break;
        case TypeRoute.profile:
          NavKey.profileKey.currentState?.pop();
          break;
        case TypeRoute.cart:
          break;
        case TypeRoute.main:
          NavKey.mainKey.currentState?.pop();
          break;
        case TypeRoute.auth:
          NavKey.authKey.currentState?.pop();
          break;

        default:
      }
      return;
    } else {
      if (NavKey.homeKey.currentState?.canPop() ?? false) {
        NavKey.homeKey.currentState?.pop();
      } else if (NavKey.profileKey.currentState?.canPop() ?? false) {
        NavKey.profileKey.currentState?.pop();
      } else if (NavKey.mainKey.currentState?.canPop() ?? false) {
        NavKey.mainKey.currentState?.pop();
      } else if (NavKey.authKey.currentState?.canPop() ?? false) {
        NavKey.authKey.currentState?.pop();
      }
    }
  }
}
