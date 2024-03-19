import 'package:flutter/material.dart';
import 'package:food_management_system/screen/welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Management System',
      // home: PaymentUsuccess(),
      home: WelcomeScreen(),
    );
  }
}
