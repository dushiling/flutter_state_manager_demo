import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter0_event.dart';
part 'counter0_state.dart';

class Counter0Bloc extends Bloc<Counter0Event, Counter0State> {
  Counter0Bloc() : super(Counter0State(count: 0)) {}

  @override
  Stream<Counter0State> mapEventToState(Counter0Event event) async* {

    if (event is IncrementEvent) {

      // yield  IncrementState();

      yield Counter0State()..count=event.count+1;
    }
  }
}
