import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter1_state.dart';

class Counter1Cubit extends Cubit<Counter1State> {
  Counter1Cubit() : super(Counter1Initial());

  //state可改成与counter2结构相同
  //可以完整改成counter2的样子，代码都不写了
}
