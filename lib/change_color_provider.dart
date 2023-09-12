import 'package:flutter/material.dart';

class ChangeColorProvider extends ChangeNotifier {
    Color _color = Colors.blue;

    Color get color => _color;

    void changeColor(Color value) {
    _color = value;

    notifyListeners();
  }

}