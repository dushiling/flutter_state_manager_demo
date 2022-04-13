import '../EasyXController.dart';

class EasyXCounterLogic extends EasyXController {
  var count = 0;

  void increase() {
    ++count;
    update();
  }
}