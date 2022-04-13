import 'package:flutter/cupertino.dart';

class TestNotifierController extends ChangeNotifier {
  String _value = '0';

  String get value => _value;

  set value(String newValue) {
    if (_value == newValue) return;
    _value = newValue;
    notifyListeners();
  }
}

