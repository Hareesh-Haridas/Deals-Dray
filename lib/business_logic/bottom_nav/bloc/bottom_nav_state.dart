part of 'bottom_nav_bloc.dart';

@immutable
class BottomNavState {
  final int index;

  const BottomNavState({required this.index});
}

final class BottomNavInitial extends BottomNavState {
  const BottomNavInitial() : super(index: 0);
}
