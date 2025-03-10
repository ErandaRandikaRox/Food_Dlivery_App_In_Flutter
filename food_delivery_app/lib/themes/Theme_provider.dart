import 'package:flutter/material.dart';
import 'package:food_delivery_app/themes/Dart_theme.dart';
import 'package:food_delivery_app/themes/light_theme.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = LightMode;

  ThemeData get themedata => _themeData;

  bool get isDarkMode => _themeData == DarkMode;

  set themedata(ThemeData themedata) {
    _themeData = themedata;
    notifyListeners();
  }

  void toggleTheme() {
    if (_themeData == LightMode) {
      _themeData = DarkMode;
    } else {
      _themeData = LightMode;
    }
    notifyListeners();
  }
}
