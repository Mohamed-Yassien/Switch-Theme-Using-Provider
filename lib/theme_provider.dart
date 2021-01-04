import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier{

  bool isSwitched;
  ThemeProvider(this.isSwitched);

  getBool() => isSwitched;

  setBool(bool b ){
    isSwitched = b;
    notifyListeners();
  }

}