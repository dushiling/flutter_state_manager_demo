import 'package:flutter/material.dart';

import 'counter_state.dart';

class CounterProvider extends ChangeNotifier {
  final state = CounterState();

  // int count = 0;

  void increment() {
    state.count++;
    notifyListeners();
  }


}
