import 'package:flutter/cupertino.dart';

class SettingsProvider extends ChangeNotifier {
  bool _isDark = false;

  bool get isDark => _isDark;

  void setBrightness(value) {
    _isDark = true;

    notifyListeners();
  }
}