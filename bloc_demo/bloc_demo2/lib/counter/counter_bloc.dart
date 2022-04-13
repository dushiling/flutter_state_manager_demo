import 'package:bloc/bloc.dart';

import 'counter_event.dart';
import 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState().init()) {
    //页面初始化时刻
    on<InitEvent>(_init);
    //计数器自增
    on<CounterIncrementEvent>(_increment);
  }

  void _init(InitEvent event, Emitter<CounterState> emit) async {
    //处理一些初始化操作,然后刷新界面
    emit(state.clone());
  }

  ///自增
  void _increment(CounterIncrementEvent event, Emitter<CounterState> emit) {
    state.count++;
    emit(state.clone());
  }
}
