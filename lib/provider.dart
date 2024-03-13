import 'package:flutter/material.dart';

class IncrementNotifier extends ChangeNotifier {
  int _counter = 1;
  String get counter => _counter.toString();

  void add() {
    _counter++;
    notifyListeners();
    debugPrint("$_counter");
  }
}
