import 'package:demo_provider/change_color_provider.dart';
import 'package:demo_provider/home_change_colors.dart';
import 'package:demo_provider/settings_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ChangeColorProvider>(
      create: (context) => ChangeColorProvider(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            // colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            // useMaterial3: true,
            // primarySwatch: Colors.blue,
            // brightness: context.watch<SettingsProvider>().isDark
            //     ? Brightness.dark
            //     : Brightness.light),
        ),
        // home: const HomeScreen(),
        home: const HomeChangeColor(),
      ),
    );
  }
}
