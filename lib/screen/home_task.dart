import 'package:demo_provider/model/task.dart';
import 'package:demo_provider/provider/task_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeTask extends StatefulWidget {
  const HomeTask({super.key});

  @override
  State<HomeTask> createState() => _HomeTaskState();
}

class _HomeTaskState extends State<HomeTask> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Provider.of<TaskProvider>(context, listen: false).fetchData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Fetch Data Using Provider"),
      ),
      body: Consumer<TaskProvider>(
        builder: (context, taskProvider, child) {
          if (taskProvider.isLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else {
            return ListView.builder(
              itemBuilder: (context, index) {
                CongViec congViec = taskProvider.listTask[index];
                return Column(
                  children: [
                    Text(congViec.tieuDe.toString()),
                    Text(congViec.ngayBatDau.toString())
                  ],
                );
              },
              itemCount: taskProvider.listTask.length,
            );
          }
        },
      ),
    );
  }
}
