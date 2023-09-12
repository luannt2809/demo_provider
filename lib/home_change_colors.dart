import 'package:demo_provider/change_color_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeChangeColor extends StatelessWidget {
  const HomeChangeColor({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ChangeColorProvider>(
      builder: (context, changeColor, child) => Scaffold(
        appBar: AppBar(
          title: Text("Example Provider Change Color"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Text",
                style: TextStyle(color: changeColor.color),
              ),
              ElevatedButton(
                onPressed: () {
                  Provider.of<ChangeColorProvider>(context, listen: false)
                      .changeColor(Colors.red);
                },
                child: Text("Change Colors"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
