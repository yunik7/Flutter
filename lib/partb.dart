import 'package:flutter/material.dart';

void main() {
  runApp(const PartBApp());
}

class PartBApp extends StatelessWidget {
  const PartBApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Part B',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.indigo),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Part B: Intermediate UI'),
          backgroundColor: Colors.indigo,
          foregroundColor: Colors.white,
        ),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.widgets_rounded,
                  size: 64,
                  color: Colors.indigo,
                ),
                const SizedBox(height: 16),
                const Text(
                  'Part B Component',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'Demonstrating form widgets, list interactions, and layout structures.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
