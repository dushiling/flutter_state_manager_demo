import 'package:flutter/cupertino.dart';

class CustomBuilderProvider extends ChangeNotifier {
  int count = 0;

  void increment() {
    count++;
    notifyListeners();
  }
}

