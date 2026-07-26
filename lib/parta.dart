import 'package:flutter/material.dart';

void main() {
  runApp(const PartAApp());
}

class PartAApp extends StatelessWidget {
  const PartAApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Part A',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.purple),
      home: const PartAScreen(),
    );
  }
}

class PartAScreen extends StatelessWidget {
  const PartAScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Part A: Basic UI Elements'),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(Icons.code_rounded, size: 72, color: Colors.purple),
                const SizedBox(height: 20),
                const Text(
                  'Part A Component',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 12),
                Text(
                  'Demonstrating basic Flutter widgets and core layout structure.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.grey[700]),
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 12,
                    ),
                  ),
                  onPressed: () {},
                  child: const Text('Part A Action'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
