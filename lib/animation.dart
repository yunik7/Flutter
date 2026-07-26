import 'package:flutter/material.dart';

void main() {
  runApp(const AnimationAppLauncher());
}

class AnimationAppLauncher extends StatelessWidget {
  const AnimationAppLauncher({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Q8 Animation',
      theme: ThemeData(useMaterial3: true, colorSchemeSeed: Colors.deepOrange),
      home: const AnimationApp(),
    );
  }
}

class AnimationApp extends StatefulWidget {
  const AnimationApp({super.key});

  @override
  State<AnimationApp> createState() => _AnimationAppState();
}

class _AnimationAppState extends State<AnimationApp> {
  double _width = 120.0;
  double _height = 120.0;
  Color _color = Colors.blue;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8);

  void _animateBox() {
    setState(() {
      if (_width == 120.0) {
        _width = 220.0;
        _height = 220.0;
        _color = Colors.deepOrange;
        _borderRadius = BorderRadius.circular(50);
      } else {
        _width = 120.0;
        _height = 120.0;
        _color = Colors.blue;
        _borderRadius = BorderRadius.circular(8);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Q8: AnimatedContainer Demo'),
        backgroundColor: Colors.deepOrange,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              width: _width,
              height: _height,
              decoration: BoxDecoration(
                color: _color,
                borderRadius: _borderRadius,
              ),
              duration: const Duration(milliseconds: 500),
              curve: Curves.fastOutSlowIn,
            ),
            const SizedBox(height: 40),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepOrange,
                foregroundColor: Colors.white,
              ),
              onPressed: _animateBox,
              child: const Text('Animate Box'),
            ),
          ],
        ),
      ),
    );
  }
}
