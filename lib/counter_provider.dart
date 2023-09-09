import 'package:flutter/material.dart';

// đầu tiên sẽ tạo lớp provider được kế thừa từ lớp mixin ChangeNotifier
class CounterProvider with ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  // khi gọi đến phương thức thay sẽ tăng giá trị cho _counter
  void incrementCounter () {
    _counter++;

    // Notify sẽ lắng nghe khi data bị thay đổi
    notifyListeners();
  }
}