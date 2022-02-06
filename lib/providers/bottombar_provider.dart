
import 'package:flutter/material.dart';

class BottomBarItems extends ChangeNotifier {
  int _selectedIndex = 0;

  /// [Getter]
  int get selectedIndex => _selectedIndex;


  void changeBottomBarIndex({required int index}) {
    _selectedIndex = index;
    notifyListeners();
  }

}
