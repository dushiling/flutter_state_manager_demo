part of 'counter0_bloc.dart';

// abstract class Counter0State extends Equatable {
//
//   const Counter0State();
// }
//
// class Counter0Initial extends Counter0State {
//   @override
//   List<Object> get props => [];
// }

// class IncrementState extends Counter0State {
//   @override
//   List<Object> get props => [];
// }

// state有很多种写法，在bloc官方文档上，不同项目state的写法也很多
//
// 这边变量名可以设置为私用，用get和set可选择性的设置读写权限，因为我这边设置的俩个变量全是必用的，读写均要，就设置公有类型，不用下划线“_”去标记私有了。
//
// 对于生成的模板代码，我们在这：去掉@immutable注解，去掉abstract；
//
// 这里说下加上@immutable和abstract的作用，这边是为了标定不同状态，这种写法，会使得代码变得更加麻烦，用state不同状态去标定业务事件，代价太大，这边用一个变量去标定，很容易轻松代替

class Counter0State  {
  int count;

 Counter0State({this.count});
}

