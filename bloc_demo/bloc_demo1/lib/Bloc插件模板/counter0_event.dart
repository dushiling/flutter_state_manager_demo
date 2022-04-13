part of 'counter0_bloc.dart';

abstract class Counter0Event extends Equatable {
  const Counter0Event();
}


//数字增加事件
class IncrementEvent extends  Counter0Event{
  int count;
  IncrementEvent(this.count);

  @override
  List<Object> get props => [count];
}