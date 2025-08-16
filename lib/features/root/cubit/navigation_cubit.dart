// ignore: depend_on_referenced_packages
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

part 'navigation_state.dart';

class NavigationCubit extends Cubit<NavigationState> {
  // ignore: lines_longer_than_80_chars
  NavigationCubit({required TickerProvider vsync})
      : super(const NavigationState(index: 0)) {
    tabController = TabController(length: 5, vsync: vsync);
  }
  late final TabController tabController;

  void changeTab(int index) {
    tabController.animateTo(index);
    emit(NavigationState(index: index));
  }

  @override
  Future<void> close() {
    tabController.dispose();
    return super.close();
  }
}
