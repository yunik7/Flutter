import 'package:flutter/material.dart';

void main() {
  runApp(const WebUIApp());
}

class WebUIApp extends StatelessWidget {
  const WebUIApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BIT Student Portal',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0F172A),
      ),
      home: const StudentDashboardScreen(),
    );
  }
}

class StudentDashboardScreen extends StatefulWidget {
  const StudentDashboardScreen({super.key});

  @override
  State<StudentDashboardScreen> createState() => _StudentDashboardScreenState();
}

class _StudentDashboardScreenState extends State<StudentDashboardScreen> {
  int _activityLogs = 0;

  void _registerActivity() {
    setState(() => _activityLogs++);
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Activity logged! Total clicks: $_activityLogs'),
        backgroundColor: Colors.purpleAccent.shade700,
        behavior: SnackBarBehavior.floating,
        duration: const Duration(seconds: 1),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BIT Student Dashboard'),
        centerTitle: true,
        backgroundColor: const Color(0xFF1E293B),
        elevation: 2,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.notifications_active_outlined,
              color: Colors.purpleAccent,
            ),
            onPressed: _registerActivity,
          ),
        ],
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24.0),
          child: Container(
            constraints: const BoxConstraints(maxWidth: 450),
            padding: const EdgeInsets.all(32.0),
            decoration: BoxDecoration(
              color: const Color(0xFF1E293B),
              borderRadius: BorderRadius.circular(24),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.4),
                  blurRadius: 20,
                  offset: const Offset(0, 8),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // New Element: Status Chip
                const Chip(
                  avatar: Icon(
                    Icons.check_circle,
                    size: 18,
                    color: Colors.greenAccent,
                  ),
                  label: Text('Status: Active Student'),
                  backgroundColor: Color(0xFF334155),
                  side: BorderSide.none,
                ),
                const SizedBox(height: 24),

                // Book Icon
                const Icon(
                  Icons.auto_stories_rounded,
                  size: 80,
                  color: Colors.purpleAccent,
                ),
                const SizedBox(height: 20),

                // Welcome Header
                const Text(
                  'Welcome BIT Student',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 8),

                // Dynamic Activity Tracker
                Text(
                  _activityLogs == 0
                      ? 'Tap below to log new student activity'
                      : 'Activity Count: $_activityLogs',
                  style: const TextStyle(fontSize: 14, color: Colors.grey),
                ),
                const SizedBox(height: 28),

                // Styled Interactive Button
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton.icon(
                    onPressed: _registerActivity,
                    icon: const Icon(Icons.touch_app_rounded),
                    label: const Text(
                      'Click Me',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purpleAccent.shade400,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
