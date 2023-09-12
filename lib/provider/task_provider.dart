import 'package:demo_provider/model/task.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class TaskProvider extends ChangeNotifier {
  var isLoading = true;
  var listTask = <CongViec>[];

  void fetchData() async {
    String url = "http://192.168.1.27:3000/api/congviec/list";
    Dio dio = Dio();

    try {
      var response = await dio.get(url);
      if(response.statusCode == 200){
        List<dynamic> responseData = response.data;
        listTask = responseData.map((e) => CongViec.fromJson(e)).toList();
      } else {
        print(response.statusCode.toString());
      }
    } catch (e) {
      print(e.toString());
    }
    print(listTask.length);
    isLoading = false;
    notifyListeners();
  }
}
