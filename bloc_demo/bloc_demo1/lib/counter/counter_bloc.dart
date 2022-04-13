import 'package:bloc/bloc.dart';

import 'counter_event.dart';
import 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState().init());

  @override
  Stream<CounterState> mapEventToState(CounterEvent event) async* {
    if (event is InitEvent) {
      yield await init();
    }else if(event is CounterIncrementEvent){
      yield CountIncrement();
    }
  }

  Future<CounterState> init() async {
    return state.clone();
  }


  CounterState  CountIncrement(){
    return state.clone()..count=state.count+1;
  }

}
