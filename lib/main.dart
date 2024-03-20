import 'package:flutter/material.dart';
import 'package:food_management_system/features/authentication/ui/log_in.dart';
import 'package:food_management_system/features/home/ui/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Management System',
      home: Login(),
      // home: WelcomeScreen(),
    );
  }
}
