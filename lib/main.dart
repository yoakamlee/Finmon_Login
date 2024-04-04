import 'package:finmon_project/splash_screen.dart';
import 'package:flutter/material.dart';

//Project imports
import 'login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Take Home Project',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const SpalshScreen(),
    );
  }
}