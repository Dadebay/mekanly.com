import 'package:flutter/widgets.dart' as wg;
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../repos/main_repo.dart';

class NavCubit extends Cubit<NavState> {
  final wg.GlobalKey<wg.NavigatorState> navKey;
  final MainRepo _navRepo;

  NavCubit(MainRepo navRepo, {required this.navKey})
      : _navRepo = navRepo,
        super(const InitialRoute(0));

  void initNavigator() {
    _navRepo.navigate(0);
  }

  void navigateTo(int i) {
    emit(Navigating(_navRepo.currentIndex));
    _navRepo.navigate(i);
    emit(Navigated(i));
  }

  void popTo() {
    emit(Navigating(_navRepo.currentIndex));
    bool check = _navRepo.pop();
    if (check) {
      emit(Navigated(_navRepo.currentIndex));
    } else {}
  }
}

abstract class NavState {
  final int i;
  const NavState(this.i);
}

class InitialRoute extends NavState {
  const InitialRoute(super.i);
}

class Navigated extends NavState {
  const Navigated(super.i);
}

class Navigating extends NavState {
  const Navigating(super.i);
}

class NavigateFailed extends NavState {
  const NavigateFailed(super.i);
}
