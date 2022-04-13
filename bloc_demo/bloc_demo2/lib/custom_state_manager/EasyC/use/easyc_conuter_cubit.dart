import '../EasyC.dart';
import 'easyc_conuter_state.dart';

class EasyCCounterCubit extends EasyC<EasyCCounterState> {
  EasyCCounterCubit() : super(EasyCCounterState().init());

  ///自增
  void increment() =>
      emit(state.clone()..count = ++state.count);


}