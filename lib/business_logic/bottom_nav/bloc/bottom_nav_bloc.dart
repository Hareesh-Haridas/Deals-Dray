import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'bottom_nav_event.dart';
part 'bottom_nav_state.dart';

class BottomNavBloc extends Bloc<BottomNavEvent, BottomNavState> {
  BottomNavBloc() : super(BottomNavInitial()) {
    on<IndexChangerEvent>(indexChangerEvent);
  }
  FutureOr<void> indexChangerEvent(
      IndexChangerEvent event, Emitter<BottomNavState> emit) {
    emit(BottomNavState(index: event.index));
  }
}
