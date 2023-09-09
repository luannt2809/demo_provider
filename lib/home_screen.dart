import 'package:demo_provider/counter_provider.dart';
import 'package:demo_provider/second_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Demo Provider"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Counter Value:',
              style: TextStyle(fontSize: 24),
            ),
            // sử dụng widget consumer để truy cập đến data từ provider
            Consumer<CounterProvider>(
              builder: (context, counterProvider, child) => Text(
                '${counterProvider.counter}',
                style: const TextStyle(
                    fontSize: 48, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            ElevatedButton(
              onPressed: () {
                // Cập nhật data trong provider
                // final counter = context.read<CounterProvider>();
                // counter.incrementCounter();

                Provider.of<CounterProvider>(context, listen: false)
                    .incrementCounter();
              },
              child: const Text("Increment"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SecondScreen()),
                );
              },
              child: const Text("Next Screen"),
            ),
          ],
        ),
      ),
    );
  }
}
