import 'package:flutter/material.dart';

void main() {
  runApp(const NavigationApp());
}

class NavigationApp extends StatelessWidget {
  const NavigationApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Q7 Navigation & State',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.deepPurple),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() => _counter++);
  }

  void _decrementCounter() {
    setState(() => _counter--);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Q7: State Management (Plus & Minus)'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Current Counter Value:',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 12),
              Text(
                '$_counter',
                style: const TextStyle(
                  fontSize: 64,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepPurple,
                ),
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: _decrementCounter,
                    icon: const Icon(Icons.remove),
                    label: const Text('Minus State'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 14,
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  ElevatedButton.icon(
                    onPressed: _incrementCounter,
                    icon: const Icon(Icons.add),
                    label: const Text('Plus State'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 14,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
