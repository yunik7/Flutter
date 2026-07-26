// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;
import 'package:flutter/material.dart';
import 'web_UI.dart';
import 'navigation.dart';
import 'animation.dart';

void main() {
  runApp(const AssignmentLauncher());
}

class AssignmentLauncher extends StatelessWidget {
  const AssignmentLauncher({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BIT Flutter Assignment',
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.indigo,
        brightness: Brightness.light,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const DashboardScreen(),
        '/q6': (context) => const WebUIApp(),
        '/q7': (context) => const HomePage(),
        '/q8': (context) => const AnimationApp(),
      },
    );
  }
}

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  void _openInNewTab(String route) {
    final currentUrl = html.window.location.href.split('#')[0];
    html.window.open('$currentUrl#$route', '_blank');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        elevation: 2,
        title: const Text(
          'BIT Flutter Assignment',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        centerTitle: true,
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: Container(
          constraints: const BoxConstraints(maxWidth: 600),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Assignment Modules',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                'Select a module below to launch the corresponding practical task in a new tab.',
                style: TextStyle(fontSize: 14, color: Colors.grey[600]),
              ),
              const SizedBox(height: 24),
              Expanded(
                child: ListView(
                  children: [
                    _buildTaskCard(
                      context,
                      badge: 'Q6 • Responsive UI',
                      title: 'Web UI Layout',
                      subtitle:
                          'Demonstrates modern web layout structuring and responsive UI elements.',
                      icon: Icons.web_rounded,
                      color: Colors.blue,
                      onTap: () => _openInNewTab('/q6'),
                    ),
                    const SizedBox(height: 16),
                    _buildTaskCard(
                      context,
                      badge: 'Q7 • Navigation & State',
                      title: 'Stateful Navigation & Counter',
                      subtitle:
                          'Showcases Navigator routing, state management, and counter logic.',
                      icon: Icons.alt_route_rounded,
                      color: Colors.teal,
                      onTap: () => _openInNewTab('/q7'),
                    ),
                    const SizedBox(height: 16),
                    _buildTaskCard(
                      context,
                      badge: 'Q8 • Animation',
                      title: 'AnimatedContainer Demo',
                      subtitle:
                          'Demonstrates implicit Flutter animations, dynamic sizing, and color transitions.',
                      icon: Icons.animation_rounded,
                      color: Colors.deepOrange,
                      onTap: () => _openInNewTab('/q8'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTaskCard(
    BuildContext context, {
    required String badge,
    required String title,
    required String subtitle,
    required IconData icon,
    required Color color,
    required VoidCallback onTap,
  }) {
    return Card(
      elevation: 3,
      shadowColor: Colors.black12,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      child: InkWell(
        borderRadius: BorderRadius.circular(16),
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Row(
            children: [
              Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.12),
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, color: color, size: 28),
              ),
              const SizedBox(width: 18),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 3,
                      ),
                      decoration: BoxDecoration(
                        color: color.withOpacity(0.15),
                        borderRadius: BorderRadius.circular(6),
                      ),
                      child: Text(
                        badge,
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.bold,
                          color: color,
                        ),
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      subtitle,
                      style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
              const Icon(
                Icons.open_in_new_rounded,
                size: 18,
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
