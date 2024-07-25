part of 'bottom_nav_bloc.dart';

@immutable
sealed class BottomNavEvent {}

class IndexChangerEvent extends BottomNavEvent {
  final int index;
  IndexChangerEvent({required this.index});
}
