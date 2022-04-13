import 'package:flutter/cupertino.dart';

class EasyPCounterProvider extends ChangeNotifier {
  int count = 0;

  void increment() {
    count++;
    notifyListeners();
  }
}