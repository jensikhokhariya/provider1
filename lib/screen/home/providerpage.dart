import 'package:flutter/material.dart';

class ProviderPage extends ChangeNotifier {
  int i = 0;

  void add() {
    i++;
    notifyListeners();
  }

  void multy2() {
    i = i * 2;
    notifyListeners();
  }

  void multy3() {
    i = i * 3;
    notifyListeners();
  }

  void multy6() {
    i = i * 6;
    notifyListeners();
  }

  void min() {
    i--;
    notifyListeners();
  }
}
