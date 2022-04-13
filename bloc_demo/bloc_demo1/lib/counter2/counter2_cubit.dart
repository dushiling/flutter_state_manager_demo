import 'package:bloc/bloc.dart';

import 'counter2_state.dart';

class Counter2Cubit extends Cubit<Counter2State> {
  Counter2Cubit() : super(Counter2State().init());

  ///自增
  void increment() => emit(
      state.clone()..count = state.count+1
  );
}
