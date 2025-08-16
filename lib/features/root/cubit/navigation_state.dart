part of 'navigation_cubit.dart';

class NavigationState extends Equatable {
  const NavigationState({required this.index});

  final int index;

  @override
  List<Object> get props => [index];
}
