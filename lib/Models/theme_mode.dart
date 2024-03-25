import 'package:flutter/material.dart';

class ChangeMode extends ChangeNotifier {
  ThemeMode _themeMode = ThemeMode.dark;
  ThemeMode get thememode => _themeMode;
  void toggletheme(bool isdarkMode) {
    _themeMode = isdarkMode ? ThemeMode.light : ThemeMode.dark;
  }
}
