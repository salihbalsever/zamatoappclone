import 'package:flutter/material.dart';

class SliderProvider with ChangeNotifier{
int _activeIndex=0;

int get activeIndex => _activeIndex;

  set activeIndex(int value) {
    _activeIndex = value;
    notifyListeners(); //değişikliği dinler
  }


}