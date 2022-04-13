import 'package:get/get.dart';

import 'counter_state.dart';

class CounterLogic extends GetxController {
  final CounterState state = CounterState();

  void increment() {
    state.count++;
  }



  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
  }
}
