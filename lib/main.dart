import 'package:flutter/material.dart';
import 'package:food_management_system/screen/chats.dart';
import 'package:food_management_system/screen/my_cart.dart';
import 'package:food_management_system/screen/payment_success.dart';
import 'package:food_management_system/screen/payment_unsuccess.dart';
import 'screen/log_in.dart';
import 'screen/welcome_screen.dart';

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
      // home: PaymentUsuccess(),
      home: WelcomeScreen(),
    );
  }
}
